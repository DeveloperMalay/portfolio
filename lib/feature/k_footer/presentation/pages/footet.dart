import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/config/app_colors/app_colors.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  SystemMouseCursor _cursorType = SystemMouseCursors.basic;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      decoration: const BoxDecoration(color: AppColors.black),
      child: Row(
        children: [
          Text(
            'Get in touch with me',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: MouseRegion(
              cursor: _cursorType,
              onEnter: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onExit: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onHover: (event) {
                setState(() {
                  _cursorType = SystemMouseCursors.click;
                });
              },
              child: Row(
                children: [
                  const Icon(Icons.mail, color: AppColors.greenColor),
                  SizedBox(width: 2.w),
                  Text(
                    'developermalay@gmail.com',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: MouseRegion(
              cursor: _cursorType,
              onEnter: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onExit: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onHover: (event) {
                setState(() {
                  _cursorType = SystemMouseCursors.click;
                });
              },
              child: GestureDetector(
                onTap: () async {
                  // ignore: deprecated_member_use
                  if (await canLaunch('https://github.com/DeveloperMalay')) {
                    // ignore: deprecated_member_use
                    await launch('https://github.com/DeveloperMalay',
                        forceSafariVC: true, forceWebView: true);
                  } else {
                    throw 'Could not launch url';
                  }
                },
                child: Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.github,
                        color: AppColors.greenColor),
                    SizedBox(width: 2.w),
                    Text(
                      'Github',
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: MouseRegion(
              cursor: _cursorType,
              onEnter: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onExit: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onHover: (event) {
                setState(() {
                  _cursorType = SystemMouseCursors.click;
                });
              },
              child: GestureDetector(
                onTap: () async {
                  // ignore: deprecated_member_use
                  if (await canLaunch('https://www.linkedin.com/in/malay-pandit/')) {
                    // ignore: deprecated_member_use
                    await launch('https://www.linkedin.com/in/malay-pandit/',
                        forceSafariVC: true, forceWebView: true);
                  } else {
                    throw 'Could not launch url';
                  }
                },
                child: Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.linkedin,
                        color: AppColors.greenColor),
                    SizedBox(width: 2.w),
                    Text(
                      'Linkedin',
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: MouseRegion(
              cursor: _cursorType,
              onEnter: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onExit: (event) {
                // setState(() {
                //   _cursorType = SystemMouseCursors.click;
                // });
              },
              onHover: (event) {
                setState(() {
                  _cursorType = SystemMouseCursors.click;
                });
              },
              child: GestureDetector(
                onTap: () async {
                  // ignore: deprecated_member_use
                  if (await canLaunch('https://twitter.com/MALAYPANDIT71')) {
                    // ignore: deprecated_member_use
                    await launch('https://twitter.com/MALAYPANDIT71',
                        forceSafariVC: true, forceWebView: true);
                  } else {
                    throw 'Could not launch url';
                  }
                },
                child: Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.twitter,
                        color: AppColors.greenColor),
                    SizedBox(width: 2.w),
                    Text(
                      'Twitter',
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
