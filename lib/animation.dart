import 'dart:async';

import 'package:flutter/material.dart';
import 'package:crowdapp/features/authentification/screens/login/login_screen.dart';

class DelayedAnimation extends StatefulWidget{
  final Widget child;
  final int delay;
  const DelayedAnimation( {super.key, required this.delay, required this.child});

  @override
  _DelayedAnimationState createState() => _DelayedAnimationState();


}

class _DelayedAnimationState extends State<DelayedAnimation>
with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset> _animOfset;

  void initState(){
    super.initState();

    _controller = AnimationController(
      vsync: this, 
      duration: Duration(milliseconds: 500)
    ); 
    
    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );   

    _animOfset = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration(milliseconds: widget.delay), ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
      }  
    );                                                                                                                                                                                                                                                                                                                                  
  }
        
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOfset ,
        child: widget.child,
      ),
    );
  }
}