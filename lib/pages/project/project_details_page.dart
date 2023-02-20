import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:taejai/models/project.dart';
import 'package:taejai/pages/project/project_list_page.dart';
import 'package:taejai/widgets/donation_progress_view.dart';
import 'package:taejai/widgets/my_scaffold.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
        overflow: TextOverflow.ellipsis,
      )),
      body: MyScaffold(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.amber.withOpacity(0.5),
                color: const Color(0xFFFFF8EC),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        project.title,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      //const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: AspectRatio(
                          aspectRatio: 1.75,
                          child: Image.asset(
                            project.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        project.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'ระยะเวลาโครงการ: ${project.durationText}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'พื้นที่ดำเนินโครงการ: ${project.locationText}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('ยอดบริจาคขณะนี้'),
                    Builder(builder: (context) {
                      var formatter = NumberFormat('#,###,000');
                      return Text(
                        '${formatter.format(project.receiveAmount)} บาท',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.orange.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 0.0,
                      ),
                      child: DonationProgressView(
                        descriptionStyle: descriptionStyle,
                        amountStyle: amountStyle,
                        project: project,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFEE4D4E),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              size: 18.0,
                            ),
                            SizedBox(width: 8.0),
                            Text('ร่วมบริจาค', style: TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFEE4D4E),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add_shopping_cart,
                              size: 18.0,
                            ),
                            SizedBox(width: 8.0),
                            Text('หยิบใส่ตะกร้า',
                                style: TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 0.0,
                ),
                child: Divider(height: 0.0),
              ),
              const Text('แชร์ให้เพื่อน'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.line,
                        color: Colors.blueGrey,
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blueGrey,
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blueGrey,
                        //size: 100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
