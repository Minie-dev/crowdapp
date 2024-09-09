import 'package:flutter/material.dart';
import 'package:crowdapp/animation.dart';

const _mainColor = Color(0xFF1c77c3);

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
       children: const [
         DelayedAnimation(
            delay: 1000, 
            child: Text('CA',
              style: TextStyle(
                fontSize: 45,
                color: _mainColor,
                fontWeight: FontWeight.w500,
              ),
            ), 
          ),
       ],
    );
  }
}
