import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart';

class NotificationService {
  static final _plugin = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    tz.initializeTimeZones();
    setLocalLocation(getLocation('Europe/Istanbul'));

    const ios = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    await _plugin.initialize(
      const InitializationSettings(android: android, iOS: ios),
    );
  }

  static Future<void> scheduleDailyReminder(int hour, int minute) async {
    await _plugin.cancelAll();
    await _plugin.zonedSchedule(
      0,
      '✦ Spark',
      'Bugünkü okuman hazır.',
      _nextInstanceOf(hour, minute),
      NotificationDetails(
        iOS: const IOSNotificationDetails(
          presentAlert: true,
          presentSound: true,
        ),
        android: const AndroidNotificationDetails(
          'spark_daily',
          'Günlük Okuma',
          'Günlük okuma hatırlatması',
          importance: Importance.high,
        ),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static Future<void> cancelAll() => _plugin.cancelAll();

  static TZDateTime _nextInstanceOf(int hour, int minute) {
    final now = TZDateTime.now(local);
    var scheduled =
        TZDateTime(local, now.year, now.month, now.day, hour, minute);
    if (scheduled.isBefore(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }
    return scheduled;
  }
}
