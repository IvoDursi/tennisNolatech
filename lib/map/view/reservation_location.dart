import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nolatech/extensions/extensions.dart';

class ReservationLocation extends StatefulWidget {
  const ReservationLocation({
    super.key,
    required this.field,
  });

  final Field field;

  @override
  State<ReservationLocation> createState() => _ReservationLocationState();
}

class _ReservationLocationState extends State<ReservationLocation> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.all(30),
            child: FloatingActionButton(
              onPressed: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        body: GoogleMap(
          onMapCreated: (controller) {
            _mapController = controller;

            _animateToDestination();
          },
          myLocationEnabled: false,
          zoomControlsEnabled: true,
          myLocationButtonEnabled: false,
          initialCameraPosition: CameraPosition(
            target: widget.field.coordinates,
            zoom: 15.0,
          ),
          markers: {
            Marker(
              markerId: MarkerId(widget.field.title),
              position: widget.field.coordinates,
              infoWindow: InfoWindow(title: widget.field.title),
            )
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  // Función para animar la cámara hacia las coordenadas de destino
  void _animateToDestination() {
    _mapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        widget.field.coordinates,
        15.0,
      ),
    );
  }
}
