import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pulse_app/app/shared/components/custom_app_bar.dart';
import 'package:pulse_app/app/shared/components/custom_button.dart';
import 'package:pulse_app/app/shared/components/spacer_height_widget.dart';
import 'package:pulse_app/app/shared/components/text_form_field.dart';
import 'package:pulse_app/app/shared/domain/entities/app_theme_constants.dart';
import 'package:pulse_app/app/shared/extensions/build_context_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Row(
          children: <Widget>[
            Text('Dashboard'),
          ],
        ),
      ),
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          children: <Widget>[
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                padding: const EdgeInsets.all(AppThemeConstants.padding),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: AppTextFormField(
                            borderRadius: true,
                            showBorder: true,
                            borderColor: context.colorScheme.onBackground,
                            title: 'Filter',
                            hint: 'Filter',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_circle),
                          ),
                        ),
                      ],
                    ),
                    const SpacerHeight(),
                    const Divider(),
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Expanded(
                          child: Text('POST'),
                        ),
                        Expanded(
                          flex: 7,
                          child: AppTextFormField(
                            borderColor: context.colorScheme.onBackground,
                            title: 'URL',
                            hint: 'URL',
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: AppCustomButton(
                            height: 50,
                            expands: true,
                            label: const Text('Send'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
