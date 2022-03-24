// import 'package:flutter/material.dart';

// class ShowDialog extends StatelessWidget {
//   const ShowDialog({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: showAlertDialog(context),
//     );
//   }
//   showAlertDialog(BuildContext context) {

//   // set up the buttons
//   Widget cancelButton = TextButton(
//     child: Text("Cancel"),
//     onPressed:  () {},
//   );
//   Widget continueButton = TextButton(
//     child: Text("Continue"),
//     onPressed:  () {},
//   );

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("AlertDialog"),
//     content: Text("Would you like to continue learning how to use Flutter alerts?"),
//     actions: [
//       cancelButton,
//       continueButton,
//     ],
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
// }