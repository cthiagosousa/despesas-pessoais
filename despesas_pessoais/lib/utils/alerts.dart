import 'package:flutter/material.dart';

class Alerts {
  static Future<void> error(BuildContext context, {required String text}) async {
    showDialog(
      context: context, 
      builder: (_) {
        return Dialog(
          backgroundColor: Colors.white,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.red,
                ),

                SizedBox(height: 10),

                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  static Future<void> warning(BuildContext context, {required String text}) async {
    showDialog(
      context: context, 
      builder: (_) {
        return Dialog(
          backgroundColor: Colors.white,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning_rounded,
                  size: Theme.of(context).iconTheme.size,
                  color: Colors.amber,
                ),

                SizedBox(height: 10),

                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
