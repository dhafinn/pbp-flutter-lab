import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/dataBudget.dart';

class ShowBudget extends StatefulWidget {
  const ShowBudget({super.key});

  @override
  State<ShowBudget> createState() => _ShowBudgetState();
}

class _ShowBudgetState extends State<ShowBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Budget'),
        ),
        drawer: createDrawer(context),
        body: SingleChildScrollView(
            child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                    children: ListBudget.data.isNotEmpty
                        ? ListBudget.data
                        .map((budget) => Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: SizedBox(
                          height: 100,
                          child: Container(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(budget.judul,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: budget.jenis ==
                                        "Pengeluaran"
                                        ? Colors.red
                                        : Colors.green),
                                  ),

                                  Text("${budget.date.day}-${budget.date.month}-${budget.date.year}"),


                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(budget.nominal.toString()),
                                      Text(budget.jenis)
                                    ],
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                    )).toList()
                        : [
                          Center(
                        // ignore: prefer_const_literals_to_create_immutables
                            child: Column(children: [
                              const Text("Tidak ada data", style: TextStyle(fontSize: 14),
                              )
                            ]
                          )
                        )
                      ]
                )
            )
        )
    );
  }
}