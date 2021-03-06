import 'dart:ffi';

class Mall {
  String name;
  String location;
  String image;
  String open;
  double lat;
  double long;
  String parkImg;
  int pSpace;
  int mSpace;
  int numFloor;
  
  // TODO: Add servings and ingredients here

  Mall(
    this.name,
    this.location,
    this.image,
    this.open,
    this.lat,
    this.long,
    this.parkImg,
    this.pSpace,
    this.mSpace,
    this.numFloor,
  );
  static List<Mall> samples = [
  Mall(
    'Siam Paragon',
    '991 Rama 1 Road, Pathumwan, Bangkok 10330, Thailand',
    'https://a.cdn-hotels.com/gdcs/production67/d1888/b5246f12-6585-4e4f-bd55-6882ab2a297a.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
     13.746449520996308,
     100.53469728271385,
     "https://media-cdn.tripadvisor.com/media/photo-s/17/28/17/27/siam-paragon-shopping.jpg",
     35,
     61,
     6,
  ),
  Mall(
    'CentralWorld',
    '999/9 Rama I Rd, Pathumwan, Bangkok 10330, Thailand',
    'https://a.cdn-hotels.com/gdcs/production108/d311/c5fa26e7-5452-453b-8bf2-6c43737d38d2.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    13.747132249435795,
    100.53903492689187,
    "https://jll-global-gdim-res.cloudinary.com/image/upload/t_test-ap-property-detail-floorplan-web/v1596046248/AP_ML20200729/Central-Tower-at-Central-World_20200729_e75c5627-8f5b-437d-adc8-d66f8661ede7_002.png",
    78,
    86,
    8,
  ),
  Mall(
    'Icon Siam Shopping Mall',
    '299 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600, Thailand',
    'https://a.cdn-hotels.com/gdcs/production156/d1684/1316d175-8ae1-410f-b671-397182108972.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    13.726758550588203,
    100.51000559620685,
    "https://thelist.group/realist/wp-content/uploads/2018/11/Iconsiam_DIRECTORY-1F.jpg",
    98,
    120,
    5,
  ),
  Mall(
    'MBK Center',
    '444 Phayathai Road, Wang Mai, Pathumwan, Bangkok 10330, Thailand',
    'https://a.cdn-hotels.com/gdcs/production26/d417/16464b49-90e2-4dbf-b39f-7625e1f796cb.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    13.7450587302345,
    100.53006731339866,
    "https://rwg.cc/datastore/attachments/monthly_05_2012/post-22602-0-59341600-1337746969.jpg",
    28,
    47,
    5,
  ),
  Mall(
    'EmQuartier', 
    '693, 695, 622, 626 Sukhumvit Rd, Khlong Tan, Watthana, Bangkok 10110, Thailand',
    'https://a.cdn-hotels.com/gdcs/production140/d920/30dbe328-72ca-471a-92f4-4975f32d4b1b.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    '10.00 am - 10.00 pm',
    13.73175384503502,  
    100.56929629990533,
    "https://i.pinimg.com/736x/36/c1/0c/36c10ce4b115b34b83087931b8d662de.jpg",
    58,
    78,
    6,
  ),
  Mall(
    'Central Embassy Shopping Mall',
     '1031 Phloen Chit Rd, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production36/d1767/a857ceed-8b0b-49dd-b9dc-72310c22c6a0.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     13.744091928338344,  
     100.54589188456306,
     "https://www.centralembassy.com/wp-content/uploads/2021/08/CE-Directory-Revised__Level-1.jpg",
     58,
     90,
     7,
  ),
  Mall(
    'Siam Discovery',
     '989 Rama I Rd, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production105/d53/2851b744-02d8-4402-a5a8-f672d42e50de.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     13.747033249639214,  
     100.53132761607539,
     "https://scontent.fbkk7-2.fna.fbcdn.net/v/t1.18169-9/16681476_1335001839855096_8921332209970370328_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=HA2vjwmT1owAX_CX1sP&_nc_oc=AQmPMON0d-LKku8jxIjLivb9y3LklaQNhbnDUtdPE9FXSO2Iok31LzUZynYwJfSn-CU&_nc_ht=scontent.fbkk7-2.fna&oh=00_AT_bi9OXLGaNpR533QgRCWGBeowBX8TiYls22EG2zr1VMg&oe=62807BE7",
     25,
     45,
     5,
  ),
  Mall(
    'Siam Center',
     '979 Rama 1 Road, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production52/d94/61eaa275-96db-4416-a746-dd028e558d5b.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     13.746560678014562,  
     100.53263820325492,
     "https://pmcu.co.th/wp-content/uploads/2021/01/map-siam-210108.jpg",
     78,
     110,
     6,
  ),
  Mall(
    'Terminal 21',
     'Sukhumvit Road, Khlong Toei, Watthana, Bangkok 10110, Thailand',
     'https://a.cdn-hotels.com/gdcs/production122/d0/fbe52580-c6e9-474f-bdd5-6f1baa4b4cb5.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     13.739856445643877,  
     100.5601146249063,
     "https://3.bp.blogspot.com/-3B66P9Xt9iI/WGCMg8hVYtI/AAAAAAACmjo/6s-gr_alzygtf2n4gjy1H-Opg_T9FlJ1wCLcB/s1600/TERMINAL%2B21-2F.jpg",
     45,
     65,
     7,
  ),
  Mall(
    'Gaysorn Village',
     '999 Ploenchit Rd, Lumphini, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production6/d844/6f5cf3c9-e5c7-45e9-a57c-8a2f19c88526.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     13.745300735670899,
     100.54081028456308,
     "https://images.adsttc.com/media/images/5e1c/731e/3312/fd58/9c00/045d/newsletter/2F_floorplan_bw.jpg?1578922775",
     28,
     45,
     6,
  ),
  Mall(
     'Central Chidlom',
     '1027 Ploenchit Rd, Lumphini, Pathumwan, Bangkok 10330, Thailand',
     'https://a.cdn-hotels.com/gdcs/production126/d771/26666e42-02db-4b07-958c-0b45cd027330.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
     '10.00 am - 10.00 pm',
     13.744335752672708,  
     100.54430078271385,
     "https://backend.central.co.th/media/wysiwyg/store/central-chidlom/img-floor-plan-1.png",
     85,
     90,
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
