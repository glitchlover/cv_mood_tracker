import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/space_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MoodTrackerCalendar extends StatefulWidget {
  const MoodTrackerCalendar({super.key});

  @override
  MoodTrackerCalendarState createState() => MoodTrackerCalendarState();
}

class MoodTrackerCalendarState extends State<MoodTrackerCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Sample data for moods on specific days
  final Map<DateTime, String> moodData = {
    DateTime.utc(2024, 11, 3): '😊',
    DateTime.utc(2024, 11, 4): '😞',
    DateTime.utc(2024, 11, 5): '😁',
    DateTime.utc(2024, 11, 6): '😴',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: TableCalendar(
          firstDay: DateTime(DateTime.now().year - 2),
          lastDay: DateTime(DateTime.now().year + 2),
          rowHeight: 75,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          calendarBuilders: CalendarBuilders(
            defaultBuilder: (context, day, focusedDay) {
              return _buildDayWithMood(day);
            },
            selectedBuilder: (context, day, focusedDay) {
              bool isToday = isSameDay(DateTime.now(), day);
              return _buildDayWithMood(day, isSelected: true, isToday: isToday);
            },
            todayBuilder: (context, day, focusedDay) {
              return _buildDayWithMood(day, isToday: true);
            },
          ),
        ));
  }

  Widget _buildDayWithMood(DateTime day,
      {bool isSelected = false, bool isToday = false}) {
    final mood = moodData[day];
    return Container(
      width: SpaceHelper.space30,
      decoration: BoxDecoration(
        color: isSelected
            ? ColorHelper.primaryColor.withOpacity(0.3)
            : isToday ? ColorHelper.primaryColor.withOpacity(0.15)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        border: isSelected
                ? Border.all(
                    color: ColorHelper.primaryColor.withOpacity(0.2), width: 2)
                : null,
      ),
      margin: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day.day.toString(),
              style: isToday
                  ? StyleHelper.textStyleMediumBold
                      .copyWith(color: ColorHelper.primaryColor)
                  : StyleHelper.textStyleMediumSemiBold),
          SpaceHelper.height4,
          (mood != null)
              ? Text(mood)
              : Container(
                  height: 20,
                ),
          SpaceHelper.height4
        ],
      ),
    );
  }
}
