import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Topics"),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: Icon(Icons.search),
            )
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.topic), label: 'Topics'),
            NavigationDestination(icon: Icon(Icons.class_), label: 'Classes'),
            NavigationDestination(icon: Icon(Icons.scanner), label: 'Scan'),
            NavigationDestination(icon: Icon(Icons.person), label: 'You')
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
        body: Container(
            child: GridView(
          children: [
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.pinkAccent,
            ),
            Container(
              color: Colors.deepPurple,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
          ),
        )));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Physics',
    'C#',
    'C',
    'Java',
    'Introduction to Programming',
    'Calculus',
    'Data Minning',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var topics in searchTerms) {
      if (topics.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(topics);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var topics in searchTerms) {
      if (topics.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(topics);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
