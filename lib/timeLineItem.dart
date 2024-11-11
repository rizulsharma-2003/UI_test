import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComplaintTimelineItem extends StatelessWidget {
  final String iconImagePath;
  final String title;
  final Color titleColor;
  final String date;
  final String? preferredTime;
  final String? additionalInfo;
  final Color iconBgColor;
  final double dottedLineHeight;

  const ComplaintTimelineItem({
    required this.iconImagePath,
    required this.title,
    required this.date,
    this.preferredTime,
    this.additionalInfo,
    required this.iconBgColor,
    this.titleColor = Colors.black,
    this.dottedLineHeight = 0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSizeMultiplier = screenWidth < 400 ? 0.85 : 1.0;  // Scale down text for narrow screens

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(screenWidth * 0.02),  // Dynamic padding based on screen width
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: titleColor,
                  width: 2,
                ),
              ),
              child: ImageIcon(
                AssetImage(iconImagePath),
                size: screenWidth * 0.06,  // Dynamic icon size
                color: titleColor,
              ),
            ),
            DottedLine(
              direction: Axis.vertical,
              lineLength: dottedLineHeight,
              dashLength: 4,
              dashGapLength: 4,
              lineThickness: 2,
              dashColor: Colors.green,
            ),
          ],
        ),
        SizedBox(width: screenWidth * 0.03),  // Adjust spacing dynamically
        Container(
          constraints: BoxConstraints(
            maxWidth: screenWidth * 0.7,
          ),
          padding: EdgeInsets.all(screenWidth * 0.03),  // Dynamic padding for container
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16 * fontSizeMultiplier,  // Responsive font size
                  color: titleColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: screenWidth * 0.01),  // Dynamic spacing
              Text(
                date,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13 * fontSizeMultiplier,
                ),
              ),
              if (preferredTime != null) ...[
                SizedBox(height: screenWidth * 0.01),
                Text(
                  preferredTime!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14 * fontSizeMultiplier,
                  ),
                ),
              ],
              if (additionalInfo != null) ...[
                SizedBox(height: screenWidth * 0.01),
                Text(
                  additionalInfo!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14 * fontSizeMultiplier,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
