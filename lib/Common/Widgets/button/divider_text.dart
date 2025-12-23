
import 'package:flutter/material.dart';

Widget dividerText({required String title }){
  return  Row(
                children: [
                  Expanded(child: Divider(indent: 60, endIndent: 5)),
                  Text(title),
                  Expanded(child: Divider(indent: 5, endIndent: 60)),
                ],
              );
}