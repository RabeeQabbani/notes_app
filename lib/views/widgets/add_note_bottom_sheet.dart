import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextField(hintText: 'title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'content', maxLines: 5),
            //don't use spacer in singleChildScrollView because
            //spacer tell the column to expnad himself on his widgets
            //and singleChildScrollView tell the column to shrink himself on his widgets
            //Spacer(),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

