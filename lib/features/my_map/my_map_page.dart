import 'package:flutter/material.dart';
import 'package:whitelabel/common/base/base_page.dart';
import 'package:whitelabel/features/my_map/cubit/my_map_cubit.dart';
import 'package:whitelabel/features/my_map/cubit/my_map_state.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapPage extends BasePage<MyMapCubit, MyMapBuildable, MyMapListenable> {
  const MyMapPage({super.key});

  @override
  Widget builder(BuildContext context, MyMapBuildable state) {
    return Scaffold(
      appBar: AppBar(
          title: Text('uz'),
          centerTitle: true
      ),
      body: RepaintBoundary(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(41.2995, 69.2401),
            zoom: 12,
          ),
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
        ),
      ),
      floatingActionButton: InkWell(
        onTap: (){},
        child: Container(
          child: Text('hi'),
        ),
      ),
    );
  }
}


