import 'package:coffee_shop/navigation/delivery_map.dart';
import 'package:coffee_shop/navigation/delivery_top_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart'; // For getting user's real-time location
import 'dart:async';

class DeliveryMap extends StatefulWidget {
  const DeliveryMap({super.key});

  @override
  State<DeliveryMap> createState() => _DeliveryMapState();
}

class _DeliveryMapState extends State<DeliveryMap> {
  // Controller for GoogleMap to interact with map features.
  final Completer<GoogleMapController> _controller = Completer();

  // Initial camera position - set to some default position (e.g., New York City)
  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Default location (San Francisco)
    zoom: 14.0,
  );

  // To hold user's real-time location
  late LocationData _currentPosition;
  Location location = Location();

  // Markers to represent user's location, restaurant, and delivery points
  final Set<Marker> _markers = {};

  // Polyline to represent the route
  final Set<Polyline> _polylines = {};

  // Sample data for the restaurant location (you can replace this with dynamic data)
  final LatLng _restaurantLocation = const LatLng(37.7749, -122.4194); // San Francisco

  // Store the user's marker (real-time updates)
  late Marker _userMarker;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  // Fetch the user's current location
  Future<void> _getUserLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    // Check if location service is enabled
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    // Check location permissions
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    // Get the current location
    _currentPosition = await location.getLocation();

    // Update map camera to current location
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(_currentPosition.latitude!, _currentPosition.longitude!),
        zoom: 16.0,
      ),
    ));

    // Create a marker for the user's current position
    _userMarker = Marker(
      markerId: const MarkerId('user_location'),
      position: LatLng(_currentPosition.latitude!, _currentPosition.longitude!),
      infoWindow: const InfoWindow(title: 'Your Location'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    );

    // Add the user marker to the map
    setState(() {
      _markers.add(_userMarker);
    });

    // Listen for real-time location updates
    location.onLocationChanged.listen((LocationData newLocation) {
      setState(() {
        _currentPosition = newLocation;

        // Update the user's location marker
        _userMarker = _userMarker.copyWith(
          positionParam: LatLng(_currentPosition.latitude!, _currentPosition.longitude!),
        );

        _markers.removeWhere((marker) => marker.markerId == _userMarker.markerId);
        _markers.add(_userMarker);
      });
    });
  }

  // Function to draw the route (polyline) between user and restaurant
  void _drawRoute() {
    final Polyline route = Polyline(
      polylineId: const PolylineId('route'),
      points: [
        _restaurantLocation, // Restaurant location
        LatLng(_currentPosition.latitude!, _currentPosition.longitude!), // User location
      ],
      color: Colors.blue,
      width: 5,
    );

    setState(() {
      _polylines.add(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            markers: _markers,
            polylines: _polylines,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              // Optionally move the camera to user location after map is created
              _drawRoute();
            },
            myLocationEnabled: true, // Show blue dot for user's location
            myLocationButtonEnabled: true, // Add button to move camera to user's location
            zoomControlsEnabled: false, // Disable zoom controls
            mapType: MapType.normal, // Use normal map type (you can change to satellite or hybrid)
          ),
          const Positioned(
            top: 80,
            child: DeliveryTopTab()
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: _drawRoute, // Button to draw the route
              child: const Text("Draw Route"),
            ),
          ),

        ],
      ),
      bottomNavigationBar: const DeliveryMapNav(),
     );
  }
}
