import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _NewsState();
}

class _NewsState extends State<Video> {
  int selectedIndex = 0; // Initially the first category is selected
  Map<String, dynamic>? selectedSubcategory;
  PageController pageController = PageController(initialPage: 0);
  final List<String> imageUrls = [
    "assets/images/poster.png",
    "assets/images/poster.png",
    "assets/images/poster.png",
    "assets/images/poster.png",
    "assets/images/poster.png"
  ];
  final List<Map<String, dynamic>> categories = [
    {
      "name": "News",
      "subcategories": [
        {
          "flag":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqI97lBrpfjG7wo0zytKSKSStwS29FfYYL4Q&s",
          "name": "USA",
          "news": [
            {
              "title":
              "US News Today highlights on November 6, 2024 : With Donald Trump in Oval Office, should US-bound",
              "image":
              "https://www.livemint.com/lm-img/img/2024/11/06/600x338/USA-ELECTION-TRUMP-ANTITRUST-0_1730900386573_1730907953940.JPG"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://static.foxnews.com/foxnews.com/content/uploads/2019/10/USA-TODAY.jpg"
            },
          ],
        },
        {
          "flag":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/1200px-Flag_of_the_United_Kingdom_%281-2%29.svg.png",
          "name": "UK",
          "news": [
            {
              "title": "News in the UK",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
            {
              "title": "UK Economy Updates",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
          ],
        },
      ],
    },
    {
      "name": "Business",
      "subcategories": [
        {
          "flag":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqI97lBrpfjG7wo0zytKSKSStwS29FfYYL4Q&s",
          "name": "USA",
          "news": [
            {
              "title": "Breaking News in the USA",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
          ],
        },
        {
          "flag":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTG0xk_zYYIxC_1glN7gZMYiP-PjhLZ3uKhg&s",
          "name": "Japan",
          "news": [
            {
              "title": "Breaking News in the USA",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
          ],
        },
        {
          "flag":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIjjuG2pA9c9gA8oZmsdH_Ay6Ai8GOiRAppg&s",
          "name": "Mexico",
          "news": [
            {
              "title": "Breaking News in the USA",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
          ],
        },
        {
          "flag": "assets/flags/uk.png",
          "name": "UK",
          "news": [
            {
              "title": "News in the UK",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
            {
              "title": "UK Economy Updates",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
          ],
        },
      ],
    },
    {
      "name": "Culture",
      "subcategories": [
        {
          "flag":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqI97lBrpfjG7wo0zytKSKSStwS29FfYYL4Q&s",
          "name": "USA",
          "news": [
            {
              "title": "Breaking News in the USA",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
          ],
        },
        {
          "flag":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN6195_8oME4dxwQxfPZWfV4jidoDyFkFrdQ&s",
          "name": "Greece",
          "news": [
            {
              "title": "Breaking News in the USA",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
          ],
        },
        {
          "flag":
          "https://cdn.britannica.com/85/185-004-1EA59040/Flag-Egypt.jpg",
          "name": "Egypt",
          "news": [
            {
              "title":
              "IEA and Egypt strengthen cooperation with first-ever joint work programme - News - IEA",
              "image":
              "https://iea.imgix.net/ac07603f-516c-43b4-8993-4b3efdb738c5/EDEgyptAmbassador.jpg?auto=compress%2Cformat&fit=min&q=80&rect=0%2C427%2C4096%2C2304&w=1220&h=686&fit=crop&fm=jpg&q=70&auto=format"
            },
            {
              "title":
              "Egypt's net foreign assets positive for third consecutive month in July | World News - Business",
              "image":
              "https://bsmedia.business-standard.com/_media/bs/img/article/2023-03/31/full/1680231897-6686.jpg"
            },
          ],
        },
        {
          "flag": "assets/flags/uk.png",
          "name": "UK",
          "news": [
            {
              "title": "News in the UK",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
            {
              "title": "UK Economy Updates",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
          ],
        },
      ],
    },
    {
      "name": "Sports",
      "subcategories": [
        {
          "flag":
          "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
          "name": "India",
          "news": [
            {
              "title": "Breaking News in the USA",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
            {
              "title": "USA Market Trends",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
          ],
        },
        {
          "flag":
          "https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg",
          "name": "Australia",
          "news": [
            {
              "title": "News in the UK",
              "image":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe12wJIbi4KmZ2tRCJXh0CdJtCpc_SLzjLlA&s"
            },
            {
              "title": "UK Economy Updates",
              "image":
              "https://st3.depositphotos.com/11245678/36021/i/450/depositphotos_360215620-stock-photo-breaking-news-rendering-virtual-set.jpg"
            },
          ],
        },
      ],
    },
    // Other categories with similar structure...
  ];

  @override
  void initState() {
    super.initState();
    // Initialize with the first subcategory of the first category
    selectedSubcategory = categories[0]["subcategories"][0];
  }

  void onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
      selectedSubcategory = categories[index]["subcategories"]
      [0]; // Set to the first subcategory by default
    });
  }

  // Function to handle category selection
  void selectCategory(int index) {
    setState(() {
      selectedIndex = index;
      pageController.jumpToPage(index); // Jump to the selected page
      selectedSubcategory = categories[index]["subcategories"]
      [0]; // Set to the first subcategory by default
    });
  }

  // Function to handle subcategory selection
  void selectSubcategory(Map<String, dynamic> subcategory) {
    setState(() {
      selectedSubcategory = subcategory;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 60,
          //     // Set the height of the carousel
          //     aspectRatio: 16 / 9,
          //     // The aspect ratio of the carousel
          //     viewportFraction: 1.0,
          //     // Set to 1.0 to display only one image at a time
          //     enableInfiniteScroll: true,
          //     // Enable infinite scrolling
          //     autoPlay: true,
          //     // Optionally enable auto play
          //     enlargeCenterPage: true,
          //     // Optionally enlarge the current image
          //     scrollPhysics:
          //     BouncingScrollPhysics(), // Optional: Set scroll physics
          //   ),
          //   items: imageUrls
          //       .map((item) => Container(
          //       margin: const EdgeInsets.symmetric(horizontal: 10.0),
          //       decoration: BoxDecoration(
          //           border: Border.all(color: Color(0xffB8B8B8))),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Image.asset(item, fit: BoxFit.cover),
          //       )))
          //       .toList(),
          // ),

          Container(
            padding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            height: 60,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => selectCategory(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: selectedIndex == index
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Text(
                      categories[index]["name"],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: selectedIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color:
                        selectedIndex == index ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
              color: Colors.white,
              child: const Divider()),
          // Display subcategories horizontally for the selected category
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: categories.length,
              onPageChanged: onPageChanged,
              itemBuilder: (context, index) {
                List<Map<String, dynamic>> subcategories =
                categories[index]["subcategories"];
                return Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height:60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: subcategories.length,
                        itemBuilder: (context, subIndex) {
                          final subcategory = subcategories[subIndex];
                          final isSelected = selectedSubcategory == subcategory;

                          return GestureDetector(
                            onTap: () => selectSubcategory(subcategory),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 4, bottom: 4),
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors
                                      .grey, // Change color based on selection
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              margin:
                              const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    NetworkImage(subcategory["flag"]),
                                    radius: 16,
                                  ),
                                  const SizedBox(width: 13),
                                  Text(subcategory["name"]),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const Divider(),
                    // Conditionally display news items if a subcategory is selected
                    if (selectedSubcategory != null)
                      Expanded(
                        child: ListView.builder(
                          itemCount: selectedSubcategory!["news"].length,
                          itemBuilder: (context, newsIndex) {
                            var news = selectedSubcategory!["news"][newsIndex];
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                          height: 250,
                                          child: Image.network(news["image"]!,fit: BoxFit.cover,)),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 188, left: 1),
                                        child: Container(
                                          // alignment: Alignment.center,
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(5),
                                              color: Colors.redAccent),
                                          child: Center(
                                              child: Icon(Icons.play_arrow_sharp,color: Colors.white,)),
                                        ),
                                      )
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      news["title"] ?? 'No Title',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),

                                  // Text(item.subDec ?? 'No Description'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //   MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     CircleAvatar(
                                  //       backgroundImage:
                                  //       NetworkImage(categories[1]["subcategories"]["flag"]),
                                  //       radius: 16,
                                  //     ),
                                  //     const SizedBox(width: 13),
                                  //     Text(categories[1]["subcategories"]["name"]),
                                  //   ],
                                  // ),
                                ],
                              ),
                            );

                          },
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
