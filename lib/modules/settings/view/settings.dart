import 'package:dashboard/core/cubit/parent_cubit.dart';
import 'package:dashboard/core/extentions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParentCubit, ParentState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ParentCubit>().changeMode();
                      },
                      child: Text(
                        'Change_Theme'.tr(context),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          height: 5,
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
                      child: Text(
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
