import 'package:ladybug/screens/add_activity_screen.dart';
import 'package:ladybug/widgets/multicolor_circular_progress_bar_widget.dart';
import 'package:ladybug/widgets/carbon_weight_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:ladybug/src/constants.dart' as constants;

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.whiteBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70.0, 
            left: 16, 
            right: 16
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('My Carbon Footprint Breakdown',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Lora',
              ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: const Text('Day'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: constants.lightBlueButton,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Month'),
                      ),
                    ),
                    Container(
                      child: const Text('Year'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MulticolorCircularProgresBarWidget(
                    size: MediaQuery.of(context).size.width * 0.6,
                    values: const [0.2, 0.1, 0.3, 0.4],
                    colors: const [
                      constants.deepPink, 
                      constants.lightOrange, 
                      constants.lightGreen, 
                      constants.lightBlue
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_downward, 
                    color: Colors.red,
                    size: 15.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('8%',
                      style: TextStyle(
                        color: Colors.black
                      ),),
                    ),
                    Text('less from last month',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    )
                ],
              ),
               const SizedBox(
                height: 40,
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: CarbonWeightRowWidget(
                          carbonType: 'utilities',
                          carbonWeight: '127kg',
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CarbonWeightRowWidget(
                          carbonType: 'purchases',
                          carbonWeight: '96kg',
                          carbonColor: constants.lightGreen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: CarbonWeightRowWidget(
                          carbonType: 'transport',
                          carbonWeight: '183kg',
                          carbonColor: constants.lightOrange,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CarbonWeightRowWidget(
                          carbonType: 'food',
                          carbonWeight: '92kg',
                          carbonColor: constants.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

               const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                        
                        backgroundColor: constants.lightBlueButton, // background
                        foregroundColor: Colors.blue, // foreground
                    ),
                  onPressed: () { 
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddActivityScreen(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle),
                      Text('Add activity'),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

