import 'package:flutter/material.dart';

class WidgetLibrary {
  static showDialogError(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.orange[800],
                    size: 40,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.orange[800],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    message,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
