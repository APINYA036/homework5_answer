import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project/project_details_page.dart';
import 'package:taejai/widgets/donation_progress_view.dart';
import 'package:taejai/widgets/my_scaffold.dart';

var descriptionStyle = const TextStyle(
  fontSize: 12.0,
  color: Colors.black54,
);
var amountStyle = const TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.black54,
);

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      title: 'อิ่มท้องน้องพิเศษ',
      description:
          'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ ที่ต้องเผชิญค่าใช้จ่ายด้านอาหารกลางวันหลักแสนต่อเดือน เงินจำนวน 3,500 บาทสามารถเลี้ยงอาหารทุกคนได้ 1 มื้อ',
      targetAmount: 119350,
      duration: 22,
      durationText: '06 ก.พ. 2566 ถึง 06 มี.ค. 2566',
      locationText:
          'ตำบลพลูตาหลวง อำเภอสัตหีบ จังหวัดชลบุรี (มูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ)',
      receiveAmount: 10000,
      donateCount: 13,
      imageUrl: 'assets/images/project01.jpg',
    ),
    Project(
      title: 'I’m ABLE “โอกาสจากพี่ ช่วยหนูได้เรียนร่วม”',
      description:
          'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท ให้กับเด็กนักเรียนพิการที่กำลังศึกษาอยู่ในระดับชั้นประถมศึกษาถึงมัธยมศึกษาในจังหวัดต่างๆของภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ที่มีความพิการทางร่างกายหรือพัฒนาการช้าแต่สามารถสื่อสารและเรียนหนังสือได้ เพื่อส่งเสริมเด็กนักเรียนพิการเหล่านั้นได้เรียนร่วมในโรงเรียนปกติกับนักเรียนทั่วไป เสริมสร้างพัฒนาการทางร่างกาย สติปัญญา ส่งเสริมการเรียนรู้การเข้าสังคมและช่วยเหลือตนเองในสถานการณ์ต่างๆโดยไม่รู้สึกว่าตนเองเป็นภาระของครูและเพื่อนๆในโรงเรียน',
      targetAmount: 825000,
      duration: 138,
      durationText: '01 ก.พ. 2566 ถึง 30 มิ.ย. 2566',
      locationText: 'ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ของประเทศไทย',
      receiveAmount: 400000,
      donateCount: 8,
      imageUrl: 'assets/images/project02.jpg',
    ),
    Project(
      title: 'พาพญาแร้งที่สูญพันธุ์จากธรรมชาติกลับคืนป่าเมืองไทย',
      description:
          'เกือบ 30 ปี ที่พญาแร้งหายไปจากป่าเมืองไทย ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว เพื่อหวังว่าสักวันในผืนป่าประเทศไทยจะมีพญาแร้งโผบินอีกครั้ง แต่โจทย์นี้ไม่ง่าย เพราะการจะทำให้สัตว์ที่สูญพันธุ์จากธรรมชาติกลับคืนมา ยากกว่าการทำให้มันหายไป',
      targetAmount: 299200,
      duration: 322,
      durationText: '01 ก.พ. 2566 ถึง 31 ม.ค. 2567',
      locationText:
          'ตำบลลานสัก อำเภอลานสัก จังหวัดอุทัยธานี (เขตรักษาพันธุ์สัตว์ป่าห้วยขาแข้งและพื้นที่โดยรอบ), ตำบลไชยมงคล อำเภอเมืองนครราชสีมา จังหวัดนครราชสีมา (สวนสัตว์นครราชสีมา)',
      receiveAmount: 200000,
      donateCount: 28,
      imageUrl: 'assets/images/project03.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: MyScaffold(
        child: ListView.builder(
          itemCount: projects.length,
          // Callback function
          itemBuilder: (BuildContext context, int index) {
            var project = projects[index];

            return Card(
              child: InkWell(
                onTap: () {
                  _handleClickProjectItem(projects[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            project.imageUrl,
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                          /*Container(
                            width: 60.0,
                            height: 60.0,
                            color: Colors.pink,
                          ),*/
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  project.title,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  project.description,
                                  style: descriptionStyle,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      DonationProgressView(
                        descriptionStyle: descriptionStyle,
                        amountStyle: amountStyle,
                        project: project,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project: p)),
    );
  }
}
