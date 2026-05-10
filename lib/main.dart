import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'core/utils/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('settings');
  await initializeDateFormatting('tr_TR');
  await NotificationService.init();
  final settings = Hive.box('settings');
  final hour = settings.get('notif_hour', defaultValue: 8);
  final minute = settings.get('notif_minute', defaultValue: 0);
  await NotificationService.scheduleDailyReminder(hour, minute);

  runApp(
    const ProviderScope(
      child: SparkApp(),
    ),
  );
}
