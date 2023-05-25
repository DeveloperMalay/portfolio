import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/config/app_colors/app_colors.dart';
import '../widgets/project_card_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greenColor,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              'All Projects',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 60.r, color: AppColors.white),
            ),
          ),
          SizedBox(height: 50.h),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProjectCardWidget(
                  title: 'Weather App',
                  details:
                      "In this project I am using two api to create this app first api give me the lat and lan of a place by it's name second api give me the weather data of the place from tha lat and lan So after getting the lat and lan from the fiest api I have to send the data to the second api and get the weather details.And then I display it in the UI.After clicking on the settings icon you can change the unit celsius to fahrenheit",
                  onTap: () async {
                    // ignore: deprecated_member_use
                    if (await canLaunch(
                        'https://github.com/DeveloperMalay/cubit_weatherapp')) {
                      // ignore: deprecated_member_use
                      await launch(
                          'https://github.com/DeveloperMalay/cubit_weatherapp',
                          forceSafariVC: true,
                          forceWebView: true);
                    } else {
                      throw 'Could not launch url';
                    }
                  },
                ),
                SizedBox(
                  width: 50.w,
                ),
                ProjectCardWidget(
                  title: 'Ecommerce App',
                  details:
                      "It's a project on ecommerce app where you can see the different products and it's details.Also you can filter the data by cartegory Packages I use in this app:I am using riverpod for state management Freezed to create model class Auto_route for navigation flutter_screenutil for responsive design animate_do for adding animation cached_network_image and flutter_cache_manager for image cacheing",
                  onTap: () async {
                    // ignore: deprecated_member_use
                    if (await canLaunch(
                        'https://github.com/DeveloperMalay/myshopapp')) {
                      // ignore: deprecated_member_use
                      await launch(
                          'https://github.com/DeveloperMalay/myshopapp',
                          forceSafariVC: true,
                          forceWebView: true);
                    } else {
                      throw 'Could not launch url';
                    }
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProjectCardWidget(
                  title: 'Flutter Animations',
                  details:
                      "It's a combination of projects where I store many animation in one repository.",
                  onTap: () async {
                    // ignore: deprecated_member_use
                    if (await canLaunch(
                        'https://github.com/DeveloperMalay/flutter_animations')) {
                      // ignore: deprecated_member_use
                      await launch(
                          'https://github.com/DeveloperMalay/flutter_animations',
                          forceSafariVC: true,
                          forceWebView: true);
                    } else {
                      throw 'Could not launch url';
                    }
                  },
                ),
                SizedBox(
                  width: 50.w,
                ),
                ProjectCardWidget(
                  title: 'Notes App',
                  details:
                      "It's a Note taking app using firenbase.In this app you can create,edit,delete and see the notes you have written",
                  onTap: () async {
                    // ignore: deprecated_member_use
                    if (await canLaunch(
                        'https://github.com/DeveloperMalay/Mynotes-flutter')) {
                      // ignore: deprecated_member_use
                      await launch(
                          'https://github.com/DeveloperMalay/Mynotes-flutter',
                          forceSafariVC: true,
                          forceWebView: true);
                    } else {
                      throw 'Could not launch url';
                    }
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
