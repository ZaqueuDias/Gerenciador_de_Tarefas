import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Calendario'),
      ),
      body: EventCalendar(
        calendarType: CalendarType.GREGORIAN,
        calendarLanguage: 'pt',
        events: [
          Event(
            child: const Text('Laravel Event'),
            dateTime: CalendarDateTime(
              year: 2024,
              month: 6,
              day: 04,
              calendarType: CalendarType.GREGORIAN,
            ),
          ),
        ],
      )
    ));
  }
}
