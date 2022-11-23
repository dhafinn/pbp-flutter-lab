import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/fetch_mywatchlist.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchListDetail extends StatelessWidget {
  final WatchList myWatchList;
  const MyWatchListDetail({super.key, required this.myWatchList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      drawer: createDrawer(context),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Flexible (
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children : [
                        Text(
                          myWatchList.title,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          myWatchList.releaseDate,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          myWatchList.watched ? "Watched" : "Not watched yet",
                          style: TextStyle(fontSize: 18,
                              color: myWatchList.watched
                                  ? Colors.green
                                  : Colors.red),
                        )
                      ]
                    )
                  )
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myWatchList.rating >= 4
                          ? Colors.green
                          : myWatchList.rating > 2.5
                            ? Colors.orange
                            : Colors.red,
                      border: Border.all(
                          color: Colors.white, width: 2),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10))),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: const EdgeInsets.only(right: 20.0),

                  child: Row (
                    children: [
                      Text(
                        "${myWatchList.rating.toString()}",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const Icon(Icons.star,
                        size: 16,
                        color: Colors.white,
                      ),
                    ]
                  )
                ),
              ]
            ),


            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Flexible(
                      child: Text(
                        myWatchList.review,
                        style: const TextStyle(fontSize: 18),
                      )
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ));
  }
}