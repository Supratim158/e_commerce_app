import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../sp_icons/icon.dart';

class Profile_list extends StatelessWidget {
  const Profile_list(
      {Key? key,
      required this.title,
      this.subtitle,
      required this.assetname,
      required this.isLast}) :super(key:key);
  final String title;
  final String ? subtitle;
  final String assetname;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          child: ListTile(

            leading: SpIcon(
                assetname: assetname
            ),
            title: Text(title),
            subtitle: subtitle!=null?
            Text(
                subtitle!
            ) :null,
            trailing: InkWell(
                onTap: () {},
                child: Icon(CupertinoIcons.chevron_down,size: 14,)),
          ),
        ),
        isLast? Container(): Divider(color: Colors.black12,)

        //
      ],
    );
  }
}
