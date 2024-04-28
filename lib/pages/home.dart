import 'package:fitness/pages/home_page_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomePageAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _searhField(),
          const SizedBox( height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 150,
                  color: Colors.blue,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    width: 10,
                    color: Colors.red,
                  );
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _searhField extends StatelessWidget {
  const _searhField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0
          )
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search Pancake',
          hintStyle: const TextStyle(
            color: Color(0xffDDDADA),
          ),
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: const Icon(Icons.search_rounded),
          suffixIcon: Container(
            width: 50,
            child: const IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    // color: Color(0xffDDDADA),
                    color: Colors.black,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Icon(Icons.filter_list_sharp),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
          )
        ),
      ),
    );
  }
}
