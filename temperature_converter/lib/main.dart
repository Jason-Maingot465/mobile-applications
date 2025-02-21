import 'package:flutter/material.dart';

void main() {
  runApp(const TemperatureConverterMain());
}

class TemperatureConverterMain extends StatelessWidget {
  const TemperatureConverterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  const TemperatureConverter({super.key});

  @override
  State<TemperatureConverter> createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  // All class variables
  int groupValue = 0;
  double T = 0;
  double R = 0;
  String converted = "";
  double sliderMin = 0;
  double sliderMax = 0;
  Color sliderColor = Colors.black;

  // Custom methods/functions
  PerformConversion(int value) {
    setState(() {
      groupValue = value;
      if (value == 1) { // F to C
        R = (T - 32.0) * (5/9);
        sliderMin = 0;
        sliderMax = 100;
        converted = "$R C";
        if (R < 0) {
          sliderColor = Colors.purple;
        } else if (R < 11) {
          sliderColor = Colors.blue;
        } else if (R < 22) {
          sliderColor = Colors.green;
        } else if (R < 27) {
          sliderColor = Colors.yellow;
        } else {
          sliderColor = Colors.red;
        }
      } else if (value == 2) { // C to F
        R = (T * 1.8) + 32;
        sliderMin = 32;
        sliderMax = 212;
        converted = "$R F";
        if (R < 32) {
          sliderColor = Colors.purple;
        } else if (R < 52) {
          sliderColor = Colors.blue;
        } else if (R < 72) {
          sliderColor = Colors.green;
        } else if (R < 82) {
          sliderColor = Colors.yellow;
        } else {
          sliderColor = Colors.red;
        }
      }
      if (R < sliderMin) {
        R = sliderMin;
      }
      if (R > sliderMax) {
        R = sliderMax;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Temperature Converter"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(36.0),
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(labelText: "Enter Temperature"),
              onChanged: (String value) {
                // TODO something with value
                if (value == "") {
                  // Something wrong here
                } else {
                  T = double.parse(value);
                }
              },
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Radio(
                  value: 1, 
                  groupValue: groupValue, 
                  onChanged: (e) => {
                    // TODO conversion logic
                    PerformConversion(e!)
                  }
                ),
                Text("F to C"),
                SizedBox(height: 5.0),
                Radio(
                  value: 2, 
                  groupValue: groupValue, 
                  onChanged: (e) => {
                    // TODO conversion logic
                    PerformConversion(e!)
                  }
                ),
                Text("C to F")
              ],
            ),
            SizedBox(height: 10.0,),
            TextButton(
              onPressed: () => {
                setState(() {
                  // Perform clearing operations
                  converted = "";
                  groupValue = 0;
                })
              }, 
              child: Text("Clear")),
            SizedBox(height: 20.0,),
            Text(converted),
            SizedBox(height: 10.0,),
            Slider(
              value: R, 
              onChanged: (e){
                
              },
              activeColor: sliderColor,
              min: sliderMin,
              max: sliderMax,
            )
          ],
        ),)
    );
  }

}