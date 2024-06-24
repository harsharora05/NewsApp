import 'package:flutter/material.dart';

class NewsDetailView extends StatelessWidget {
  final Map<String, dynamic> news;
  const NewsDetailView({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          news['source']['name'],
          style: const TextStyle(
              color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 35),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(news['urlToImage'].toString()))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Title :- ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Expanded(child: Text(news['title'].toString())),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description :- ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Expanded(child: Text(news['description'].toString())),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // GestureDetector(

              //   child: const Text(
              //     "Click to Read Full Article",
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
