import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/api/fetch_mywatchlist.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlistdetail.dart';

class MyWatchList extends StatefulWidget {
  const MyWatchList({super.key});

  @override
  State<MyWatchList> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchList> {
  Future future = fetchWatchList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: createDrawer(context),
        body: FutureBuilder(
            future: future,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                        TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                blurRadius: 20.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: const Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15), // if you need this
                                  side: BorderSide(
                                    color: snapshot.data![index].watched
                                        ? Colors.green
                                        : Colors.red,
                                    width: 2,
                                  )),
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 18),
                                  child: ListTile(
                                    title: Text(
                                      "${snapshot.data![index].title}",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: snapshot.data![index].watched
                                            ? Icon(Icons.check, color: Colors.green)
                                            : Icon(Icons.close, color: Colors.red),
                                      onPressed: (){
                                        setState(() {
                                          snapshot.data![index].watched =
                                          !snapshot.data![index].watched;
                                        });
                                      },
                                    ),

                                    // Checkbox(
                                    //   value: snapshot.data![index].watched,
                                    //   onChanged: (bool? newValue) {
                                    //     setState(() {
                                    //       snapshot.data![index].watched =
                                    //       !snapshot.data![index].watched;
                                    //     });
                                    //   },
                                    // ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyWatchListDetail(
                                                    myWatchList:
                                                    snapshot.data![index])),
                                      );
                                    },
                                  )
                              )
                          )
                      )
                  );
                }
              }
            }
        )
    );
  }
}