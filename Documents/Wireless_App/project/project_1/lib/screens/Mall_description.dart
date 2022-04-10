class Mall {
  String name;
  String location;
  String image;
  String open;
  num timeOpen;
  
  // TODO: Add servings and ingredients here

  Mall(
    this.name,
    this.location,
    this.image,
    this.open,
    this.timeOpen,
  );
  static List<Mall> samples = [
  Mall(
    'Siam Paragon',
    '991 Rama 1 Road, Pathumwan, Bangkok 10330, Thailand',
    'https://a.cdn-hotels.com/gdcs/production67/d1888/b5246f12-6585-4e4f-bd55-6882ab2a297a.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
     5,
  ),
  Mall(
    'CentralWorld',
    '999/9 Rama I Rd, Pathumwan, Bangkok 10330, Thailand',
    'https://a.cdn-hotels.com/gdcs/production108/d311/c5fa26e7-5452-453b-8bf2-6c43737d38d2.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    5,
  ),
  Mall(
    'Icon Siam Shopping Mall',
    '299 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600, Thailand',
    'https://a.cdn-hotels.com/gdcs/production156/d1684/1316d175-8ae1-410f-b671-397182108972.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    5,
  ),
  Mall(
    'MBK Center',
    '444 Phayathai Road, Wang Mai, Pathumwan, Bangkok 10330, Thailand',
    'https://a.cdn-hotels.com/gdcs/production26/d417/16464b49-90e2-4dbf-b39f-7625e1f796cb.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    5,
  ),
  Mall(
    'EmQuartier', 
    '693, 695, 622, 626 Sukhumvit Rd, Khlong Tan, Watthana, Bangkok 10110, Thailand',
    'https://a.cdn-hotels.com/gdcs/production140/d920/30dbe328-72ca-471a-92f4-4975f32d4b1b.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    5,  
  ),
  Mall(
    'Central Embassy Shopping Mall',
     '1031 Phloen Chit Rd, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production36/d1767/a857ceed-8b0b-49dd-b9dc-72310c22c6a0.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     5,  
  ),
  Mall(
    'Siam Discovery',
     '989 Rama I Rd, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production105/d53/2851b744-02d8-4402-a5a8-f672d42e50de.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     5,  
  ),
  Mall(
    'Siam Center',
     '979 Rama 1 Road, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production52/d94/61eaa275-96db-4416-a746-dd028e558d5b.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     5,  
  ),
  Mall(
    'Terminal 21',
     'Sukhumvit Road, Khlong Toei, Watthana, Bangkok 10110, Thailand',
     'https://a.cdn-hotels.com/gdcs/production122/d0/fbe52580-c6e9-474f-bdd5-6f1baa4b4cb5.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     5,  
  ),
  Mall(
    'Gaysorn Village',
     '999 Ploenchit Rd, Lumphini, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production6/d844/6f5cf3c9-e5c7-45e9-a57c-8a2f19c88526.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     5,  
  ),
  Mall(
     'Central Chidlom',
     '1027 Ploenchit Rd, Lumphini, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production126/d771/26666e42-02db-4b07-958c-0b45cd027330.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     5,  
  ),

];

}

class Ingredient {
  //double quantity;
  String measure;
  String name;

  Ingredient(
      //this.quantity,
      this.measure,
      this.name,
      );
}
