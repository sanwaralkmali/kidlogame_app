// ignore_for_file: must_be_immutable, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class FavoriteButton extends StatefulWidget {
  FavoriteButton({Key? key, required this.isFavorite}) : super(key: key);
  bool isFavorite;
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
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
      end: AppTheme.faviorteIcon,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, _) => IconButton(
        icon: Icon(
          widget.isFavorite ? Icons.star : Icons.star_border,
        ),
        color: _colorAnimation.value,
        onPressed: _toggleFavorite,
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      widget.isFavorite = !widget.isFavorite;
      widget.isFavorite ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
