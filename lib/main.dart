import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(title: Text("Snackbar")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Show Snackbar"),
                onPressed: () {
                  Get.snackbar(
                    "Snackbar Title",
                    "This will be Snackbar Message",
                    titleText: Text("Another Title"),
                    messageText: Text(
                      "Another Message",
                      style: TextStyle(color: Colors.white),
                    ),
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: EdgeInsets.all(10),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundGradient: LinearGradient(
                      colors: [Colors.red, Colors.green],
                    ),
                    borderColor: Colors.purple,
                    borderWidth: 4,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30, 50),
                        spreadRadius: 20,
                        blurRadius: 8,
                      ),
                    ],
                    //dismissDirection: SnackDismissDirection.HORIZONTAL,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    isDismissible: true,
                    leftBarIndicatorColor: Colors.red,
                    mainButton: TextButton(
                      child: Text("Retry"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        // primary: Colors.white,
                      ),
                      onPressed: () {
                        // Add your retry logic here
                      },
                    ),
                    onTap: (val) {
                      print("Retry clicked");
                    },
                    padding: EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.white),
                    snackbarStatus: (val) {
                      print(val);
                    },
                    snackStyle: SnackStyle.FLOATING,
                    userInputForm: Form(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter your input",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
