// ignore: file_names
import 'package:flutter/material.dart';
import 'property_search_results_screen.dart';



class PropertySearchScreen extends StatefulWidget {
  const PropertySearchScreen({super.key});

  @override
  State<PropertySearchScreen> createState() => _PropertySearchScreenState();
}

class _PropertySearchScreenState extends State<PropertySearchScreen> {
 
  String _selectedMainCriteria = 'All';
  String _selectedSubcategory = 'All';
  String _selectedLocation = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Search'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: _selectedMainCriteria,
              items: const [
                DropdownMenuItem(
                  value: 'All',
                  child: Text('All'),
                ),
                DropdownMenuItem(
                  value: 'Buy',
                  child: Text('Buy'),
                ),
                DropdownMenuItem(
                  value: 'Rent',
                  child: Text('Rent'),
                ),
                DropdownMenuItem(
                  value: 'Invest',
                  child: Text('Invest'),
                ),
                DropdownMenuItem(
                  value: 'Shared',
                  child: Text('Shared'),
                ),
                DropdownMenuItem(
                  value: 'ShortStay',
                  child: Text('ShortStay'),
                ),
              ],
              onChanged: (String? value) {
                setState(() {
                  _selectedMainCriteria = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _selectedSubcategory,
              items: const [
                DropdownMenuItem(
                  value: 'All',
                  child: Text('All'),
                ),
                DropdownMenuItem(
                  value: 'Residential',
                  child: Text('Residential'),
                ),
                DropdownMenuItem(
                  value: 'Commercial',
                  child: Text('Commercial'),
                ),
                DropdownMenuItem(
                  value: 'Land',
                  child: Text('Land'),
                ),
              ],
              onChanged: (String? value) {
                setState(() {
                  _selectedSubcategory = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _selectedLocation,
              items: const [
                DropdownMenuItem(
                  value: 'All',
                  child: Text('All'),
                ),
                DropdownMenuItem(
                  value: 'Accra',
                  child: Text('Accra'),
                ),
                DropdownMenuItem(
                  value: 'Kumasi',
                  child: Text('Kumasi'),
                ),
                DropdownMenuItem(
                  value: 'Takoradi',
                  child: Text('Takoradi'),
                ),
              ],
              onChanged: (String? value) {
                setState(() {
                  _selectedLocation = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text('Search'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertySearchResultsScreen(properties: const [],
                      mainCriteria: _selectedMainCriteria,
                      subcategory: _selectedSubcategory,
                      location: _selectedLocation,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}