import 'dart:math';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_animasi/app/modules/profile/views/profile_view.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.pink,
            child: FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * 0.5, size.height * 0.5)
      ..lineTo(size.width * 0.5, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// ignore: must_be_immutable


//animated container
// Center(
//           child: Obx(
//             () => GestureDetector(
//               onTap: () => controller.selected.toggle(),
//               child: AnimatedContainer(
//                 curve: Easing.legacyDecelerate,
//                 duration: Duration(seconds: 2),
//                 width: controller.selected.isFalse ? 300 : 200,
//                 height: controller.selected.isFalse ? 300 : 100,
//                 color: controller.selected.isFalse ? Colors.blue : Colors.red,
//               ),
//             ),
//           ),
//         ));

//animated align
// Center(
//           child: Obx(
//             () => GestureDetector(
//               onTap: () => controller.selected.toggle(),
//               child: Container(
//                 alignment: Alignment.center,
//                 width: 300,
//                 height: 300,
//                 color: Colors.blue,
//                 child: AnimatedAlign(
//                     duration: Duration(seconds: 2),
//                     alignment: controller.selected.isFalse
//                         ? Alignment.center
//                         : Alignment.bottomLeft,
//                     child: Text("HALOOOOO")),
//               ),
//             ),
//           ),
//         ));

//animated crossfade
// Center(
//           child: Obx(
//             () => GestureDetector(
//                 onTap: () => controller.selected.toggle(),
//                 child: AnimatedCrossFade(
//                     firstChild: Container(
//                       height: 200,
//                       width: 200,
//                       color: Colors.red,
//                     ),
//                     secondChild: FlutterLogo(
//                       size: 200,
//                     ),
//                     crossFadeState: controller.selected.isFalse
//                         ? CrossFadeState.showFirst
//                         : CrossFadeState.showSecond,
//                     duration: Duration(seconds: 1))),
//           ),
//         ));

//animated opacity
// Center(
//             child: Obx(
//           () => GestureDetector(
//               onTap: () => controller.selected.toggle(),
//               child: AnimatedOpacity(
//                 duration: Duration(seconds: 1),
//                 opacity: controller.selected.isFalse ? 1 : 0.5,
//                 child: Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.black,
//                 ),
//               )),
//         )));

//animated positioned
// Center(
//             child: Obx(
//           () => GestureDetector(
//               onTap: () => controller.selected.toggle(),
//               child: Container(
//                 width: 200,
//                 height: 400,
//                 color: Colors.blueGrey,
//                 child: Stack(
//                   children: [
//                     AnimatedPositioned(
//                       left: controller.selected.isFalse ? 0 : 10,
//                       top: controller.selected.isFalse ? 100 : 200,
//                       duration: Duration(seconds: 1),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         color: Colors.amber,
//                       ),
//                     )
//                   ],
//                 ),
//               )),
//         )));

//animated builder
// Center(
//           child: AnimatedBuilder(
//             animation: controller.animationC,
//             builder: (context, widget) {
//               return Container(
//                 width: 200,
//                 height: 400,
//                 color: Colors.blueGrey,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                         top: 0,
//                         right: 2 *
//                             (0.5 - (0.5 - controller.animationC.value).abs()) *
//                             150,
//                         child: widget!)
//                   ],
//                 ),
//               );
//             },
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.amber,
//             ),
//           ),
//         ));

//animated Widget
// class HomeView extends GetView<HomeController> {
//   const HomeView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MyWidget(
//       MyC: controller.animationC,
//     );
//   }
// }

// // ignore: must_be_immutable
// class MyWidget extends AnimatedWidget {
//   MyWidget({
//     super.key,
//     required this.MyC,
//   }) : super(listenable: MyC);

//   AnimationController MyC;

//   get proggres => listenable as Animation<double>;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('HomeView'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Transform.rotate(
//             angle: proggres.value * pi * 2,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.amber,
//             ),
//           ),
//         ));
//   }
// }

//decorated box transition
// class HomeView extends GetView<HomeController> {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     DecorationTween mydec = DecorationTween(
//         begin: BoxDecoration(
//             borderRadius: BorderRadius.circular(100), color: Colors.blue),
//         end: BoxDecoration(
//             borderRadius: BorderRadius.circular(50), color: Colors.amber));
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: DecoratedBoxTransition(
//           decoration: mydec.animate(controller.animationC),
//           child: Container(
//             width: 300,
//             height: 300,
//           ),
//         ),
        
//       ),
//     );
//   }
// }

//fade transition
// Center(
//         child: FadeTransition(
//           opacity: CurvedAnimation(
//               parent: controller.animationC, curve: Curves.easeIn),
//           child: Container(
//             width: 300,
//             height: 300,
//             color: Colors.black,
//           ),
//         ),

//avatar glow
// Center(
//         child: AvatarGlow(
//           curve: Curves.bounceIn,
//           glowColor: Colors.pink,
//           child: ClipOval(
//             child: Container(
//               width: 70,
//               height: 70,
//               color: Colors.black,
//               child: Image.network(
//                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
//       ),

//Hero
// Center(
//           child: GestureDetector(
//         onTap: () => Get.to(ProfileView()),
//         child: Hero(
//           tag: 'tag1',
//           child: ClipOval(
//             child: SizedBox(
//                 width: 200,
//                 height: 200,
//                 child: Image.network(
//                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s',
//                   fit: BoxFit.cover,
//                 )),
//           ),
//         ),
//       )),