import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/timeLineItem.dart';

class ComplaintTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Complaint Tracking"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.05),
          child: Container(
            width: double.infinity,
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
            child: Center(
              child: Text(
                "It usually takes about 4 hours to finish this job.",
                style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.035),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * 0.02),
            ComplaintTimelineItem(
              iconImagePath: 'assets/icons/complaint.png',
              title: "Complaint Raised",
              titleColor: Colors.blue,
              date: "On Mon, 12 Mar at 2:32 pm",
              preferredTime: "Preferred Date/Time:\n12 Mar, 2024 07:00 PM",
              iconBgColor: Colors.blue.withOpacity(0.2),
              dottedLineHeight: screenHeight * 0.09,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.053),
                  child: DottedLine(
                    direction: Axis.vertical,
                    lineLength: screenHeight * 0.23,
                    dashLength: screenWidth * 0.01,
                    dashGapLength: screenWidth * 0.01,
                    lineThickness: screenWidth * 0.005,
                    dashColor: Colors.green,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.1),
                    child: IntrinsicWidth(
                      child: Container(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(screenWidth * 0.02),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Air Conditioning", style: TextStyle(color: Colors.blue, fontSize: screenWidth * 0.04)),
                            Text("Low Cooling", style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.035)),
                            SizedBox(height: screenHeight * 0.01),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (var imagePath in ['img.png', 'airconditioner.png', 'airconditioner.png'])
                                    Padding(
                                      padding: EdgeInsets.only(right: screenWidth * 0.02),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                                        child: Image.asset(
                                          'assets/images/$imagePath',
                                          width: screenWidth * 0.25,
                                          height: screenWidth * 0.25,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ComplaintTimelineItem(
              iconImagePath: 'assets/icons/task.png',
              title: "Task Assigned",
              titleColor: Colors.orange,
              date: "On Mon, 12 Mar\n At 3:15 pm",
              iconBgColor: Colors.orange.withOpacity(0.2),
              dottedLineHeight: screenHeight * 0.06,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.053),
                  child: DottedLine(
                    direction: Axis.vertical,
                    lineLength: screenHeight * 0.28,
                    dashLength: screenWidth * 0.01,
                    dashGapLength: screenWidth * 0.01,
                    lineThickness: screenWidth * 0.005,
                    dashColor: Colors.green,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.1),
                    child: IntrinsicWidth(
                      child: Container(
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(screenWidth * 0.02),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ramesh Jadhav",
                                  style: TextStyle(color: Colors.blue, fontSize: screenWidth * 0.045),
                                ),
                                Container(
                                  padding: EdgeInsets.all(screenWidth * 0.01),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: ImageIcon(
                                    AssetImage('assets/icons/call.png'),
                                    color: Colors.blue,
                                    size: screenWidth * 0.06,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            DottedLine(
                              direction: Axis.horizontal,
                              lineLength: double.infinity,
                              dashLength: screenWidth * 0.01,
                              dashGapLength: screenWidth * 0.01,
                              lineThickness: screenWidth * 0.005,
                              dashColor: Colors.grey,
                            ),
                            SizedBox(height: screenHeight * 0.005),
                            Text("On Mon, 12 Mar", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.035)),
                            SizedBox(height: screenHeight * 0.005),
                            Text("Ramesh Jadhav will address your complaint at 6 pm.", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.04)),
                            SizedBox(height: screenHeight * 0.005),
                            Text(
                              "We'll try to resolve within the preferred time:\n16 Mar, 2024 07:00 PM",
                              style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.03),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ComplaintTimelineItem(
              iconImagePath: 'assets/icons/staff.png',
              title: "Staff On Site",
              titleColor: Colors.blue,
              date: "On Mon, 12 Mar\n At 5:45 pm",
              additionalInfo: "Complaint is in progress",
              iconBgColor: Colors.blue.withOpacity(0.2),
              dottedLineHeight: screenHeight * 0.12,
            ),
            ComplaintTimelineItem(
              iconImagePath: 'assets/icons/resolved.png',
              title: "Complaint Resolved",
              titleColor: Colors.green,
              date: "On Mon, 12 Mar\n At 6:30 pm",
              additionalInfo: "Issue successfully resolved",
              iconBgColor: Colors.green.withOpacity(0.2),
            ),
            SizedBox(height: screenHeight * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/feedback.png'),
                  color: Colors.blue,
                  size: screenWidth * 0.08,
                ),
                label: Text(
                  "Give Us Feedback",
                  style: TextStyle(color: Colors.blue, fontSize: screenWidth * 0.045),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015, horizontal: screenWidth * 0.04),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Your Feedback, Our Fuel for Improvement!",
              style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.03),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
