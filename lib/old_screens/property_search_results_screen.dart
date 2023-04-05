import 'package:flutter/material.dart';

import 'property_class.dart';

class PropertySearchResultsScreen extends StatefulWidget {
  final List<Property> properties;

  const PropertySearchResultsScreen({
    super.key,
    required this.properties,
    required String mainCriteria,
    required String subcategory,
    required String location,
  });

  @override
  State<PropertySearchResultsScreen> createState() =>
      _PropertySearchResultsScreenState();
}

class _PropertySearchResultsScreenState
    extends State<PropertySearchResultsScreen> {
  final TextEditingController _searchQueryController = TextEditingController();
  List<Property> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _filterSearchResults('');
  }

  void _filterSearchResults(String query) {
    List<Property> results = [];

    if (query.isNotEmpty) {
      results = widget.properties
          .where((property) =>
              property.name.toLowerCase().contains(query.toLowerCase()) ||
              property.description
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              property.location.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      results = widget.properties;
    }

    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
        controller: _searchQueryController,
        decoration: const InputDecoration(
          hintText: 'Search for properties',
          border: InputBorder.none,
        ),
        onChanged: (query) => _filterSearchResults(query),
      )
          // const Text('Search Results'),
          ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView.builder(
          itemCount: _searchResults.length,
          itemBuilder: (context, index) {
            Property property = _searchResults[index];
            return ListTile(
              title: Text(property.name),
              subtitle: Text(property.location),
              trailing: Text('\$${property.price}'),
            );
          },
        ),
      ),
    );
  }
}
