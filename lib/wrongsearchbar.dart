

// class CustomSearchDelegate extends SearchDelegate {
//   List<String> searchTerm = [
//     'Salad', 
//     'Sandwich', 
//     'Wrap', 
//     'Sushi', 
//     'Fruit Salad', 
//     'Yogurt', 
//     'Ice Cream', 
//     'Gelato', 
//     'Sorbet', 
//     'Popsicle', 
//     'Smoothie', 
//     'Milkshake', 
//     'Iced Coffee',     
//     'Iced Tea',     
//     'Lemonade', 
//     'Fruit Juice', 
//     'Sparkling Water', 
//     'Coconut Water', 
//     'Sports Drink', 
//     'Watermelon', 
//     'Cantaloupe', 
//     'Strawberries', 
//     'Blueberries', 

//   ];

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       )

//     ];
//     // TODO: implement buildActions
    
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(onPressed: () {
//       close(context, null);

//     }, 
//     icon: const Icon(Icons.arrow_back));
    
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var food in searchTerm) {
//       if (food.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(food);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),

//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var food in searchTerm) {
//       if (food.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(food);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),

//         );
//       },
//     );

//   }


// }


