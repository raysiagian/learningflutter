import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            // column dapat memiliki banyak child (children)
            // child harus berbentuk widget
            // ukuran colum dipengaruhi ukuran child terbesar
            // nah jadi ketika ada 1 child memiliki ukuran terbesar dia menjadi patokan
            // patokan untuk aligment dan semacamnya
          
            crossAxisAlignment: CrossAxisAlignment.center,
            //crossAxisAligment itu mengatur aligment ke samping
          
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisAlignment mengatur aligntment ke bawah
          
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                // padding adalah jarak kedalam
                // jadi padding EdgeInsets.all berikan padding kesemua sisi tepi sebanyak 10
                // margin adalah jarak keluar
                // jadi margin EdgeInsets.all berikan margin kesemua sisi tepi sebanyak 10
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: Colors.blue[300],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Child 1", style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
                ),
              ),
              SizedBox(height: 15.0),
              //SizedBox seperti kotak kosong yang dapat diberikan ukuran
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: Colors.red[300],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Child 2", style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
  
  
  