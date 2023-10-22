import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_31/screens/camera_screen.dart';

class ReponsiveScreen extends StatelessWidget {
  const ReponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: MediaQuery.sizeOf(context).height * .17 - 70,
      // ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          print(orientation.name);

          // if (orientation == Orientation.landscape) {
          //   return Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text("Landsacpe")
          //         // Container(
          //         //   width: MediaQuery.sizeOf(context).width,
          //         //   height: MediaQuery.sizeOf(context).height * .15,
          //         //   color: Colors.black,
          //         // ),
          //         // Container(
          //         //   width: MediaQuery.sizeOf(context).width,
          //         //   height: MediaQuery.sizeOf(context).height * .20,
          //         //   color: Colors.red,
          //         // ),
          //         // Container(
          //         //   width: MediaQuery.sizeOf(context).width,
          //         //   height: MediaQuery.sizeOf(context).height * .40,
          //         //   color: Colors.black,
          //         // ),
          //       ],
          //     ),
          //   );
          // }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 20,
                  child: FittedBox(
                    child: Text("Portrait"),
                  ),
                )
                // Container(
                //   width: MediaQuery.sizeOf(context).width,
                //   height: MediaQuery.sizeOf(context).height * .30,
                //   color: Colors.black,
                // ),
                // Container(
                //   width: MediaQuery.sizeOf(context).width,
                //   height: MediaQuery.sizeOf(context).height * .25,
                //   color: Colors.red,
                // ),
                // Container(
                //   width: MediaQuery.sizeOf(context).width,
                //   height: MediaQuery.sizeOf(context).height * .25,
                //   color: Colors.black,
                // ),
                ,
                IconButton(
                    onPressed: () {
                      SystemChrome.setPreferredOrientations(
                          [DeviceOrientation.landscapeLeft]);
                    },
                    icon: Icon(Icons.rotate_right)),
                IconButton(
                    onPressed: () {
                      SystemChrome.setPreferredOrientations(
                          [DeviceOrientation.portraitDown]);
                    },
                    icon: Icon(Icons.rotate_right)),
                IconButton(
                    onPressed: () {
                      SystemChrome.setPreferredOrientations(
                          [DeviceOrientation.landscapeRight]);
                    },
                    icon: Icon(Icons.rotate_right)),
                IconButton(
                    onPressed: () {
                      SystemChrome.setPreferredOrientations(
                          [DeviceOrientation.portraitUp]);
                    },
                    icon: Icon(Icons.rotate_right)),
              ],
            ),
          );
        },
      ),
    );
  }
}
