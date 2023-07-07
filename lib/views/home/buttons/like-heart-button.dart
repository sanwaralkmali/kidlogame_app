// ignore_for_file: library_private_types_in_public_api, must_be_immutable, file_names

import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  LikeButton({Key? key, required this.isLiked}) : super(key: key);
  bool isLiked;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 1),
    );

    _colorAnimation = ColorTween(
      begin: Colors.grey,
      end: Colors.red,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, _) => IconButton(
        icon: Icon(
          widget.isLiked ? Icons.favorite : Icons.favorite_border,
        ),
        color: _colorAnimation.value,
        onPressed: _toggleFavorite,
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      widget.isLiked = !widget.isLiked;
      widget.isLiked ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
