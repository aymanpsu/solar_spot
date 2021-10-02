import 'package:flutter/material.dart';
import '../shared_widgets/input.dart';
import '../widgets/list_of_filters.dart';

class CreateEstimationFrom extends StatefulWidget {
  const CreateEstimationFrom();

  @override
  _CreateEstimationFromState createState() => _CreateEstimationFromState();
}

class _CreateEstimationFromState extends State<CreateEstimationFrom> {
  @override
  void initState() {
    super.initState();
  }
  
  // bool _isLoading = false;
  // PostService _postService = PostService();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _timeframeController = TextEditingController();
  final TextEditingController _startFromController = TextEditingController();
  final TextEditingController _endAtController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _titleController.dispose();
    _locationController.dispose();
    _timeframeController.dispose();
    _startFromController.dispose();
    _endAtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Input(
            lebal: 'Name',
            placholder: 'Write the name of estimation',
            type: InputType.text,
            controller: _titleController,
          ),
          Input(
            lebal: 'Location',
            placholder: 'Click to go to the map',
            type: InputType.text,
            controller: _locationController,
            postIcon: const Icon(
              Icons.add_location_alt,
              size: 15.00,
            ),
          ),
          Input(
            lebal: 'Timeframe type',
            placholder: 'Click to select',
            type: InputType.text,
            postIcon: const Icon(Icons.keyboard_arrow_right),
          ),
          Input(
            lebal: 'Start from',
            placholder: 'Click to select',
            type: InputType.text,
            postIcon: const Icon(
              Icons.date_range,
              size: 15.00,
            ),
          ),
          Input(
            lebal: 'End at',
            placholder: 'Click to select',
            type: InputType.text,
            postIcon: const Icon(
              Icons.date_range,
              size: 15.00,
            ),
          ),
          ListOfFilters(),
          Padding(
            padding: const EdgeInsets.only(top: 25.00),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text("Save"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
