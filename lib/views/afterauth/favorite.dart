import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelo/model/Favorite/favorite_model.dart';
import 'package:travelo/theme/color_pallete.dart';

List<FavoriteModel> favorites = [
  FavoriteModel(
      name: 'Coffee Shop',
      address:
          '123 Brew Street, Downtown, Cityville, Country XYZ, Postal Code 12345'),
  FavoriteModel(
      name: 'Book Store',
      address:
          '456 Read Avenue, Midtown, Cityville, Country XYZ, Postal Code 67890'),
  FavoriteModel(
      name: 'Pizza Place',
      address:
          '789 Slice Road, Uptown, Cityville, Country XYZ, Postal Code 54321'),
  FavoriteModel(
      name: 'Art Gallery',
      address:
          '1010 Paint Lane, Art District, Cityville, Country XYZ, Postal Code 98765'),
  FavoriteModel(
      name: 'Music Store',
      address:
          '1111 Note Street, Melody Town, Cityville, Country XYZ, Postal Code 19283'),
  FavoriteModel(
      name: 'Bistro',
      address:
          '1212 Flavor Avenue, Gourmet District, Cityville, Country XYZ, Postal Code 38475'),
  FavoriteModel(
      name: 'Library',
      address:
          '1313 Knowledge Street, Education Park, Cityville, Country XYZ, Postal Code 47586'),
  FavoriteModel(
      name: 'Gym',
      address:
          '1414 Strength Road, Fitness Hub, Cityville, Country XYZ, Postal Code 58697'),
  FavoriteModel(
      name: 'Museum',
      address:
          '1515 History Avenue, Heritage District, Cityville, Country XYZ, Postal Code 69708'),
  FavoriteModel(
      name: 'Theater',
      address:
          '1616 Drama Street, Entertainment Zone, Cityville, Country XYZ, Postal Code 70819'),
];

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                'Favourites',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(500),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(146, 235, 235, 176),
                        border: Border.all(
                          color: ColorPallete.secondaryDarkColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500),
                        ),
                        title: Text(
                          favorites[index].name,
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        subtitle: Text(favorites[index].address),
                        leading: Icon(Icons.favorite),
                        trailing: Icon(Icons.remove_circle),
                        onTap: () {},
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
