import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../core/constants/app_colors.dart';
import '../../core/utils/notification_service.dart';
import '../widgets/glass_container.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const _boxName = 'settings';
  static const _hourKey = 'notif_hour';
  static const _minuteKey = 'notif_minute';

  late int _hour;
  late int _minute;

  @override
  void initState() {
    super.initState();
    final box = Hive.box(_boxName);
    _hour = box.get(_hourKey, defaultValue: 8);
    _minute = box.get(_minuteKey, defaultValue: 0);
  }

  Future<void> _pickTime() async {
    await showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 280,
        color: AppColors.surface,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('İptal',
                        style: GoogleFonts.plusJakartaSans(
                            color: AppColors.textSecondary)),
                  ),
                  TextButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      final box = await Hive.openBox(_boxName);
                      await box.put(_hourKey, _hour);
                      await box.put(_minuteKey, _minute);
                      await NotificationService.scheduleDailyReminder(
                          _hour, _minute);
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Bildirim ${_hour.toString().padLeft(2, '0')}:${_minute.toString().padLeft(2, '0')} için ayarlandı',
                              style: GoogleFonts.plusJakartaSans(),
                            ),
                            backgroundColor: AppColors.surface,
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        );
                      }
                    },
                    child: Text('Kaydet',
                        style: GoogleFonts.plusJakartaSans(
                            color: AppColors.lavender,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                use24hFormat: true,
                initialDateTime: DateTime(2024, 1, 1, _hour, _minute),
                onDateTimeChanged: (dt) {
                  setState(() {
                    _hour = dt.hour;
                    _minute = dt.minute;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Ayarlar'),
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GlassContainer(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              const Icon(Icons.notifications_outlined,
                  color: AppColors.lavender, size: 22),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Günlük Bildirim',
                        style: GoogleFonts.plusJakartaSans(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w600)),
                    Text(
                      '${_hour.toString().padLeft(2, '0')}:${_minute.toString().padLeft(2, '0')}',
                      style: GoogleFonts.plusJakartaSans(
                          color: AppColors.textSecondary, fontSize: 13),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: _pickTime,
                child: Text('Değiştir',
                    style: GoogleFonts.plusJakartaSans(
                        color: AppColors.lavender,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
