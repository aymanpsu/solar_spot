import 'package:flutter/material.dart';
import 'package:solar_spot/utlis/mycolors.dart';

class ListOfFilters extends StatefulWidget {
  const ListOfFilters();

  @override
  _ListOfFiltersState createState() => _ListOfFiltersState();
}

class _ListOfFiltersState extends State<ListOfFilters> {
  @override
  void initState() {
    super.initState();
  }

  bool temperatureState = false;
  Icon choosenChipIcon = const Icon(
    Icons.device_thermostat,
    color: Mycolors.lightUnSelectedIcons,
  );
  Color choosenChipBckaground = Colors.transparent;
  Color choosenChipTextColor = Mycolors.darkTextColor;
  EdgeInsetsGeometry choosenChipTextPadding = const EdgeInsets.symmetric(
    horizontal: 6.00,
    vertical: 2.00,
  );
  bool humidityState = false;
  bool windsState = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Data included",
            style: TextStyle(
              fontSize: 11.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50.00,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.00),
                  child: ChoiceChip(
                    labelPadding: const EdgeInsets.symmetric(
                      horizontal: 6.00,
                      vertical: 2.00,
                    ),
                    avatar: const CircleAvatar(
                      radius: 12.00,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.check_outlined,
                        color: Mycolors.primaryColor,
                      ),
                    ),
                    selected: true,
                    labelStyle: const TextStyle(color: Colors.white),
                    selectedColor: Theme.of(context).primaryColor,
                    label: const Text("Solar Irradiance"),
                    onSelected: (_) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6.00),
                  child: ChoiceChip(
                    labelPadding: choosenChipTextPadding,
                    avatar: CircleAvatar(
                      radius: 12.00,
                      backgroundColor: choosenChipBckaground,
                      child: choosenChipIcon,
                    ),
                    selected: temperatureState,
                    labelStyle: TextStyle(color: choosenChipTextColor),
                    selectedColor: Theme.of(context).primaryColor,
                    label: const Text("Temperature"),
                    onSelected: (_) {
                      setState(() {
                        if (temperatureState) {
                          temperatureState = false;
                          choosenChipIcon = const Icon(
                            Icons.device_thermostat,
                            color: Mycolors.lightUnSelectedIcons,
                          );
                          choosenChipBckaground = Colors.transparent;
                          choosenChipTextColor = Mycolors.darkTextColor;
                          choosenChipTextPadding = const EdgeInsets.all(3.0);
                        } else {
                          temperatureState = true;
                          choosenChipIcon = const Icon(
                            Icons.check_outlined,
                            color: Mycolors.primaryColor,
                          );
                          choosenChipBckaground = Colors.white;
                          choosenChipTextColor = Colors.white;
                          choosenChipTextPadding = const EdgeInsets.symmetric(
                            horizontal: 6.00,
                            vertical: 2.00,
                          );
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6.00),
                  child: ChoiceChip(
                    avatar: const CircleAvatar(
                      radius: 12.00,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.invert_colors,
                        color: Mycolors.lightUnSelectedIcons,
                      ),
                    ),
                    selected: false,
                    labelStyle: const TextStyle(color: Mycolors.darkTextColor),
                    selectedColor: Theme.of(context).primaryColor,
                    label: const Text("Humidity"),
                    onSelected: (_) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6.00),
                  child: ChoiceChip(
                    avatar: const CircleAvatar(
                      radius: 12.00,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.device_thermostat,
                        color: Mycolors.lightUnSelectedIcons,
                      ),
                    ),
                    selected: false,
                    labelStyle: const TextStyle(color: Mycolors.darkTextColor),
                    selectedColor: Theme.of(context).primaryColor,
                    label: const Text("Winds"),
                    onSelected: (_) {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
