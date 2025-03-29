class PLayer {
  final String id;
  final String name;
  final String phone;
  final String tShirtNumber;
  final String teamName;
  final String image;

  PLayer(
      {required this.id,
      required this.name,
      required this.phone,
      required this.tShirtNumber,
      required this.teamName,
      required this.image});
}

List<PLayer> players = [
  // Team 1: Los Angeles Lakers
  PLayer(
      id: "1",
      name: "LeBron James",
      phone: "+1 555-1010",
      tShirtNumber: "23",
      teamName: "Los Angeles Lakers",
      image:
          'https://ichef.bbci.co.uk/ace/standard/1008/cpsprodpb/cdbd/live/2df7b750-0adb-11f0-8a9e-8585b0f1521a.jpg'),
  PLayer(
      id: "2",
      name: "Anthony Davis",
      phone: "+1 555-1111",
      tShirtNumber: "3",
      teamName: "Los Angeles Lakers",
      image:
          "https://www.reuters.com/resizer/v2/442NSJB7HFNZZNFOQYKE2HNNNY.jpg?auth=b31b5450dd1b4f8fe4975019b4dbf3a43ea56a44fef76c5993da8ada7c9c7fa8&width=6016&quality=80"),
  PLayer(
      id: "3",
      name: "D'Angelo Russell",
      phone: "+1 555-1212",
      tShirtNumber: "1",
      teamName: "Los Angeles Lakers",
      image:
          "https://www.usatoday.com/gcdn/presto/2019/07/01/USAT/af0cf7e3-c18d-4aac-8862-4760f700acf8-2019-06-30_DAngelo_Russell.jpg?crop=2792,1570,x543,y40&width=660&height=371&format=pjpg&auto=webp"),
  PLayer(
      id: "4",
      name: "Austin Reaves",
      phone: "+1 555-1313",
      tShirtNumber: "15",
      teamName: "Los Angeles Lakers",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Austin_Reaves_%2851959765431%29_%28cropped%29.jpg/1200px-Austin_Reaves_%2851959765431%29_%28cropped%29.jpg"),
  PLayer(
      id: "5",
      name: "Rui Hachimura",
      phone: "+1 555-1414",
      tShirtNumber: "28",
      teamName: "Los Angeles Lakers",
      image:
          "https://preview.redd.it/rui-hachimura-14-pts-4-5-fg-4-4-3pt-4-reb-welcome-back-rui-v0-i2k0xx3b55re1.jpeg?auto=webp&s=66c70b42e8fb264f4eb80a32ddbd2b7176534c85"),
  PLayer(
      id: "6",
      name: "Jarred Vanderbilt",
      phone: "+1 555-1515",
      tShirtNumber: "2",
      teamName: "Los Angeles Lakers",
      image:
          "https://gray-keyc-prod.gtv-cdn.com/resizer/v2/PV63ANSRJFHZTPYVQY4IZ76224.jpg?auth=6d51f9c9352256b45af53cfa6e463e938b8d5539043a337475c5c99c65fd1c89&width=800&height=450&smart=true"),
  PLayer(
      id: "7",
      name: "Malik Beasley",
      phone: "+1 555-1616",
      tShirtNumber: "5",
      teamName: "Los Angeles Lakers",
      image:
          "https://cdn.vox-cdn.com/thumbor/y5Zr7wXVkSSD_pZIhrd1J-Md2AA=/0x0:3512x4286/1200x800/filters:focal(1642x907:2202x1467)/cdn.vox-cdn.com/uploads/chorus_image/image/73793008/2188796204.0.jpg"),

  // Team 2: Golden State Warriors
  PLayer(
      id: "8",
      name: "Stephen Curry",
      phone: "+1 555-2020",
      tShirtNumber: "30",
      teamName: "Golden State Warriors",
      image:
          "https://imageio.forbes.com/specials-images/imageserve/627bdaec36beab21cd23ad21/0x0.jpg?format=jpg&crop=1003,1002,x921,y73,safe&height=416&width=416&fit=bounds"),
  PLayer(
      id: "9",
      name: "Klay Thompson",
      phone: "+1 555-2121",
      tShirtNumber: "11",
      teamName: "Golden State Warriors",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/8/81/Klay_Thompson_%28cropped%29.jpg"),
  PLayer(
      id: "10",
      name: "Draymond Green",
      phone: "+1 555-2222",
      tShirtNumber: "23",
      teamName: "Golden State Warriors",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgjRtQNENLErs2nhzXXV5JiRd3aorArBuhHg&s"),
  PLayer(
      id: "11",
      name: "Andrew Wiggins",
      phone: "+1 555-2323",
      tShirtNumber: "22",
      teamName: "Golden State Warriors",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp8BepPBiJIqr6RuG8_aLa8Y3TdH7TZ7wz8w&s"),
  PLayer(
      id: "12",
      name: "Kevon Looney",
      phone: "+1 555-2424",
      tShirtNumber: "5",
      teamName: "Golden State Warriors",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUzxMXSlgEmn35LcGvx9FkBQ048W81BB8oSQ&s"),
  PLayer(
      id: "13",
      name: "Jordan Poole",
      phone: "+1 555-2525",
      tShirtNumber: "3",
      teamName: "Golden State Warriors",
      image: "https://s.hdnux.com/photos/01/30/50/12/23233174/6/rawImage.jpg"),
  PLayer(
      id: "14",
      name: "Donte DiVincenzo",
      phone: "+1 555-2626",
      tShirtNumber: "0",
      teamName: "Golden State Warriors",
      image:
          "https://cdn.nba.com/teams/uploads/sites/1610612750/2025/01/GettyImages-2195136355.jpg"),
];
