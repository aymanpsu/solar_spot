import 'package:flutter/material.dart';
import '../screens/create_estimation.dart';

class EmptyStateHome extends StatelessWidget {
  const EmptyStateHome();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/illustrations/empty_state.png"),
          Text(
            'Calculate solar energy efficiency',
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 19.00,
              horizontal: 70.00,
            ),
            child: Text(
              'Confirm that Solar panel will be efficient for the case you have to save your money',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return const CreateEstimation();
                  },
                ),
              )
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 44,
                  vertical: 10,
                ),
              ),
            ),
            // textColor: Colors.white,
            child: const Text('Start'),
          )
        ],
      ),
    );
  }
}
