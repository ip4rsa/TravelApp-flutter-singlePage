class TravelModel {
  String name;
  String locaiton;
  String img;
  String distance;
  String temp;
  String rating;
  String description;
  String price;

  TravelModel({
    required this.name,
    required this.locaiton,
    required this.img,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
    name: "Shiraz",
    locaiton: "IR - Shiraz",
    img: "assets/img/shiraz.jpg",
    distance: "7 km",
    temp: "29 °c",
    rating: "5.0",
    description:
        'Shiraz is a city in south-central Iran, known for its literary history and many gardens. The marble Tomb of Hafez, honoring the revered poet, sits within its own garden. To the east, the Mausoleum of Saadi houses the 13th-century writer’s mosaic-tiled tomb and an underground pool. Shiraz is a gateway to Persepolis, the ruined 6th-century-B.C. capital to the northeast, with its immense gateways,',
    price: "1800",
  ),
  TravelModel(
    name: "Paris",
    locaiton: "london",
    img: "assets/img/paris.jpg",
    distance: "21 km",
    temp: "32 °c",
    rating: "4.5",
    description:
        'Paris, Frances capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré',
    price: "432",
  ),
  TravelModel(
    name: "Norway",
    locaiton: "norway",
    img: "assets/img/norway.jpg",
    distance: "32 km",
    temp: "15 °c",
    rating: "4.8",
    description:
        'Norway is a Scandinavian country encompassing mountains, glaciers and deep coastal fjords. Oslo, the capital, is a city of green spaces and museums. Preserved 9th-century Viking ships are displayed at Oslo’s Viking Ship Museum. Bergen, with colorful wooden houses, is the starting point for cruises to the dramatic Sognefjord. Norway is also known for fishing, hiking and skiing, notably at Lillehammer’s Olympic resort.',
    price: "1622",
  ),
  TravelModel(
    name: "Perspolis",
    locaiton: "IR - Shiraz",
    img: "assets/img/perspolis.jpg",
    distance: "14 km",
    temp: "31 °c",
    rating: "5.0",
    description:
        'Persepolis was the ceremonial capital of the Achaemenid Empire. It is situated in the plains of Marvdasht, encircled by southern Zagros mountains of the Iranian plateau. Modern day Shiraz is situated 60 km southwest of the ruins of Persepolis. The earliest remains of Persepolis date back to 515 BC.',
    price: "1999",
  ),
];
