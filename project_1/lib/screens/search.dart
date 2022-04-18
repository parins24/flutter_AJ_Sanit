// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'search.dart';
// // import '/detail.dart';


// class Mall {
//   final String name, location, image, open;
//   final num timeOpen;
  
//   Mall(this.name, this.location,this.image,this.open, this.timeOpen);
// }
// class SearchBar extends StatelessWidget {
//     const SearchBar({Key? key}) : super(key: key);
//     static List<Mall> hang = [
//       Mall('Siam Paragon', '991 Rama 1 Road, Pathumwan, Bangkok 10330, Thailand','-','10.00 am - 10.00 pm',5),
//       Mall('CentralWorld', '999/9 Rama I Rd, Pathumwan, Bangkok 10330, Thailand','-','10.00 am - 10.00 pm',5),
//       Mall('Icon Siam Shopping Mall', '299 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600, Thailand','-','10.00 am - 10.00 pm',5),
//       Mall('MBK Center', '444 Phayathai Road, Wang Mai, Pathumwan, Bangkok 10330, Thailand','-','10.00 am - 10.00 pm',5),  
//       Mall('EmQuartier', '693, 695, 622, 626 Sukhumvit Rd, Khlong Tan, Watthana, Bangkok 10110, Thailand','-','10.00 am - 10.00 pm',5),  
//   ];
//     @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //       // appBar: AppBar(
//   //       // title: const Text('My Personal Journal'),
//   //       // actions: [
//   //       // IconButton(
//   //       //     onPressed: () {},
//   //       //     icon: const Icon(Icons.search),
//   //       //     )
//   //       // ],
//   //       // centerTitle: true,
//   //       // ),
//   //       appBar: AppBar(
//   //         title: Text("Search"),
//   //         centerTitle: true,
//   //       ),
//   //     body: ListView.builder(
        
//   //       itemCount: hang.length,
//   //       itemBuilder: (context, index) {
//   //         final Mall malls = hang[index];
//   //         return ListTile(
//   //           title: Text(malls.name),
//   //           subtitle: Text(malls.location),
//   //           trailing: Text('${malls.open} times'),
//   //         );
//   //       },
//   //     ),
      
//   //   );
//   // }
//   Widget build(BuildContext context) {
//     // 1
//     return Scaffold(
//       // 2
//       appBar: AppBar(
//         title: Text("Malls"),
//       ),
//       // 3
//       body: SafeArea(
//         // TODO: Replace child: Container()
//         // 4
//         // 4
// child: ListView.builder(
//   // 5
//   itemCount: Mall.ListMall.length,
//   // 6
//   itemBuilder: (BuildContext context, int index) {
//     // 7
//     // TODO: Update to return Recipe card
//     return Text(Recipe.ListMall[index].label);
//   },
// ),

//         ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '/main.dart';
import './Mall_description.dart';
import './detail.dart';

class GridSearchScreen extends StatefulWidget {
  @override
  _GridSearchScreenState createState() => _GridSearchScreenState();
}

class _GridSearchScreenState extends State<GridSearchScreen> {
  List<Mall> ListMall = Mall.samples;
  List<Mall>? ListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }
  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text("Logout"),
        content: const Text("Confirm to logout?"),
        actions: <Widget>[
          MaterialButton(elevation: 5.0,
          child: const Text('cancel'),
          onPressed: (){
            Navigator.pop(context);
          },),
          MaterialButton(elevation: 5.0,
          child: const Text('logout'),
          onPressed: (){
              Navigator.pushReplacementNamed(context, '/');
          },),
        ],
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    // Widget cancelButton = TextButton(
    //   child: const Text("Cancel"),
    //   onPressed:  () {},
    // );
    // Widget continueButton = TextButton(
    //   child: const Text("Continue"),
    //   onPressed:  () {},
    // );
    // AlertDialog alert = AlertDialog(
    // title: const Text("AlertDialog"),
    // content: const Text("Would you like to continue learning how to use Flutter alerts?"),
    // actions: [
    //   cancelButton,
    //   continueButton,
    // ],
    //  );
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink.shade200,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search here',
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    ListSearch = ListMall
                        .where(
                            (element) => element.name.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        ListSearch!.isEmpty) {
                      print('ListSearch length ${ListSearch!.length}');
                    }
                  });
                },
                
              ),
              
            ),actions: [
              TextButton(
                onPressed: (){
                  // ProductSearch?.clear();
                  _textEditingController!.clear();
                  setState((){
                    _textEditingController!.text='';
                  });
                },
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
                ),

                IconButton(
                  icon: const Icon(
                    Icons.logout_outlined, size: 30,
                    ), 
                    onPressed:(){
                      createAlertDialog(context);
                    }
                )
            ]),
        body: _textEditingController!.text.isNotEmpty &&
                ListSearch!.isEmpty
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Ink.image(
                              image:NetworkImage(
                              "https://www.meme-arsenal.com/memes/c9e6371faa3b57eaee1d35595ca8e910.jpg"),
                              height:200,
                              width:200,
                              fit:BoxFit.cover,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Input Not found,\nPlease try different Mall keyword',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              )
      :ListView.builder(
                itemCount: _textEditingController!.text.isNotEmpty
                    ? ListSearch!.length
                     : ListMall.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(children: <Widget>[ Row(children: [
                        CircleAvatar(
                          child: Icon(Icons.car_rental_sharp),
                          backgroundColor: Colors.pink.shade100,
                          foregroundColor: Colors.pink.shade400,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(_textEditingController!.text.isNotEmpty
                            ? ListSearch![index].name
                            : ListMall[index].name),
                        
                      ],),
                        Row( 
                          mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                            crossAxisAlignment: CrossAxisAlignment.center, 
                          
                          children: [ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Builder(
                            builder: (context) {
                              return  MallDetail(mall:_textEditingController!.text.isNotEmpty
                            ? ListSearch![index]
                            : ListMall[index]);
                            }
                          )),);
                  
                          }, 
                          child: ClipRRect(
                            
                            borderRadius: BorderRadius.circular(10),
                             // Image border
                             
                            child: SizedBox.fromSize(
                              
                              size: Size.fromRadius(150), // Image radius
                              child: Image.network(_textEditingController!.text.isNotEmpty
                            ? ListSearch![index].image
                            :ListMall[index].image, fit: BoxFit.cover),
                            ),
                          ),)
                          ],  
                          )
                        ]),
                         ),
                  );
                }));
  }
}