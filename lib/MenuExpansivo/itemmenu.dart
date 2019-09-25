class Item {
  
  String expandedValue;
  String headerValue;
  bool isExpanded;
  
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  List<Item> generateItems(int numberOfItems){
    return List.generate(numberOfItems, (int index){
      return Item(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index',
      );
    });
  }

}