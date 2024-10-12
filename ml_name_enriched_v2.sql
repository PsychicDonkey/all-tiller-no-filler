 SELECT 
 *
  ,CASE 
    WHEN cluster IN ('Deposit','Discount') THEN 'Deposit & Discount'
    WHEN cluster IN ('1', 'Uncategorised') THEN 'Uncategorised'
    WHEN cluster = 'General Foodstuffs' THEN 'Other Foodstuffs'
    WHEN cluster IN ('Kitchenware','Flowers','Plants','Tobacco','Cookware','Entertainment') THEN 'Non-Food Items'
    WHEN cluster IN ('Wine','Beer','Cocktails','Cocktail','Spirits','Cider','Ciders','Whiskey','Sparkling Wine','Liquor' ) THEN 'Alcoholic Drinks'
    WHEN cluster IN ('Coffee','Tea','Hot Drinks') THEN 'Hot Drinks'
    WHEN cluster IN ('Beverages','Mineral Water','Fruit Juice','Soft Drinks','Coca-Cola') THEN 'Non-alcoholic Beverages'
    WHEN cluster IN ('Starter/Main/Dessert Combo','Tasting Menus','Boards','Set Menu') THEN 'Set Menus and Tasting Menus'
    WHEN cluster IN ('Single Meals','Dish of the Day','Take Aways','Breakfast Food','Childrens Menu') THEN 'Single Meals'
    WHEN cluster IN ('Chicken','Meat','Seafood','Burgers','Egg Dishes') THEN 'Meat Dishes'
    WHEN cluster IN ('Vegetables','Truffle Dishes','Salad' ) THEN 'Vegetarian Dishes'
    WHEN cluster IN ('Tapas','Cheese','Foie Gras','Goat Cheese','Soup') THEN 'Starter & Tapas'
    WHEN cluster IN ('Pasta','Ravioli','Italian Food') THEN 'Italian Food'
    WHEN cluster IN ('Indian Food','Curry') THEN 'Indian Food'
    WHEN cluster IN ('Bakery','Tarts','Sandwiches') THEN 'Pastries and Bread'
    WHEN cluster IN ('Dessert','Desserts','Ice-Cream','Cake','Fruit') THEN 'Desserts and Sweets'
  END AS category
 FROM `aqueous-tesla-423708-b1.tiller.ML_name_enriched`
 
