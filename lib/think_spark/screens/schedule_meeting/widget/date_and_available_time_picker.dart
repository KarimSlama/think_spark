import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class DateAndAvailableTimePicker extends StatefulWidget {
  final Function(DateTime) onTimeSelected;

  const DateAndAvailableTimePicker({
    super.key,

    required this.onTimeSelected,
  });

  @override
  State<DateAndAvailableTimePicker> createState() =>
      _DateAndAvailableTimePickerState();
}

class _DateAndAvailableTimePickerState
    extends State<DateAndAvailableTimePicker> {
  DateTime _selectedDate = DateTime.now();
  String? _selectedTime;

  final List<String> availableTimes = [
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.lg,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          text: '${SparkString.chooseDay}${DateFormat('MMMM yyyy').format(DateTime.now())}',
          isActionButton: false,
        ),
        EasyDateTimeLine(
          initialDate: _selectedDate,
          headerProps: EasyHeaderProps(
            monthPickerType: MonthPickerType.dropDown,
            selectedDateStyle: TextStyle(
              color: SparkHelperFunctions.isDark(context)
                  ? SparkColors.white
                  : SparkColors.black,
            ),
          ),
          onDateChange: (selectedDate) {
            setState(() {
              _selectedDate = selectedDate;
            });
          },
          activeColor: SparkColors.darkBlue,
        ),
        Text(SparkString.selectTime, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(
          height: 50,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: availableTimes.length,
            separatorBuilder: (_, __) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              final time = availableTimes[index];
              final isSelected = _selectedTime == time;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTime = time;
                  });

                  final parsedTime = DateFormat.Hm().parse(time);

                  final combinedDateTime = DateTime(
                    _selectedDate.year,
                    _selectedDate.month,
                    _selectedDate.day,
                    parsedTime.hour,
                    parsedTime.minute,
                  );

                  widget.onTimeSelected(combinedDateTime);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color:
                        isSelected ? SparkColors.darkBlue : SparkColors.light,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      time,
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: isSelected
                                ? SparkColors.white
                                : SparkColors.black,
                          ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}