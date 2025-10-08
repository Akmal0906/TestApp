import 'package:flutter/material.dart';
import 'package:whitelabel/common/colors/static_colors.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import '../../../common/gen/assets.gen.dart';

class PurchaseItem extends StatelessWidget {
  const PurchaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(16,0,16,0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF333046).withOpacity(0.15),
            offset: const Offset(3, 4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Assets.icons.calendar.svg(),
               SizedBox(width: 8,),
              "28.06.2024 ".s(12).c(StaticColors.nero).w(400),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              'Package:'.s(14).w(700).c(StaticColors.nero),
              SizedBox(width: 4,),
              'Gold'.s(14).w(400),
            ],
          ),
          SizedBox(height: 8,),
          Divider(
            thickness: 1,
            color: Color(0xffE5E7EB),
          ),
          SizedBox(height: 8,),
          itemRow('Start date', '05.11.2024'),
          itemRow('Duration', '30 days'),
          itemRow('Visit qty', '12'),
          itemRow('Subtotal', '650 000'),
          itemRow('Discount', '10%'),
          Divider(
            thickness: 1,
            color: Color(0xffE5E7EB),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              'Total'.s(12).w(700).c(StaticColors.nero),
              '585 000'.s(12).w(700).c(StaticColors.nero),
            ],
          ),



        ],
      ),
    );
  }
  
  Widget itemRow(String title,String subTitle){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          title.s(12).w(500).c(StaticColors.nero),
          subTitle.s(12).w(400).c(StaticColors.nero),

        ],
      ),
    );
  }
}
