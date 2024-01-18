import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mini_project/routes/routes.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      padding: const EdgeInsets.all(10),
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SectionText(title: "Blogs"),
            BlogCard(
              routeName: AppRoutes.article,
              image: "assets/images/sucessStory.jpeg",
            ),
            SizedBox(
              height: 10,
            ),
            SectionText(title: "Our Services"),
            Wrap(
              children: [
                ServiceCard(
                  routeName: AppRoutes.prescription,
                  icon: FontAwesomeIcons.capsules,
                  title: "View\nPrescription",
                  color: Colors.purple,
                ),
                ServiceCard(
                  routeName: AppRoutes.myRecords,
                  icon: FontAwesomeIcons.file,
                  title: "\nMy Records",
                  color: Colors.blue,
                ),
                ServiceCard(
                  routeName: AppRoutes.bookAppointment,
                  icon: FontAwesomeIcons.calendarCheck,
                  title: "Book \nAppointment",
                  color: Colors.green,
                ),
                ServiceCard(
                    routeName: AppRoutes.uploadDoc,
                    icon: FontAwesomeIcons.database,
                    title: "Upload Documents",
                    color: Colors.pink)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SectionText(title: "Invite your friends"),
            InviteCard(),
            SizedBox(
              height: 20,
            ),
            SectionText(title: "Helpline"),
            HelplineCard(),
          ],
        ),
      ),
    );
  }
}

class InviteCard extends StatelessWidget {
  const InviteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // _share(context);
      },
      child: const SizedBox(
        height: 110,
        width: double.infinity,
        child: Card(
          color: Color.fromRGBO(33, 150, 243, 1),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Invite your friend's & \nfamily",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Image(
                  image: AssetImage("assets/images/invite_friends.jpeg"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelplineCard extends StatelessWidget {
  const HelplineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const SizedBox(
        height: 100,
        width: double.infinity,
        child: Card(
          color: Color.fromARGB(188, 28, 212, 37),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.call),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Tollfree no:14446",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.call),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Tollfree no:011 2553 2553",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final String image;
  final String routeName;
  const BlogCard({
    required this.image,
    super.key,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: const Color.fromARGB(189, 196, 236, 198),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionText extends StatelessWidget {
  final String title;
  const SectionText({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final String routeName;
  const ServiceCard(
      {required this.icon,
      required this.title,
      required this.color,
      super.key,
      required this.routeName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: SizedBox(
        height: 160,
        width: 160,
        child: Card(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 60,
                color: Colors.white,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void _share(BuildContext context) {
//   String message = "Check out this amazing app!";
//   String appurl = "https:www.gfg.com";
//   String completeMessage = "$message $appurl";

//   Share.share(completeMessage);
// }
