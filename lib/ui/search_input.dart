import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
 

  const SearchInput({
    super.key,
    required this.controller,
    this.hintText = '...',
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: const EdgeInsets.symmetric(horizontal: 16.0), 
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(8.0), 
        
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none, 
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
