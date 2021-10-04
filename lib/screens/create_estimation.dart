import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/create_estimation_form.dart';

class CreateEstimation extends StatelessWidget {
  const CreateEstimation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "New Estimation",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14.00,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: Colors.white,
          systemStatusBarContrastEnforced: true,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SizedBox(
          width: double.infinity,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Efficiency estimator",
                style: Theme.of(context).textTheme.headline2,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3.00,
                  bottom: 32.00,
                ),
                child: Text(
                  "Efficiency is defined as the ability to produce something with a minimum amount of effort. An example of efficiency is a solar power",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const CreateEstimationFrom(),
            ],
          ),
        ),
      ),
    );
  }
}
