import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timelines/timelines.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  List<Widget> timeLineText = [
    Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Requested"),
        SizedBox(height: 10),
        Text("29-Aug-2020 10:30 AM",textAlign: TextAlign.start,
        ),
      ],
    ),
    Text("Stared"),
    Text("Completed"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange[200], //change your color here
        ),
        backgroundColor: Colors.transparent,
        title: Text("Service Details",
            style: TextStyle(color: Colors.orange[200])),
        elevation: 0,
        actions: [
          Icon(Icons.call),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Req ID : #SEEQ2546"),
                  Text("PENDING", style: TextStyle(color: Colors.orange[200])),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              RowTextWidget(
                firstText: "Service Status : ",
                secondText: "29-Aug-2020 10:30 AM"
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(color: Colors.orange[200]),
                  builder: TimelineTileBuilder.fromStyle(
                    connectorStyle: ConnectorStyle.dashedLine,
                    indicatorStyle: IndicatorStyle.outlined,
                    contentsAlign: ContentsAlign.basic,
                    contentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: timeLineText[index],
                    ),
                    itemCount: timeLineText.length,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Billing:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RowTextWidget(
                firstText: "Visiting fee",
                secondText: "Rs 200",
              ),
              SizedBox(height: 10),
              RowTextWidget(
                firstText: "Service fee",
                secondText: "Rs 0",
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              RowTextWidget(
                firstText: "Total Amount",
                secondText: "Rs 200",
              ),
              SizedBox(height: 10),
              Divider(height: 3,),
              Padding(
                padding: const EdgeInsets.only( top: 12),
                child: Row(
                  children: [
                    Text(
                      "Customer Details :",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only( top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'Name :  ',
                      style: Theme.of(context).textTheme.button,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Siddhesh Dumbre',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13)),
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only( top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'Mobile Number :  ',
                      style: Theme.of(context).textTheme.button,
                      children: <TextSpan>[
                        TextSpan(
                            text: '7988445658',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13)),
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'Address :  ',
                      style: Theme.of(context).textTheme.button,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Jaine Edgar 110c Block c, Near Chakala Metro Station Mumbai, IN Maharashtra, 401107',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13)),
                      ],
                    ),
                  )),
                  SizedBox(height: 25,),
                  Container(
                    margin: EdgeInsets.only(left:80),
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                          colors: [Colors.orange[400], Colors.deepOrange[400]],
                        ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("START SERVICE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,fontSize: 17)),
                          )),
                        ),
            ]),
                    ),
      ),
    
        );
      
    
  }
}

class RowTextWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  RowTextWidget({this.firstText, this.secondText});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText),
        Text(
          secondText,
        ),
      ],
    );
  }
}
