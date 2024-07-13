import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/home_page/widget/list_card.dart';
import 'package:learning_flutter/screens/home_page/widget/pinned_list.dart';

// membuat class home yg mewarisi sifat dari class statelesswidget
class Home extends StatelessWidget {

  // ini adalah constructor
  // pada class StatlessWidget terdapat parameter pada constructornya
  const Home({super.key});


  // ini adalah function
  // disini kita override function warisan dari induk
  // hot reload di Flutter bekerja dengan memperbarui widget-tree yang dihasilkan oleh fungsi build dari widget.
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //scaffold adalah salah satu
      // material anchestor
      // memberikan base layout pada aplikasi
      appBar: AppBar(
        title: const Text(
          "Belajar Flutter",
          style: TextStyle(
            color: Colors.white,
          )
        ),
        backgroundColor: Colors.blue,
      ),

      body: const Stack(
        children: [
          Column(children: [
          const SizedBox(height: 20.0),
          PinnedList(),
          const SizedBox(height: 20.0),
          ListCard(),
          ],)],
      )
    );
  }
}
