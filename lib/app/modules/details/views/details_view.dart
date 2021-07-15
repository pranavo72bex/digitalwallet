import 'package:digitalwallet/app/const/colors_const.dart';
import 'package:digitalwallet/app/modules/details/views/widgets/card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Cards",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Your have 3 Active Cards",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              CardClass(),
              SizedBox(height: 10),
              Text(
                "Recent Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 13),
              verticalcontainer(
                desc: 'Belong Interactive',
                expendtitle: 'Salary',
                money: '400 USD',
                icon: Icons.work_outline_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              verticalcontainer(
                desc: 'web tech',
                expendtitle: 'Paypal',
                money: '200 USD',
                icon: Icons.payment_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              verticalcontainer(
                desc: 'Car Engine Repair',
                expendtitle: 'Car Repair',
                money: '200 USD',
                icon: Icons.settings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class verticalcontainer extends StatelessWidget {
  const verticalcontainer({
    Key? key,
    required this.expendtitle,
    required this.desc,
    this.icon,
    this.money,
  }) : super(key: key);
  final String expendtitle;
  final String desc;
  final icon;
  final money;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: orangecolor,
            ),
            child: Center(
              child: Icon(
                icon,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expendtitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(money)
        ],
      ),
    );
  }
}
