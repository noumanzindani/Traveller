import 'package:traveller/model/trip.dart';
import 'package:traveller/view/detailview.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

class Triplist extends StatefulWidget {
  const Triplist({super.key});

  @override
  State<Triplist> createState() => _TriplistState();
}

class _TriplistState extends State<Triplist> {
  final List<Widget> _tripTile = [];
  final GlobalKey _listkey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addTrip();
  }

  void _addTrip() {
    List<Trip> _trip = [
      Trip(
        id: Uuid().v4(),
        title: "Maldives",
        price: "1200",
        details:
            "The Maldives, one of the best tourist places in the world, is famous for its crystalline blue waters, swinging palm trees and glittering white sand. The Maldives consists of an archipelago of 1,192 coral islands. Only a few islands are inhabited. With pleasant weather throughout the year, Maldives is an idyllic beach getaway. Located to the south of Sri Lanka, it is apt for an adventure, honeymoon or leisure holiday. The sea covers 99% of the Maldives where you can see beautiful fishes and corals. The Maldives, with over 60 dive sites across the islands, is ranked among the best diving destinations in the world. Male, is the commercial and financial capital and its airport is well-connected with international airports. One can take ferry boats or sea planes from the capital to travel to other islands in the Maldives. With its pristine beaches, palm-fringed islands and marine life, the Maldives fascinates every tourist.",
        image: "assets/images/maldive.jpg",
        days: "5 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "London",
        price: "5200",
        details:
            "London, the capital of England, is the most visited city in Europe. London, one of the best places in the world, is home to the royal family. One of the most diverse cities in the world, with a rich history and culture, London has several tourist attractions, museums, parks, cultural exhibits and adventures. Worth visiting are Buckingham Palace, the Westminster Abbey, St Paul’s Cathedral and the London Eye. Other attractions include Warner Bros Studio Tour London – The Making of Harry Potter, Big Ben and Madame Tussauds. An absolute must-visit for all history buffs is the London Dungeon, an exhibit of London’s prisons. For artistic inspiration, visit The National Gallery.",
        image: "assets/images/15-worlds-best-places-to-visit-05.jpg",
        days: "7 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Paris",
        price: "2200",
        details:
            "Paris, the capital of France, is considered the most romantic destination in the world and one of the best places to visit. Paris offers historical monuments, vintage palaces, art museums, cathedrals, landscaped gardens and plenty of shopping areas. The Eiffel Tower, the most-visited tourist attraction in the world, stands at a staggering height of over 300 metres. One of the world’s most photographed tourist attractions, the Eiffel Tower is a sight to behold during the day and at night, when illuminated. The city is also known for its roadside and terrace cafés. The world’s most visited museum, the Louvre has a collection of more than one million objects, including famous artworks like Leonardo da Vinci’s Mona Lisa and Michelangelo’s Dying Slave. Notre Dame is a famous Roman Catholic cathedral; one of the top places to visit in Paris. The Gothic architecture, sculptures and carvings are worth the visit. The Arc de Triomphe, honouring those who fought in the French Revolution and the Napoleonic Wars, is built in neoclassical architectural style, a tradition of sculpting from the early 19th century. The Seine River cruise is a must for every tourist to enjoy the highlights of Paris  the Louvre, the Eiffel Tower, the Muse d’Orsay and Notre Dame Cathedral.",
        image: "assets/images/paris.jpg",
        days: "3 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Iceland",
        price: "200",
        details:
            "Iceland, the island of fire and ice, is one of the world’s best tourist places for both, tourists pursuing excitement,a s well as nature lovers. From watching the northern lights to taking a plunge in a geothermal pool surrounded by volcanic landscapes, Iceland’s natural environment is gorgeous. With glaciers, geysers and wildlife-watching opportunities, Iceland is one of the must-visit places in the world. Due to its location atop the junction of the North American and Eurasian tectonic plates, it has a lot of geothermal activity. There are various places for whale watching throughout the country.",
        image: "assets/images/Iceland.jpg",
        days: "6 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "New York",
        price: "1200",
        details:
            "New York City, USA is a world-famous tourist place, a cultural hub, a shopping paradise, a haven for artists and a culinary hotspot. Worth visiting are the Statue of Liberty (305 ft tall), the Empire State Building, Times Square, Brooklyn Bridge and various museums. The American Museum of Natural History features exhibits from dinosaur skeletons to historical human artefacts. Do visit Central Park, which spans over 800 acres and is skirted by skyscrapers and enjoy delicious candies at Hershey’s Chocolate World. Many of the best places to visit in New York are within a short distacnce of each other at walking distance or a short ride away. New York provides several opportunities to see the city from above. Visit the Top of the Rock in Rockefeller Plaza (70 storeys), One World Observatory (94 storeys) or the Empire State Building (102 storeys). RiseNY is an immersive, interactive experience for a tourist to view New York City virtually while suspended 30 ft in the air.",
        image: "assets/images/New York.jpg",
        days: "11 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Rome",
        price: "4200",
        details:
            "Rome is one of the best tourist places in the world to visit due to its archaeological and art treasures, its beautiful panoramic views and its magnificent ‘villas’ (parks). It has some world-famous places to visit such as the Colosseum and St Peter’s Basilica. The Colosseum, inaugurated in 80 AD, is the largest amphitheatre built during the Roman Empire. It hosted gladiator fights, executions and animal hunts. Trevi Fountain is one of Italy’s most famous places, designed by Nicola Salvi at the junction of three streets. Villa Borghese is a popular landscape garden in Rome, located on Pincian Hill, close to the Spanish Steps and Piazza del Popolo. Covering more than 80 hectares, it has a small lake with temple ruins, museums (Galleria Borghese) and other attractions. Pantheon is a temple for Roman Gods built in 126 AD, which comprises a portico with Corinthian columns and the oculus or the concrete dome with a central opening. Founded by Pope Julius II in the 6th century, the marvellous Vatican Museums are important tourist places in Rome for medieval art and sculptures. The exquisitely-decorated, famous Sistine Chapel ceiling and",
        image: "assets/images/Rome.jpg",
        days: "2 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Maldives",
        price: "5200",
        details:
            "The Maldives, one of the best tourist places in the world, is famous for its crystalline blue waters, swinging palm trees and glittering white sand. The Maldives consists of an archipelago of 1,192 coral islands. Only a few islands are inhabited. With pleasant weather throughout the year, Maldives is an idyllic beach getaway. Located to the south of Sri Lanka, it is apt for an adventure, honeymoon or leisure holiday. The sea covers 99% of the Maldives where you can see beautiful fishes and corals. The Maldives, with over 60 dive sites across the islands, is ranked among the best diving destinations in the world. Male, is the commercial and financial capital and its airport is well-connected with international airports. One can take ferry boats or sea planes from the capital to travel to other islands in the Maldives. With its pristine beaches, palm-fringed islands and marine life, the Maldives fascinates every tourist.",
        image: "assets/images/maldive.jpg",
        days: "7 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "London",
        price: "1200",
        details:
            "London, the capital of England, is the most visited city in Europe. London, one of the best places in the world, is home to the royal family. One of the most diverse cities in the world, with a rich history and culture, London has several tourist attractions, museums, parks, cultural exhibits and adventures. Worth visiting are Buckingham Palace, the Westminster Abbey, St Paul’s Cathedral and the London Eye. Other attractions include Warner Bros Studio Tour London – The Making of Harry Potter, Big Ben and Madame Tussauds. An absolute must-visit for all history buffs is the London Dungeon, an exhibit of London’s prisons. For artistic inspiration, visit The National Gallery.",
        image: "assets/images/15-worlds-best-places-to-visit-05.jpg",
        days: "23 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Paris",
        price: "3200",
        details:
            "Paris, the capital of France, is considered the most romantic destination in the world and one of the best places to visit. Paris offers historical monuments, vintage palaces, art museums, cathedrals, landscaped gardens and plenty of shopping areas. The Eiffel Tower, the most-visited tourist attraction in the world, stands at a staggering height of over 300 metres. One of the world’s most photographed tourist attractions, the Eiffel Tower is a sight to behold during the day and at night, when illuminated. The city is also known for its roadside and terrace cafés. The world’s most visited museum, the Louvre has a collection of more than one million objects, including famous artworks like Leonardo da Vinci’s Mona Lisa and Michelangelo’s Dying Slave. Notre Dame is a famous Roman Catholic cathedral; one of the top places to visit in Paris. The Gothic architecture, sculptures and carvings are worth the visit. The Arc de Triomphe, honouring those who fought in the French Revolution and the Napoleonic Wars, is built in neoclassical architectural style, a tradition of sculpting from the early 19th century. The Seine River cruise is a must for every tourist to enjoy the highlights of Paris  the Louvre, the Eiffel Tower, the Muse d’Orsay and Notre Dame Cathedral.",
        image: "assets/images/paris.jpg",
        days: "35 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Iceland",
        price: "2500",
        details:
            "Iceland, the island of fire and ice, is one of the world’s best tourist places for both, tourists pursuing excitement,a s well as nature lovers. From watching the northern lights to taking a plunge in a geothermal pool surrounded by volcanic landscapes, Iceland’s natural environment is gorgeous. With glaciers, geysers and wildlife-watching opportunities, Iceland is one of the must-visit places in the world. Due to its location atop the junction of the North American and Eurasian tectonic plates, it has a lot of geothermal activity. There are various places for whale watching throughout the country.",
        image: "assets/images/Iceland.jpg",
        days: "23 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "New York",
        price: "1200",
        details:
            "New York City, USA is a world-famous tourist place, a cultural hub, a shopping paradise, a haven for artists and a culinary hotspot. Worth visiting are the Statue of Liberty (305 ft tall), the Empire State Building, Times Square, Brooklyn Bridge and various museums. The American Museum of Natural History features exhibits from dinosaur skeletons to historical human artefacts. Do visit Central Park, which spans over 800 acres and is skirted by skyscrapers and enjoy delicious candies at Hershey’s Chocolate World. Many of the best places to visit in New York are within a short distacnce of each other at walking distance or a short ride away. New York provides several opportunities to see the city from above. Visit the Top of the Rock in Rockefeller Plaza (70 storeys), One World Observatory (94 storeys) or the Empire State Building (102 storeys). RiseNY is an immersive, interactive experience for a tourist to view New York City virtually while suspended 30 ft in the air.",
        image: "assets/images/New York.jpg",
        days: "4 Days",
      ),
      Trip(
        id: Uuid().v4(),
        title: "Rome",
        price: "1243",
        details:
            "Rome is one of the best tourist places in the world to visit due to its archaeological and art treasures, its beautiful panoramic views and its magnificent ‘villas’ (parks). It has some world-famous places to visit such as the Colosseum and St Peter’s Basilica. The Colosseum, inaugurated in 80 AD, is the largest amphitheatre built during the Roman Empire. It hosted gladiator fights, executions and animal hunts. Trevi Fountain is one of Italy’s most famous places, designed by Nicola Salvi at the junction of three streets. Villa Borghese is a popular landscape garden in Rome, located on Pincian Hill, close to the Spanish Steps and Piazza del Popolo. Covering more than 80 hectares, it has a small lake with temple ruins, museums (Galleria Borghese) and other attractions. Pantheon is a temple for Roman Gods built in 126 AD, which comprises a portico with Corinthian columns and the oculus or the concrete dome with a central opening. Founded by Pope Julius II in the 6th century, the marvellous Vatican Museums are important tourist places in Rome for medieval art and sculptures. The exquisitely-decorated, famous Sistine Chapel ceiling and",
        image: "assets/images/Rome.jpg",
        days: "32 Days",
      ),
    ];

    _trip.forEach((Trip trip) {
      _tripTile.add(_buildTile(trip));
    });
  }

  Widget _buildTile(Trip trip) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        tileColor: Colors.blue[900],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detailview(trip: trip)),
          );
        },
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              trip.days,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            Text(
              trip.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),

        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            trip.image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        trailing:
            trip.price != 0
                ? Text(
                  "\$${trip.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                  ),
                )
                : const SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: _listkey,
      itemCount: _tripTile.length,
      itemBuilder: (context, index) {
        return _tripTile[index];
      },
    );
  }
}
