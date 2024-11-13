import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isComplated;
  final Function(bool?)? onChange;
  final Function(BuildContext)? deleteFunction;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.isComplated,
    required this.onChange,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0.h, left: 25.w, right: 25.w),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12.r),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Checkbox(
                  checkColor: Colors.white,
                  value: isComplated,
                  onChanged: onChange),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                child: Text(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  taskName,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight:
                        isComplated ? FontWeight.bold : FontWeight.normal,
                    fontSize: 18.sp,
                    decoration: isComplated
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
