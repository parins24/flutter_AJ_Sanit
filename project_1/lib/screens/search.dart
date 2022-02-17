import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search.dart';

class Mall {
  final String name, location, image, open;
  final num timeOpen;
  
  Mall(this.name, this.location,this.image,this.open, this.timeOpen);
}
class SearchBar extends StatelessWidget {
    const SearchBar({Key? key}) : super(key: key);
    static List<Mall> hang = [
      Mall('Siam Paragon', '991 Rama 1 Road, Pathumwan, Bangkok 10330, Thailand','-','10.00 am - 10.00 pm',5),
      Mall('CentralWorld', '999/9 Rama I Rd, Pathumwan, Bangkok 10330, Thailand','-','10.00 am - 10.00 pm',5),
      Mall('Icon Siam Shopping Mall', '299 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600, Thailand','-','10.00 am - 10.00 pm',5),
      Mall('MBK Center', '444 Phayathai Road, Wang Mai, Pathumwan, Bangkok 10330, Thailand','-','10.00 am - 10.00 pm',5),  
      Mall('EmQuartier', '693, 695, 622, 626 Sukhumvit Rd, Khlong Tan, Watthana, Bangkok 10110, Thailand','-','10.00 am - 10.00 pm',5),  
  ];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('My Personal Journal'),
        automaticallyImplyLeading: false,
        actions: [
        IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
        )
  ],
  centerTitle: true,
  ),
      
      body: ListView.builder(
        
        itemCount: hang.length,
        itemBuilder: (context, index) {
          final Mall malls = hang[index];
          return ListTile(
            title: Text(malls.name),
            subtitle: Text(malls.location),
            trailing: Text('${malls.open} times'),
          );
        },
      ),
      
    );
  }
}