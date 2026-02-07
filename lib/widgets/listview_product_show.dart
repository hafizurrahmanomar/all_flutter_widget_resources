import 'package:flutter/material.dart';

class ProductShowWithListView extends StatefulWidget {
  ProductShowWithListView({super.key});

  List<Map<String, String>> myProducts = <Map<String, String>>[
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 1',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 2',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 3',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 4',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 5',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 6',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 7',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 8',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 9',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 10',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 11',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 12',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 13',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 14',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 15',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 16',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 17',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 18',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 19',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 20',
    },
  ];

  @override
  State<ProductShowWithListView> createState() =>
      _ProductShowWithListViewState();
}

class _ProductShowWithListViewState extends State<ProductShowWithListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Show With ListView")),
      body: ListView.builder(
        itemCount: widget.myProducts.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              //width: double.infinity,
              height: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        widget.myProducts[index]['img']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.myProducts[index]['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
