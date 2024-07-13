import 'package:flutter/material.dart';

class PinnedList extends StatelessWidget {
  const PinnedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            // Contoh penerapan Row
            // Berbeda dengan Column yg memiliki main axis vertical dan cross axis horizontal
            // row memiliki main axis horizontal dan cross axis vertical
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("List 1",
                style:  TextStyle(
                  color: Colors.black,
                ),),
              ),
              const SizedBox(width: 10.0),
               Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("List 2",
                style:  TextStyle(
                  color: Colors.black,
                ),),
              ),
            ],),
          ),
      ],
    );
  }
}