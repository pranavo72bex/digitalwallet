import 'package:digitalwallet/app/modules/home/views/widget/chart.dart';
import 'package:digitalwallet/app/modules/home/views/widget/chip.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.bubble_chart_rounded,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Balance",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Money Recived",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "2778 USD",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "15%",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_upward_outlined,
                  )
                ],
              ),
              SizedBox(height: 10),
              Curvegraphs(),
              SizedBox(height: 10),
              Filterchip(),
              SizedBox(height: 10),
              StatRow(
                IncExp: 'Income',
                percent: '75%',
                icon: Icons.arrow_downward,
              ),
              SizedBox(height: 10),
              StatRow(
                IncExp: 'Expense',
                percent: '25%',
                icon: Icons.arrow_upward,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StatRow extends StatelessWidget {
  const StatRow({
    Key? key,
    required this.IncExp,
    required this.percent,
    this.icon,
  }) : super(key: key);

  final String IncExp;
  final String percent;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          IncExp,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        Spacer(),
        Text(
          percent,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          icon,
        )
      ],
    );
  }
}
