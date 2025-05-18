import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/location_constants.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';

class LoginActivityScreen extends StatefulWidget {
  const LoginActivityScreen({super.key});

  @override
  State<LoginActivityScreen> createState() => _LoginActivityScreenState();
}

class _LoginActivityScreenState extends State<LoginActivityScreen> {
  Position? _currentPosition;
  String? _currentAddress;
  Map<String, String>? _deviceInfo;

  Future<void> _getCurrentPosition(BuildContext context) async {
    final hasPermission =
        await LocationConstants.handleLocationPermission(context);
    if (!hasPermission) return;

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() => _currentPosition = position);
      await _getAddressFromLatLng(position);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final Placemark place = placemarks[0];
        setState(() {
          _currentAddress =
              "${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}";
        });
      }
    } catch (e) {
      debugPrint('Error in reverse geocoding: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _getCurrentPosition(context);
    _loadDeviceInfo();
  }

  void _loadDeviceInfo() async {
    final info = await LocationConstants.getDeviceName();
    setState(() {
      _deviceInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.loginActivity),
        actions: [
          ProfileImageCircular(
            width: 40,
            height: 40,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(SparkSizes.ms),
              child: CircularContainerShadow(
                width: double.infinity,
                radius: 20,
                padding: SparkSizes.lg,
                widget: Column(
                  spacing: SparkSizes.spaceBtwItems,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconWithTextInRow(
                        title: _currentAddress != null
                            ? '$_currentAddress'
                            : 'Address not found',
                        icon: Iconsax.location,
                        spacing: SparkSizes.ms),
                    IconWithTextInRow(
                        title:
                            '${_deviceInfo!['brand']} ${_deviceInfo!['model']} ${_deviceInfo!['device']}',
                        icon: Iconsax.mobile,
                        spacing: SparkSizes.ms),
                    IconWithTextInRow(
                        title: '${_deviceInfo!['id']}',
                        icon: Iconsax.note_square,
                        spacing: SparkSizes.ms),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
