import 'package:dashboard/core/cubit/parent_cubit.dart';
import 'package:dashboard/core/extentions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParentCubit, ParentState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(  // Centering the Row within the Scaffold
            child: Padding(  // Adding padding around the Row
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,  // Centering the buttons within the Row
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ParentCubit>().changeMode();
                        },
                      child:  Text(
                        'Change_Theme'.tr(context),
                        style: const TextStyle(
                          color: Colors.white,
                          height: 5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ParentCubit>().changelang();
                      },
                      child:  Text(
                        'Change_lang'.tr(context),
                        style: const TextStyle(
                          color: Colors.white,
                          height: 5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
