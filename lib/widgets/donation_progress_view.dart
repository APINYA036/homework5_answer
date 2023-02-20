import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taejai/models/project.dart';

class DonationProgressView extends StatelessWidget {
  const DonationProgressView({
    Key? key,
    required this.project,
    required this.descriptionStyle,
    required this.amountStyle,
  }) : super(key: key);

  final Project project;
  final TextStyle descriptionStyle;
  final TextStyle amountStyle;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###,000');
    var target = formatter.format(project.targetAmount);
    var percentText = ((project.receiveAmount / project.targetAmount) * 100)
        .toStringAsFixed(0);
    var percent = int.tryParse(percentText);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('เป้าหมาย', style: descriptionStyle),
                Text('$target บาท', style: amountStyle),
              ],
            ),
            Text('$percentText%', style: descriptionStyle),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 0.0,
          ),
          child: Row(
            children: [
              Expanded(
                flex: percent!,
                child: Container(
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 0.0),
                  color: Colors.orange,
                ),
              ),
              Expanded(
                flex: 100 - percent,
                child: Container(
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 0.0),
                  color: const Color(0xFFE8E8E8), //Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('${project.duration} วัน', style: descriptionStyle),
            Row(
              children: [
                const Icon(Icons.person, size: 14.0),
                Text(
                  '${project.donateCount}',
                  style: descriptionStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
