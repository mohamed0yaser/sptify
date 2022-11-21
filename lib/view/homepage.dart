import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _list = [
    {
      'image': 'images/image1.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': true,
    },
    {
      'image': 'images/image2.png',
      'title': 'Wishing Well',
      'description': 'Juice WLRD',
      'favorite': true,
    },
    {
      'image': 'images/image3.png',
      'title': 'Unstable',
      'description': 'Justin Bieber,The Kid LAROI',
      'favorite': false,
    },
    {
      'image': 'images/image4.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': false,
    },
    {
      'image': 'images/image1.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': true,
    },
    {
      'image': 'images/image2.png',
      'title': 'Wishing Well',
      'description': 'Juice WLRD',
      'favorite': true,
    },
    {
      'image': 'images/image3.png',
      'title': 'Unstable',
      'description': 'Justin Bieber,The Kid LAROI',
      'favorite': false,
    },
    {
      'image': 'images/image4.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          stretch: false,
          floating: true,
          snap: true,
          surfaceTintColor: Color.fromRGBO(0, 0, 0, 1),
          backgroundColor: Colors.black,
          expandedHeight: 380,
          elevation: 1,
          pinned: true,
          titleSpacing: 16,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,) ,
            ),
          ),
          actions:const [
            Icon(Icons.favorite_outline,color:Colors.white ,),
            SizedBox(width: 16,),
            Icon(Icons.more_vert,color: Colors.white,),
            SizedBox(width: 16,)
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal:32,vertical: 8 ),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/image3.png'),fit: BoxFit.none),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Todays'.toUpperCase(), 
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontFamily: 'Inter'
            ),),
            Text('Top Hit'.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Inter')),
            Row(
              children: const [
                Icon(Icons.favorite, color: Colors.white54,size: 14,),
                SizedBox(width: 4,),
                Text('357,828 likes',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 13)),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.watch,
                        color: Colors.white54,
                        size: 14,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('2hr 40min',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 13)),
              ],
            )
          ],
        ),
            ),
          ),

        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:const Icon(Icons.play_arrow, size: 35,),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                child: Text(
                  'Featuring',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0,
                    thickness: 0.4,
                    color: Colors.grey,
                  );
                },
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = _list[index];
                  return Card(
                    color: Colors.black,
                    child: InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Image.asset(item['image']),
                              )
                              ),
                              const SizedBox(width: 12,),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item['title'].toString().toUpperCase(),
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                    const SizedBox(height: 8),
                                    Text(item['description'],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500))
                                
                                  ],
                                ),
                              ),
                              Icon(Icons.favorite,
                                  color: item['favorite']
                                      ? Colors.green
                                      : Colors.white),
                              const SizedBox(width: 12),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )

                          ],
                        ),
                      ),

                   ) );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}