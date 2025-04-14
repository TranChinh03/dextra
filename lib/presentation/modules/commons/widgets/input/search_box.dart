import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          controller: controller,
          hintText: "Search...",
          trailing: <Widget>[
            SvgPicture.asset(
              Assets.svg.search,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              width: AppSpacing.rem350.w,
            )
          ],
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = '';
          return ListTile(
            title: CommonText(""),
          );
        });
      },
    );
  }
}
