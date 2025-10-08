// import 'package:aije/data/incoming_data_logic/merchants/merchants_bloc.dart';
// import 'package:aije/data/incoming_data_logic/profile/profile_bloc.dart';
// import 'package:aije/util/helpers/export.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_locales/flutter_locales.dart';
//
// class VerifyAccount extends StatelessWidget {
//   const VerifyAccount({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context);
//     return RefreshIndicator(
//       onRefresh: () async {
//         BlocProvider.of<ProfileBloc>(context).add(CallProfile());
//         BlocProvider.of<MerchantsBloc>(context).add(CallMerchants());
//       },
//       child: SingleChildScrollView(
//         child: SizedBox(
//           height: size.size.height -
//               (Scaffold.of(context).appBarMaxHeight ??
//                   (size.padding.top + kToolbarHeight) + 80),
//           width: size.size.width,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset(Constants.verify),
//               Padding(
//                 padding: const EdgeInsets.only(top: 64, bottom: 16),
//                 child: Text(
//                   context.localeString("home.verify"),
//                   style: const TextStyle(
//                       fontWeight: FontWeight.w800, fontSize: 24),
//                 ),
//               ),
//               Text(
//                 context.localeString("home.subverify"),
//                 textAlign: TextAlign.center,
//                 style:
//                     const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
