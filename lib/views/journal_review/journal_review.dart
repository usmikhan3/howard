import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/models/element_select_model.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/element_select_container.dart';


class JournalReview extends StatefulWidget {
  const JournalReview({Key? key}) : super(key: key);

  @override
  State<JournalReview> createState() => _JournalReviewState();
}

class _JournalReviewState extends State<JournalReview> {
  bool isSelect = false;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.buttonColor,
      body: Column(
        children: [
          Gap(AppLayout.getHeight(40)),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Styles.backButtonColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "My 4E\nJournal Entries",
            style: Styles.headerStyle1.copyWith(
                color: Colors.white, fontSize: AppLayout.getHeight(40)),
            textAlign: TextAlign.center,
          ),
          Gap(AppLayout.getHeight(20)),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(20),
                        vertical: AppLayout.getHeight(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(5, (index) {
                        return ElementSelectContainer(
                          image: elementSelectContainerList[index].icon,
                          element: elementSelectContainerList[index].title,
                          onTap: () {
                            setState(() {
                              selectedIndex = index;

                            });
                          },
                          color: selectedIndex == index ? Styles.buttonColor : Colors.white,
                          textColor: selectedIndex == index ? Colors.white : Colors.black,
                        );
                      })
                      




                    ),
                  ),

                  Gap(AppLayout.getHeight(20)),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
