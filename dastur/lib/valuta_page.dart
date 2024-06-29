import 'package:dastur/info_page.dart';
import 'package:dastur/valuta_model.dart';
import 'package:dastur/valuta_service.dart';
import 'package:flutter/material.dart';


class ValutaPage extends StatelessWidget {
  ValutaPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 131, 131, 23),title: const Text("Malumotlar")),
      body: FutureBuilder(
        future: Valutaservice().getUsers(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            final List<Valutamodel> kurslar = snapshot.data!;
            return ListView.builder(
              itemCount: kurslar.length,
              itemBuilder: (context, index) {
                final Valutamodel kurs = kurslar[index];
                return ListTile(
                  title: Text(kurs.ccyNmUZ.toString()),
                
                  onTap: () {
                    // Elementni bosganda, InfoPage sahifasiga o'tish
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPage(item: kurs),
                    )
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}