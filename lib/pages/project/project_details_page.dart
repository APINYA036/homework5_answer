import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taejai/models/project.dart';

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
      body: Column(
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
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
