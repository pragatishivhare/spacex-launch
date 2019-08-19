import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:intl/intl.dart';

/// VEHICLE DETAILS MODEL
/// Details about a specific SpaceX vehicle, used in a specific mission.
/// Vehicles are considered capsules & cores.
abstract class VehicleDetails {
  final String serial, status, details;
  final DateTime firstLaunched;
  final List missions;

  VehicleDetails({
    this.serial,
    this.status,
    this.details,
    this.firstLaunched,
    this.missions,
  });

  String get getStatus => '${status[0].toUpperCase()}${status.substring(1)}';

  String getDetails(context);

  String getFirstLaunched(context) => firstLaunched != null
      ? DateFormat.yMMMMd().format(firstLaunched)
      : FlutterI18n.translate(context, 'spacex.other.unknown');

  String get getLaunches => missions.length.toString();

  bool get hasMissions => missions.isNotEmpty;
}
