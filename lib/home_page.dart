import 'package:facebook_clone_flutter_app/widgets/story_feed.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {


  TabController _tabController;

  @override
  void initState(){
    _tabController=new TabController(length: 6, vsync: this,initialIndex: 0)..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('facebook',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
          actions: [
            CircleAvatar(child: Icon(Icons.search,color: Colors.black,size: 30,),backgroundColor: Colors.grey[100],),
            SizedBox(width: 10,),
            CircleAvatar(child: IconButton(icon: Image.asset('assets/images/messanger.png'),),backgroundColor: Colors.grey[100],)
          ],
          bottom: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.all(0),
            indicatorSize: TabBarIndicatorSize.tab,
            // labelStyle: TextStyle(fontSize: 18),
            // isScrollable: true,
            tabs: [
              Icon(Icons.home,color:Colors.blue,size: 35,),
              // CircleAvatar(child: Image.asset('assets/images/groups.png',height: 50),backgroundColor: Colors.white,),
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.grey[900],

                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 14,
                  backgroundImage: AssetImage('assets/images/groups.png'),
                ),
              ),
              Image.asset('assets/images/watch.png',height: 50,width: 50,),
              Image.asset('assets/images/marketplace.png',width: 30,height: 30,),
              Image.asset('assets/images/notifications.png',width: 30,height: 30,),
              Icon(Icons.menu,color: Colors.black,size: 35,),

            ],
          ),
        ),


        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[





            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),

                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/img6.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),

                          SizedBox(width: 20,),

                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey[200]
                              ),

                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(

                                  decoration: InputDecoration(
                                    // prefixIcon: Icon(Icons.search, color: Colors.grey,),
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: "What's on your mind ? ",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(),


                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(width: MediaQuery.of(context).size.width/3-2,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.video_call,color: Colors.red,size: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Live',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                                )
                              ],
                            ),
                          ),

                          SizedBox(width: 1,height: 30,child: Container(decoration: BoxDecoration(color: Colors.grey),),),

                          Container(width: MediaQuery.of(context).size.width/3-2,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.photo_library,color: Colors.green,size: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Photo',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                                )
                              ],
                            ),),

                          SizedBox(width: 1,height:30,child: Container(decoration: BoxDecoration(color: Colors.grey),),),
                          Container(width: MediaQuery.of(context).size.width/3-2,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.video_call,color: Colors.purple,size: 25,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Room',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),

                    SizedBox(height: 20,child: Container(decoration: BoxDecoration(color: Colors.black12),),),


                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 180,

                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeStory(
                                storyImage: 'assets/images/img1.jpg',
                                userImage: 'assets/images/img2.jpg',
                                userName: 'Creative 1'
                            ),
                            makeStory(
                                storyImage: 'assets/images/img2.jpg',
                                userImage: 'assets/images/img3.jpg',
                                userName: 'Creative 2'
                            ),
                            makeStory(
                                storyImage: 'assets/images/img3.jpg',
                                userImage: 'assets/images/img4.jpg',
                                userName: 'Creative 3'
                            ),
                            makeStory(
                                storyImage: 'assets/images/img4.jpg',
                                userImage: 'assets/images/img5.jpg',
                                userName: 'Creative 4'
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 40,child: Container(decoration: BoxDecoration(color: Colors.black12),),),



                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                      makeFeed(
                          userName: 'Creative 1',
                          userImage: 'assets/images/img1.jpg',
                          feedTime: '1 hr ago',
                          feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                          feedImage: 'assets/images/img2.jpg'
                      ),
                    ),

                    SizedBox(height: 20,child: Container(decoration: BoxDecoration(color: Colors.black12),),),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: makeFeed(
                          userName: 'Creative 2',
                          userImage: 'assets/images/img2.jpg',
                          feedTime: '3 mins ago',
                          feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                          feedImage: ''
                      ),
                    ),

                    SizedBox(height: 20,child: Container(decoration: BoxDecoration(color: Colors.black12),),),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: makeFeed(
                          userName: 'Creative 3',
                          userImage: 'assets/images/img3.jpg',
                          feedTime: 'just now',
                          feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                          feedImage: 'assets/images/img4.jpg'
                      ),
                    ),

                    SizedBox(height: 20,child: Container(decoration: BoxDecoration(color: Colors.black12),),),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
