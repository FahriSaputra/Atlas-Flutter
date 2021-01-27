import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CommentButton extends StatelessWidget {
  final Function onTap;
  final String comments;
  final Color titleColor, iconColor;

  /// [comment] diisi dengan total comment
  CommentButton({
    this.onTap,
    @required this.comments,
    this.titleColor,
    this.iconColor,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 30,
        ),
        child: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(20),
              child: Icon(
                Icons.mode_comment_outlined,
                size: 20,
                color: iconColor,
              ),
              onTap: onTap,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: AutoSizeText(
                comments,
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: titleColor),
                maxFontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
