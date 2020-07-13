import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class MapView extends StatelessWidget {
  final _mapKey = GlobalKey<GoogleMapState>();

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      key: _mapKey,
    );
  }
}
