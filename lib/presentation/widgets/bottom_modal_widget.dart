import 'package:flutter/material.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


void showBottomModalCustomWidget(BuildContext context, {@required Widget? widget,required bool isExpanded}){
  
  
  BoxConstraints getWidthContrains(){

    final sizeWidth = MediaQuery.of(context).size.width;


    if(sizeWidth > 1024){

      return BoxConstraints(
        maxWidth: 600
      );

    }

    if(sizeWidth >= 800 && sizeWidth <= 1200){
      
      return BoxConstraints(
        maxWidth: 400
      );
      
    }


    return BoxConstraints(
        maxWidth: double.infinity
      );

  }
  
  showModalBottomSheet(
    context: context, 
    constraints: getWidthContrains(),
    builder: (context) => Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 0.8.h,
            width: 60,
            decoration: BoxDecoration(
              color: Color(0xFF40484B).withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),
        isExpanded ? Expanded(
          child: Padding(
            padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom
            ), 
            child: SingleChildScrollView(child: widget!),
          ),
        )
        : Padding(
          padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom
          ), 
          child: SingleChildScrollView(child: widget!),
        ),
        // SizedBox(height: 2.h,),
      ],
    ),
    elevation: 20,
    enableDrag: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(30),
        topRight: const Radius.circular(30)
      )
    ),

  );



  
}
