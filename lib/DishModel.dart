import 'package:flutter/cupertino.dart';

class DishModel extends ChangeNotifier{

  //Chinese Dishes
  List<String> chineseDishesname = [
    'Sweet and Sour Pork',
    'Kung Pao Chicken',
    'Spring Rolls',
    'Dumplings (Jiaozi)',
    'Fried Rice',
    'Peking Roasted Duck',
    'Hot and Sour Soup',
    'Chow Mein',
    'Mapo Tofu',
    'Sichuan Hotpot'
  ];
  List<String> chineseDishDescriptions = [
    'A popular dish made with crispy pork pieces coated in a tangy, sweet, and sour sauce, often served with pineapple and bell peppers.',
    'A spicy stir-fry dish made with chicken, peanuts, vegetables, and chili peppers, known for its bold, savory, and slightly sweet flavor.',
    'Crispy, deep-fried rolls filled with a mixture of vegetables, meat, or seafood, often served as an appetizer with dipping sauce.',
    'A traditional Chinese dish consisting of dough wrapped around a filling of minced meat, vegetables, or both, boiled, steamed, or fried.',
    'A flavorful dish made by stir-frying rice with a variety of ingredients like eggs, vegetables, and sometimes meat, seasoned with soy sauce.',
    'A famous Beijing dish known for its crispy skin and tender meat, often served with pancakes, cucumber, and hoisin sauce.',
    'A hearty soup with a balanced hot and sour flavor, made with ingredients like mushrooms, tofu, bamboo shoots, and chili paste.',
    'A stir-fried noodle dish mixed with vegetables, meat, or seafood, seasoned with soy sauce and a variety of spices.',
    'A spicy and numbing Sichuan dish made with tofu, ground pork, and a rich sauce of chili bean paste, fermented black beans, and Sichuan peppercorns.',
    'A communal dining experience where diners cook various ingredients like meat, seafood, and vegetables in a pot of boiling, spicy broth.'
  ];
  List<String> chineseDishCalories = [
    '320',  // Sweet and Sour Pork
    '290',  // Kung Pao Chicken
    '180',  // Spring Rolls
    '220',  // Dumplings
    '300',  // Fried Rice
    '340',  // Peking Roasted Duck
    '120',  // Hot and Sour Soup
    '240',  // Chow Mein
    '150',  // Mapo Tofu
    '400',  // Sichuan Hotpot
  ];
  List<String> chineseDishTime = [
    '30 minutes',  // Sweet and Sour Pork
    '25 minutes',  // Kung Pao Chicken
    '20 minutes',  // Spring Rolls
    '40 minutes',  // Dumplings (Jiaozi)
    '15 minutes',  // Fried Rice
    '90 minutes',  // Peking Roasted Duck
    '15 minutes',  // Hot and Sour Soup
    '25 minutes',  // Chow Mein
    '30 minutes',  // Mapo Tofu
    '60 minutes'   // Sichuan Hotpot
  ];
  List<String> chineseDishFlavor = [
    'Tangy',  // Sweet and Sour Pork
    'Spicy',           // Kung Pao Chicken
    'Savory',          // Spring Rolls
    'Savory',          // Dumplings (Jiaozi)
    'Savory',          // Fried Rice
    'Savory',          // Peking Roasted Duck
    'Zesty',    // Hot and Sour Soup
    'Savory',          // Chow Mein
    'Spicy',           // Mapo Tofu
    'Spicy'            // Sichuan Hotpot
  ];
  List<String> chineseDishesIngredients = [
    // Sweet and Sour Pork
    '1. Pork\n2. Bell Peppers\n3. Pineapple\n4. Onion\n5. Vinegar\n6. Sugar\n7. Soy Sauce\n8. Cornstarch\n9. Garlic\n10. Ginger',

    // Kung Pao Chicken
    '1. Chicken\n2. Peanuts\n3. Bell Peppers\n4. Dried Chilies\n5. Garlic\n6. Ginger\n7. Soy Sauce\n8. Vinegar\n9. Sugar\n10. Sichuan Peppercorns',

    // Spring Rolls
    '1. Cabbage\n2. Carrots\n3. Mushrooms\n4. Garlic\n5. Ginger\n6. Soy Sauce\n7. Spring Roll Wrappers\n8. Oil for Frying',

    // Dumplings (Jiaozi)
    '1. Ground Pork or Beef\n2. Cabbage\n3. Green Onion\n4. Garlic\n5. Ginger\n6. Soy Sauce\n7. Sesame Oil\n8. Dumpling Wrappers',

    // Fried Rice
    '1. Rice\n2. Eggs\n3. Peas\n4. Carrots\n5. Green Onion\n6. Soy Sauce\n7. Garlic\n8. Ginger\n9. Sesame Oil\n10. Shrimp or Chicken (optional)',

    // Peking Roasted Duck
    '1. Duck\n2. Hoisin Sauce\n3. Scallions\n4. Cucumbers\n5. Chinese Pancakes\n6. Soy Sauce\n7. Five-Spice Powder',

    // Hot and Sour Soup
    '1. Pork\n2. Tofu\n3. Mushrooms\n4. Bamboo Shoots\n5. Egg\n6. Vinegar\n7. Soy Sauce\n8. White Pepper\n9. Chili Oil\n10. Chicken Broth',

    // Chow Mein
    '1. Egg Noodles\n2. Cabbage\n3. Carrots\n4. Bell Peppers\n5. Soy Sauce\n6. Garlic\n7. Ginger\n8. Chicken or Beef\n9. Sesame Oil',

    // Mapo Tofu
    '1. Tofu\n2. Ground Pork\n3. Doubanjiang (Chili Bean Paste)\n4. Sichuan Peppercorns\n5. Garlic\n6. Ginger\n7. Green Onion\n8. Soy Sauce',

    // Sichuan Hotpot
    '1. Beef or Lamb\n2. Tofu\n3. Mushrooms\n4. Vegetables (Cabbage, Spinach)\n5. Dried Chilies\n6. Sichuan Peppercorns\n7. Broth\n8. Garlic\n9. Ginger'
  ];
  List<String> chineseDishesInstructions = [
    // Prepared Pork
    '1. Cut pork into scaled down pieces and coat with cornstarch.\n\n2. Heat oil in a container and sear the pork pieces until brilliant brown and firm. Eliminate and deplete on paper towels.\n\n3. In another skillet, pan sear chime peppers, pineapple, and onion until tender.\n\n4. Add a combination of vinegar, sugar, and soy sauce to the skillet and cook until it thickens.\n\n5. Throw the broiled pork pieces in the sauce blend and serve hot.',

    // Kung Pao Chicken
    '1. Cut chicken into little pieces and marinate with soy sauce and cornstarch.\n\n2. Heat oil in a container and sautéed food the chicken until cooked through. Eliminate and set aside.\n\n3. In a similar container, pan sear dried chilies, garlic, and ginger until fragrant.\n\n4. Add ringer peppers and peanuts, then mix in a combination of soy sauce, vinegar, and sugar.\n\n5. Return the chicken to the skillet and throw to cover with the sauce. Serve hot.',

    // Spring Rolls
    '1. Set up the filling by sautéing cabbage, carrots, and mushrooms with garlic and ginger.\n\n2. Season with soy sauce and let cool.\n\n3. Place a limited quantity of filling onto each spring roll covering and roll firmly, fixing the edges with a touch of water.\n\n4. Heat oil in a dish and sear the spring rolls until firm and brilliant brown.\n\n5. Serve hot with plunging sauce.',

    // Dumplings (Jiaozi)
    '1. Blend ground pork or meat in with cleaved cabbage, green onion, garlic, and ginger. Season with soy sauce and sesame oil.\n\n2. Place a modest quantity of filling in the focal point of every dumpling covering and overlap to seal.\n\n3. Steam or heat up the dumplings until cooked through.\n\n4. Present with soy sauce or a plunging sauce of your decision.',

    // Seared Rice
    '1. Cook rice and let it cool. For best outcomes, utilize day-old rice.\n\n2. Heat oil in a container and sautéed food eggs until scrambled.\n\n3. Add peas, carrots, and green onion to the dish and sautéed food until tender.\n\n4. Add the rice and soy sauce, and sautéed food until all around joined and warmed through.\n\n5. Alternatively, add shrimp or chicken and cook until warmed through. Serve hot.',

    // Peking Simmered Duck
    '1. Marinate the duck with hoisin sauce, soy sauce, and five-zest powder for a few hours or overnight.\n\n2. Preheat your broiler and dish the duck until the skin is fresh and the meat is tender.\n\n3. Cut the duck and present with meagerly cut scallions, cucumbers, and Chinese pancakes.\n\n4. Sprinkle with extra hoisin sauce whenever wanted.',

    // Hot and Harsh Soup
    '1. In a pot, heat oil and sautéed food pork, tofu, mushrooms, and bamboo shoots until cooked.\n\n2. Add chicken stock and bring to a boil.\n\n3. Mix in vinegar, soy sauce, white pepper, and bean stew oil to taste.\n\n4. Gradually pour in beaten egg while blending to make egg ribbons.\n\n5. Thicken with cornstarch slurry whenever wanted and serve hot.',

    // Chow Mein
    '1. Cook egg noodles as per bundle guidelines and drain.\n\n2. Heat oil in a container and sautéed food cut chicken or hamburger until cooked.\n\n3. Add cabbage, carrots, and ringer peppers and sautéed food until tender.\n\n4. Add the cooked noodles and soy sauce, and throw to combine.\n\n5. Serve hot with extra soy sauce whenever wanted.',

    // Mapo Tofu
    '1. Pan sear ground pork in a dish until browned.\n\n2. Add Doubanjiang (stew bean glue), Sichuan peppercorns, garlic, and ginger, and cook until fragrant.\n\n3. Add cubed tofu and mix delicately to cover with the sauce.\n\n4. Add soy sauce and cook until the tofu is warmed through and the flavors meld.\n\n5. Decorate with hacked green onion and serve hot.',

    // Sichuan Hotpot
    '1. Set up a pot of stock and carry it to a boil.\n\n2. Organize cut hamburger or sheep, tofu, mushrooms, and vegetables on a platter.\n\n3. Cook the fixings in the hot stock until done.\n\n4. Present with plunging sauces and fixings of your decision.'
  ];
  List<String>chineseDishesImages = ['assets/Images/ChineseDishes/1.png','assets/Images/ChineseDishes/2.png','assets/Images/ChineseDishes/3.png',
    'assets/Images/ChineseDishes/4.png',
    'assets/Images/ChineseDishes/5.png',
    'assets/Images/ChineseDishes/6.png',
    'assets/Images/ChineseDishes/7.png',
    'assets/Images/ChineseDishes/8.png',
    'assets/Images/ChineseDishes/9.png',
    'assets/Images/ChineseDishes/10.png',
  ];


  //American Dishes
  List<String> americanDishesname = [
    'Hamburger',
    'Buffalo Wings',
    'Macaroni and Cheese',
    'Barbecue Ribs',
    'Apple Pie',
    'New York Cheesecake',
    'Fried Chicken',
    'Clam Chowder',
    'Philly Cheesesteak',
    'Cornbread'
  ];
  List<String> americanDishDescriptions = [
    'A juicy beef patty grilled to perfection, often served with cheese, lettuce, tomato, and condiments on a soft bun.',
    'Deep-fried chicken wings coated in a tangy, spicy hot sauce, usually served with celery and blue cheese dressing.',
    'A creamy pasta dish made with elbow macaroni and a rich cheese sauce, baked until golden and bubbly.',
    'Tender pork ribs slow-cooked and slathered with a smoky, sweet, and tangy barbecue sauce.',
    'A classic dessert with a buttery, flaky crust filled with spiced apple slices, often served with vanilla ice cream.',
    'A rich, creamy dessert made with a dense, smooth cheese filling on a buttery graham cracker crust.',
    'Crispy, golden-brown chicken pieces seasoned with herbs and spices, usually served with sides like mashed potatoes.',
    'A thick, hearty soup made with clams, potatoes, onions, and celery in a creamy broth, often served in a bread bowl.',
    'A hoagie roll filled with thinly sliced beefsteak, melted cheese, onions, and bell peppers.',
    'A slightly sweet, dense bread made with cornmeal, often served as a side dish to barbecue or chili.'
  ];
  List<String> americanDishesCalories = [
    '354', // Hamburger
    '440', // Buffalo Wings
    '310', // Macaroni and Cheese
    '550', // Barbecue Ribs
    '295', // Apple Pie
    '420', // New York Cheesecake
    '320', // Fried Chicken
    '200', // Clam Chowder
    '450', // Philly Cheesesteak
    '180', // Cornbread
  ];
  List<String> americanDishesTime = [
    '30 minutes', // Hamburger
    '45 minutes', // Buffalo Wings
    '25 minutes', // Macaroni and Cheese
    '120 minutes', // Barbecue Ribs
    '60 minutes', // Apple Pie
    '90 minutes', // New York Cheesecake
    '60 minutes', // Fried Chicken
    '60 minutes', // Clam Chowder
    '30 minutes', // Philly Cheesesteak
    '45 minutes', // Cornbread
  ];
  List<String> americanDishesFlavor = [
    'Savory',        // Hamburger
    'Spicy',         // Buffalo Wings
    'Creamy',        // Macaroni and Cheese
    'Smoky',         // Barbecue Ribs
    'Sweet',         // Apple Pie
    'Rich',          // New York Cheesecake
    'Crispy',        // Fried Chicken
    'Salty',         // Clam Chowder
    'Hearty',        // Philly Cheesesteak
    'Sweet',         // Cornbread
  ];
  List<String> americanDishesIngredients = [
    // Hamburger
    '1. Ground Beef\n2. Burger Buns\n3. Lettuce\n4. Tomato\n5. Onion\n6. Pickles\n7. Cheese (optional)\n8. Ketchup\n9. Mustard\n10. Mayonnaise',

    // Buffalo Wings
    '1. Chicken Wings\n2. Hot Sauce\n3. Butter\n4. Garlic Powder\n5. Onion Powder\n6. Salt\n7. Pepper',

    // Macaroni and Cheese
    '1. Macaroni Pasta\n2. Cheddar Cheese\n3. Milk\n4. Butter\n5. Flour\n6. Mustard Powder\n7. Salt\n8. Pepper',

    // Barbecue Ribs
    '1. Pork Ribs\n2. Barbecue Sauce\n3. Brown Sugar\n4. Paprika\n5. Garlic Powder\n6. Onion Powder\n7. Salt\n8. Pepper',

    // Apple Pie
    '1. Apples\n2. Pie Crust\n3. Sugar\n4. Cinnamon\n5. Nutmeg\n6. Lemon Juice\n7. Butter',

    // New York Cheesecake
    '1. Cream Cheese\n2. Sugar\n3. Eggs\n4. Graham Cracker Crust\n5. Sour Cream\n6. Vanilla Extract',

    // Fried Chicken
    '1. Chicken\n2. Flour\n3. Buttermilk\n4. Eggs\n5. Garlic Powder\n6. Paprika\n7. Salt\n8. Pepper\n9. Oil for Frying',

    // Clam Chowder
    '1. Clams\n2. Potatoes\n3. Onion\n4. Celery\n5. Heavy Cream\n6. Butter\n7. Flour\n8. Bacon\n9. Garlic\n10. Bay Leaves',

    // Philly Cheesesteak
    '1. Ribeye Steak\n2. Hoagie Rolls\n3. Provolone Cheese\n4. Onions\n5. Bell Peppers\n6. Oil for Cooking\n7. Salt\n8. Pepper',

    // Cornbread
    '1. Cornmeal\n2. Flour\n3. Sugar\n4. Baking Powder\n5. Salt\n6. Milk\n7. Eggs\n8. Butter'
  ];
  List<String> americanDishesInstructions = [
    // Burger
    '1. Structure ground meat into patties and season with salt and pepper.\n\n2. Heat a barbecue or skillet and cook the patties until they arrive at your ideal degree of doneness.\n\n3. Toast the burger buns on the barbecue or in a toaster.\n\n4. Gather the burgers by putting the cooked patties on the buns and adding lettuce, tomato, cheddar, pickles, and some other wanted toppings.\n\n5. Present with fries or chips.',

    // Seared Chicken
    '1. Set up the chicken by marinating it in buttermilk and flavors for a few hours or overnight.\n\n2. Dig the marinated chicken in a combination of flour, salt, and pepper.\n\n3. Heat oil in a huge skillet or fryer to 350°F (175°C).\n\n4. Broil the chicken in groups until it is brilliant brown and cooked through.\n\n5. Channel on paper towels and serve hot.',

    // Macintosh and Cheddar
    '1. Cook macaroni as per bundle guidelines and drain.\n\n2. In a pot, soften margarine and race in flour to make a roux.\n\n3. Steadily add milk, whisking continually until the blend thickens.\n\n4. Mix in destroyed cheddar until softened and smooth.\n\n5. Join the cheddar sauce with the cooked macaroni.\n\n6. Move to a baking dish, top with additional cheddar, and heat until effervescent and brilliant brown.',

    // Fruity dessert
    '1. Set up the pie batter and line a pie dish with half of it.\n\n2. Blend cut apples in with sugar, cinnamon, and lemon juice.\n\n3. Fill the pie covering with the apple mixture.\n\n4. Cover with the excess mixture, creasing the edges to seal.\n\n5. Heat in a preheated stove at 425°F (220°C) until the covering is brilliant and the filling is bubbling.\n\n6. Let cool prior to serving.',

    // Chocolate Chip Treats
    '1. Preheat the stove to 350°F (175°C).\n\n2. Cream together spread and sugars until light and fluffy.\n\n3. Beat in eggs and vanilla extract.\n\n4. Consolidate flour, baking pop, and salt, and bit by bit add to the margarine mixture.\n\n5. Mix in chocolate chips.\n\n6. Drop spoonfuls of batter onto a baking sheet and prepare for 10-12 minutes until brilliant brown.\n\n7. Let cool prior to serving.',

    // Bar-b-que Ribs
    '1. Rub the ribs with a combination of flavors and allow them to marinate for a few hours or overnight.\n\n2. Preheat your barbecue or oven.\n\n3. Cook the ribs over backhanded heat, treating with grill sauce intermittently, until delicate and cooked through.\n\n4. Wrap up with a last brush of grill sauce and let rest before slicing.\n\n5. Present with extra grill sauce as an afterthought.',

    // Cheesecake
    '1. Set up the hull by blending squashed graham wafers in with dissolved spread and squeezing into the lower part of a springform pan.\n\n2. Beat cream cheddar until smooth, then add sugar, eggs, and vanilla extract.\n\n3. Pour the cream cheddar combination over the crust.\n\n4. Heat in a preheated broiler at 325°F (160°C) until set and marginally jiggly in the center.\n\n5. Chill in the fridge for a few hours prior to serving.',

    // Flapjacks
    '1. In a bowl, blend flour, baking powder, sugar, and salt.\n\n2. In another bowl, whisk together milk, eggs, and dissolved butter.\n\n3. Join the wet and dry fixings and blend until just blended.\n\n4. Heat an iron or non-stick skillet and pour hitter to shape pancakes.\n\n5. Cook until bubbles structure on a superficial level, then, at that point, flip and cook until brilliant brown.\n\n6. Present with maple syrup and margarine.',

    // Frank
    '1. Barbecue or bubble franks as per bundle instructions.\n\n2. Toast the buns if desired.\n\n3. Place the cooked franks in the buns and top with sauces like mustard, ketchup, relish, and onions.\n\n4. Present with a side of chips or fries.',

    // Meatloaf
    '1. Blend ground hamburger with breadcrumbs, eggs, onion, garlic, and seasonings.\n\n2. Structure into a portion shape and spot in a baking dish.\n\n3. Prepare in a preheated broiler at 350°F (175°C) until cooked through.\n\n4. Top with ketchup or grill sauce whenever wanted and prepare for 10 extra minutes.\n\n5. Let rest prior to cutting and serving.'
  ];
  List<String> americanDishesImages = ['assets/Images/AmericanDishes/1.png',
    'assets/Images/AmericanDishes/2.png',
    'assets/Images/AmericanDishes/3.png',
    'assets/Images/AmericanDishes/4.png',
    'assets/Images/AmericanDishes/5.png',
    'assets/Images/AmericanDishes/6.png',
    'assets/Images/AmericanDishes/7.png',
    'assets/Images/AmericanDishes/8.png',
    'assets/Images/AmericanDishes/9.png',
    'assets/Images/AmericanDishes/10.png',
  ];

  //Italian Dishes
  List<String> italianDishesname = [
    'Margherita Pizza',
    'Spaghetti Carbonara',
    'Lasagna',
    'Risotto',
    'Bruschetta',
    'Tiramisu',
    'Fettuccine Alfredo',
    'Panzanella',
    'Caprese Salad',
    'Gelato'
  ];
  List<String> italianDishDescriptions = [
    'A classic pizza topped with fresh tomatoes, mozzarella cheese, basil leaves, and a drizzle of olive oil, baked to perfection.',
    'A pasta dish made with spaghetti, eggs, cheese, pancetta, and pepper, creating a creamy and savory flavor.',
    'A layered pasta dish with sheets of lasagna noodles, meat sauce, béchamel, and cheese, baked until bubbly and golden.',
    'A creamy, slow-cooked rice dish made with broth, wine, and cheese, often enriched with mushrooms, seafood, or saffron.',
    'Grilled bread rubbed with garlic and topped with tomatoes, basil, and a drizzle of olive oil, often enjoyed as an appetizer.',
    'A coffee-flavored dessert made with layers of mascarpone cheese, coffee-soaked ladyfingers, cocoa powder, and a hint of liqueur.',
    'A creamy pasta dish made with fettuccine noodles tossed in a rich butter and Parmesan cheese sauce.',
    'A Tuscan bread salad made with chunks of soaked stale bread, tomatoes, onions, cucumbers, and basil, dressed with olive oil and vinegar.',
    'A refreshing salad made with slices of ripe tomatoes, fresh mozzarella cheese, basil, and a drizzle of balsamic reduction or olive oil.',
    'A traditional Italian-style ice cream known for its creamy texture and rich flavors, such as pistachio, chocolate, or vanilla.'
  ];
  List<String> italianDishesCalories = [
    '300',  // Margherita Pizza
    '420',  // Spaghetti Carbonara
    '350',  // Lasagna
    '400',  // Risotto
    '150',  // Bruschetta
    '250',  // Tiramisu
    '450',  // Fettuccine Alfredo
    '200',  // Panzanella
    '220',  // Caprese Salad
    '150',  // Gelato
  ];
  List<String> italianDishesTime = [
    '20 minutes',  // Margherita Pizza
    '30 minutes',  // Spaghetti Carbonara
    '90 minutes',  // Lasagna
    '45 minutes',  // Risotto
    '15 minutes',  // Bruschetta
    '25 minutes',  // Tiramisu
    '30 minutes',  // Fettuccine Alfredo
    '20 minutes',  // Panzanella
    '10 minutes',  // Caprese Salad
    '10 minutes',  // Gelato
  ];
  List<String> italianDishesFlavor = [
    'Savory',     // Margherita Pizza
    'Rich',       // Spaghetti Carbonara
    'Hearty',     // Lasagna
    'Creamy',     // Risotto
    'Tangy',      // Bruschetta
    'Sweet',      // Tiramisu
    'Creamy',     // Fettuccine Alfredo
    'Fresh',      // Panzanella
    'Fresh',      // Caprese Salad
    'Sweet',      // Gelato
  ];
  List<String> italianDishesIngredients = [
    // Margherita Pizza
    '1. Pizza Dough\n2. Tomato Sauce\n3. Mozzarella Cheese\n4. Fresh Basil\n5. Olive Oil\n6. Salt',

    // Spaghetti Carbonara
    '1. Spaghetti\n2. Eggs\n3. Pancetta or Bacon\n4. Parmesan Cheese\n5. Black Pepper\n6. Garlic',

    // Lasagna
    '1. Lasagna Noodles\n2. Ground Beef or Pork\n3. Tomato Sauce\n4. Ricotta Cheese\n5. Mozzarella Cheese\n6. Parmesan Cheese\n7. Egg\n8. Garlic\n9. Onion',

    // Risotto
    '1. Arborio Rice\n2. Chicken or Vegetable Broth\n3. Parmesan Cheese\n4. White Wine\n5. Onion\n6. Garlic\n7. Butter\n8. Olive Oil',

    // Bruschetta
    '1. Baguette\n2. Tomatoes\n3. Basil\n4. Garlic\n5. Olive Oil\n6. Salt\n7. Pepper',

    // Tiramisu
    '1. Ladyfingers\n2. Mascarpone Cheese\n3. Eggs\n4. Sugar\n5. Espresso\n6. Cocoa Powder\n7. Marsala Wine or Rum',

    // Fettuccine Alfredo
    '1. Fettuccine Pasta\n2. Heavy Cream\n3. Parmesan Cheese\n4. Butter\n5. Garlic\n6. Salt\n7. Pepper',

    // Panzanella
    '1. Stale Bread\n2. Tomatoes\n3. Cucumbers\n4. Red Onion\n5. Basil\n6. Olive Oil\n7. Red Wine Vinegar\n8. Salt\n9. Pepper',

    // Caprese Salad
    '1. Tomatoes\n2. Fresh Mozzarella Cheese\n3. Basil\n4. Olive Oil\n5. Balsamic Vinegar\n6. Salt\n7. Pepper',

    // Gelato
    '1. Milk\n2. Cream\n3. Sugar\n4. Egg Yolks\n5. Flavorings (e.g., Vanilla, Chocolate, Fruit Purees)'
  ];
  List<String> italianDishesInstructions = [
    // Spaghetti Carbonara
    '1. Cook spaghetti as indicated by bundle directions and drain.\n\n2. In a container, cook pancetta or bacon until crispy.\n\n3. In a bowl, whisk together eggs, ground Parmesan cheddar, and dark pepper.\n\n4. Join the hot pasta with the pancetta and eliminate from heat.\n\n5. Immediately mix in the egg combination, permitting the remaining intensity to make a rich sauce.\n\n6. Serve hot with extra cheddar and dark pepper.',

    // Margherita Pizza
    '1. Preheat the broiler and set up a pizza dough.\n\n2. Spread pureed tomatoes over the mixture, leaving a boundary for the crust.\n\n3. Add cuts of new mozzarella cheddar and basil leaves.\n\n4. Sprinkle with olive oil and prepare until the covering is brilliant and the cheddar is softened and bubbly.\n\n5. Serve hot with additional basil whenever wanted.',

    // Lasagna
    '1. Set up the meat sauce by cooking ground hamburger with onions, garlic, and tomato sauce.\n\n2. In a different bowl, blend ricotta cheddar with egg and herbs.\n\n3. Cook lasagna noodles as indicated by bundle instructions.\n\n4. In a baking dish, layer noodles, meat sauce, and cheddar combination, finishing with a layer of mozzarella cheese.\n\n5. Heat in a preheated stove until effervescent and brilliant brown.\n\n6. Let cool prior to serving.',

    // Fettuccine Alfredo
    '1. Cook fettuccine as per bundle directions and drain.\n\n2. In a dish, liquefy margarine and add weighty cream, cooking until thickened.\n\n3. Mix in ground Parmesan cheddar until dissolved and smooth.\n\n4. Throw the cooked fettuccine in the sauce until well coated.\n\n5. Serve hot with extra Parmesan cheddar and dark pepper.',

    // Caprese Salad
    '1. Cut new tomatoes and mozzarella cheese.\n\n2. Organize the cuts on a plate, exchanging with new basil leaves.\n\n3. Sprinkle with olive oil and balsamic vinegar.\n\n4. Season with salt and pepper to taste.\n\n5. Serve quickly as a reviving plate of mixed greens or tidbit.',

    // Tiramisu
    '1. Blend egg yolks in with sugar until creamy.\n\n2. Overlap in mascarpone cheddar and blend until smooth.\n\n3. Whip egg whites until firm pinnacles structure and overlap into the mascarpone mixture.\n\n4. Plunge ladyfingers in espresso and layer them in a dish.\n\n5. Spread a layer of mascarpone combination over the ladyfingers.\n\n6. Rehash the layers and wrap up with a tidying of cocoa powder.\n\n7. Chill in the fridge for a few hours prior to serving.',

    // Risotto
    '1. Sauté onions and garlic in margarine until translucent.\n\n2. Add Arborio rice and cook for a couple of moments until softly toasted.\n\n3. Continuously add chicken or vegetable stock, mixing continually until absorbed.\n\n4. Keep adding stock and mixing until the rice is smooth and cooked through.\n\n5. Mix in Parmesan cheddar and any extra fixings like mushrooms or shrimp.\n\n6. Serve hot with additional cheddar whenever wanted.',

    // Eggplant Parmesan
    '1. Cut eggplant into rounds and salt them to eliminate overabundance moisture.\n\n2. Dig the eggplant cuts in flour, dunk in beaten egg, and coat with breadcrumbs.\n\n3. Sear the eggplant cuts in oil until brilliant brown.\n\n4. Layer the broiled eggplant in a baking dish with marinara sauce and mozzarella cheese.\n\n5. Heat in a preheated broiler until the cheddar is liquefied and bubbly.\n\n6. Let cool prior to serving.',

    // Pesto Pasta
    '1. Cook pasta as indicated by bundle directions and drain.\n\n2. In a food processor, mix new basil, garlic, pine nuts, Parmesan cheddar, and olive oil to make pesto sauce.\n\n3. Throw the cooked pasta with the pesto sauce until well coated.\n\n4. Serve hot with extra Parmesan cheddar and pine nuts whenever wanted.',

    // Cannoli
    '1. Set up the cannoli dishes out by moving mixture, cutting into circles, and folding over cannoli forms.\n\n2. Broil the shells until fresh and brilliant, then, at that point, let cool.\n\n3. Load up with a combination of ricotta cheddar, powdered sugar, and vanilla extract.\n\n4. Dunk the closures in chocolate chips or hacked nuts if desired.\n\n5. Serve right away or chill until prepared to serve.'
  ];
  List<String>italianDishesImages = ['assets/Images/ItalianDishes/1.png',
    'assets/Images/ItalianDishes/2.png',
    'assets/Images/ItalianDishes/3.png',
    'assets/Images/ItalianDishes/4.png',
    'assets/Images/ItalianDishes/5.png',
    'assets/Images/ItalianDishes/6.png',
    'assets/Images/ItalianDishes/7.png',
    'assets/Images/ItalianDishes/8.png',
    'assets/Images/ItalianDishes/9.png',
    'assets/Images/ItalianDishes/10.png',];


  //Indian Dishes
  List<String> indianDishesname = [
    'Butter Chicken',
    'Biryani',
    'Paneer Tikka',
    'Samosa',
    'Masala Dosa',
    'Rogan Josh',
    'Palak Paneer',
    'Chole Bhature',
    'Tandoori Chicken',
    'Gulab Jamun'
  ];
  List<String> indianDishDescriptions = [
    'A rich, creamy dish made with marinated chicken pieces simmered in a buttery tomato-based sauce, flavored with spices.',
    'A fragrant rice dish cooked with aromatic spices, saffron, and a choice of meat or vegetables, often garnished with fried onions and nuts.',
    'Chunks of cottage cheese marinated in yogurt and spices, then grilled or baked until charred and smoky.',
    'A deep-fried pastry filled with spiced potatoes, peas, and sometimes meat, usually served with chutneys.',
    'A crispy, thin pancake made from fermented rice batter, filled with a spicy potato mixture and served with chutney and sambar.',
    'A slow-cooked lamb curry with a rich, aromatic sauce made from yogurt, spices, and browned onions.',
    'A vegetarian dish made with paneer cubes cooked in a creamy spinach gravy flavored with garlic and spices.',
    'Spicy chickpeas served with deep-fried, fluffy bread made from refined flour, often garnished with onions and green chilies.',
    'Marinated chicken pieces cooked in a tandoor (clay oven), giving it a smoky flavor and crispy texture.',
    'Soft, round dumplings made from milk solids, deep-fried, and soaked in rose-flavored sugar syrup.'
  ];
  List<String> indianDishesCalories = [
    '490',  // Butter Chicken
    '550',  // Biryani
    '320',  // Paneer Tikka
    '260',  // Samosa
    '300',  // Masala Dosa
    '450',  // Rogan Josh
    '340',  // Palak Paneer
    '450',  // Chole Bhature
    '400',  // Tandoori Chicken
    '150',  // Gulab Jamun
  ];
  List<String> indianDishesTime = [
    '60 minutes',   // Butter Chicken
    '90 minutes',   // Biryani
    '40 minutes',   // Paneer Tikka
    '30 minutes',   // Samosa
    '30 minutes',   // Masala Dosa
    '90 minutes',   // Rogan Josh
    '45 minutes',   // Palak Paneer
    '60 minutes',   // Chole Bhature
    '50 minutes',   // Tandoori Chicken
    '20 minutes',   // Gulab Jamun
  ];
  List<String> indianDishesFlavor = [
    'Rich',        // Butter Chicken
    'Spicy',       // Biryani
    'Spicy',       // Paneer Tikka
    'Savory',      // Samosa
    'Savory',      // Masala Dosa
    'Rich',        // Rogan Josh
    'Savory',      // Palak Paneer
    'Spicy',       // Chole Bhature
    'Smoky',       // Tandoori Chicken
    'Sweet',       // Gulab Jamun
  ];
  List<String> indianDishesIngredients = [
    // Butter Chicken
    '1. Chicken\n2. Butter\n3. Cream\n4. Tomato Sauce\n5. Garlic\n6. Ginger\n7. Onion\n8. Garam Masala\n9. Cumin\n10. Coriander\n11. Chili Powder\n12. Fenugreek Leaves',

    // Biryani
    '1. Basmati Rice\n2. Chicken or Lamb\n3. Yogurt\n4. Onions\n5. Garlic\n6. Ginger\n7. Biryani Masala\n8. Tomatoes\n9. Mint\n10. Coriander\n11. Saffron\n12. Ghee',

    // Paneer Tikka
    '1. Paneer\n2. Yogurt\n3. Red Chili Powder\n4. Garam Masala\n5. Turmeric\n6. Cumin\n7. Lemon Juice\n8. Garlic\n9. Ginger\n10. Bell Peppers\n11. Onions',

    // Samosa
    '1. Potatoes\n2. Peas\n3. Onions\n4. Cumin Seeds\n5. Coriander Seeds\n6. Garam Masala\n7. Red Chili Powder\n8. Turmeric\n9. Flour\n10. Oil for Frying',

    // Masala Dosa
    '1. Rice\n2. Urad Dal\n3. Fenugreek Seeds\n4. Potatoes\n5. Onions\n6. Mustard Seeds\n7. Curry Leaves\n8. Turmeric\n9. Chili Powder\n10. Ginger\n11. Green Chilies',

    // Rogan Josh
    '1. Lamb\n2. Yogurt\n3. Garlic\n4. Ginger\n5. Onion\n6. Rogan Josh Spice Mix\n7. Tomatoes\n8. Cinnamon\n9. Cardamom\n10. Cloves\n11. Bay Leaves',

    // Palak Paneer
    '1. Paneer\n2. Spinach\n3. Onion\n4. Garlic\n5. Ginger\n6. Tomatoes\n7. Garam Masala\n8. Cumin\n9. Coriander\n10. Green Chilies\n11. Cream',

    // Chole Bhature
    '1. Chickpeas\n2. Flour\n3. Yogurt\n4. Baking Powder\n5. Onion\n6. Tomatoes\n7. Garlic\n8. Ginger\n9. Chole Masala\n10. Coriander\n11. Cumin',

    // Tandoori Chicken
    '1. Chicken\n2. Yogurt\n3. Tandoori Masala\n4. Lemon Juice\n5. Garlic\n6. Ginger\n7. Cumin\n8. Coriander\n9. Paprika\n10. Turmeric\n11. Oil',

    // Gulab Jamun
    '1. Milk Powder\n2. Flour\n3. Ghee\n4. Sugar\n5. Water\n6. Cardamom\n7. Rose Water\n8. Saffron (optional)'
  ];
  List<String> indianDishesInstructions = [
    // Spread Chicken
    '1. Marinate chicken pieces in a combination of yogurt, lemon juice, and a mix of flavors including garam masala, cumin, and stew powder for no less than 1 hour.\n\n2. Heat spread in a container and cook the marinated chicken until seared and cooked through.\n\n3. In another dish, set up the sauce by sautéing onions, garlic, and ginger until brilliant brown.\n\n4. Add pureed tomatoes, extra flavors, and cook until the oil isolates from the sauce.\n\n5. Consolidate the cooked chicken with the sauce and stew until the chicken is delicate and the flavors meld.\n\n6. Mix in cream and cook for a couple of additional minutes until the sauce is rich and smooth. Present with naan or rice.',

    // Biryani
    '1. Cook basmati rice with a couple of flavors like cove leaves and cloves until its to some extent cooked (around 70%). Channel and set aside.\n\n2. In a huge dish, cook chicken or sheep with cut onions, garlic, ginger, and flavors until the meat is sautéed and to some extent cooked.\n\n3. Layer the to some extent cooked rice over the meat blend in a weighty lined pot.\n\n4. Add yogurt, mint, coriander, and saffron-mixed milk over the top layer of rice.\n\n5. Sprinkle with dissolved ghee and cover firmly. Cook on low intensity (dum) for 30-40 minutes until the rice and meat are completely cooked.\n\n6. Decorate with broiled onions and present with raita or yogurt.',

    // Paneer Tikka
    '1. 3D square paneer and marinate it in a combination of yogurt, red stew powder, garam masala, turmeric, and lemon juice. Allow it to marinate for no less than 1 hour.\n\n2. String the marinated paneer solid shapes onto sticks, substituting with chime peppers and onions.\n\n3. Barbecue the sticks or heat them in a broiler at a high temperature until the paneer is singed and cooked through.\n\n4. Serve the paneer tikka hot with mint chutney and lemon wedges for a starter or side dish.',

    // Samosa
    '1. Set up the filling by cooking bubbled and pureed potatoes with peas, cumin seeds, coriander seeds, garam masala, red bean stew powder, and turmeric in a pan.\n\n2. Carry out the mixture into dainty circles and slice them into half to make semi-circles.\n\n3. Structure a cone shape with every semi-circle and load up with the potato mixture.\n\n4. Seal the edges by squeezing them together to frame a three-sided shape.\n\n5. Profound fry the samosas in hot oil until brilliant brown and firm. Serve hot with tamarind or mint chutney.',

    // Masala Dosa
    '1. Set up the hitter by drenching rice and urad dal short-term, then, at that point, crushing into a smooth player. Age the player for 12-24 hours.\n\n2. Set up the filling by cooking potatoes, onions, mustard seeds, curry leaves, turmeric, and green chilies in a pan.\n\n3. Heat a frying pan and pour a ladleful of dosa player, spreading it thinly.\n\n4. Cook until the dosa is firm and brilliant brown. Place a portion of the potato filling in the middle and crease the dosa over it.\n\n5. Serve hot with coconut chutney and sambar.',

    // Rogan Josh
    '1. Earthy colored sheep pieces in a container with some oil. Eliminate and set aside.\n\n2. In a similar container, sauté onions, garlic, and ginger until golden.\n\n3. Add yogurt and Rogan Josh flavor blend, cooking until the oil isolates from the mixture.\n\n4. Return the sheep to the dish, add tomatoes, and cook until the sheep is delicate and completely cooked.\n\n5. Embellish with cinnamon, cardamom, cloves, and straight leaves. Serve hot with rice or naan.',

    // Palak Paneer
    '1. Whiten spinach leaves in bubbling water, then, at that point, puree them in a blender.\n\n2. Cook onions, garlic, and ginger in a dish with flavors until soft.\n\n3. Add the spinach puree to the dish and cook for a couple minutes.\n\n4. Add paneer shapes and stew until the paneer is warmed through.\n\n5. Mix in cream, change preparing, and present with naan or rice.',

    // Chole Bhature
    '1. Splash chickpeas short-term, then, at that point, cook them with onions, garlic, ginger, tomatoes, and flavors until tender.\n\n2. Set up the bhature batter by blending flour, yogurt, baking powder, and water. Allow it to rest for 2 hours.\n\n3. Carry out the batter into rounds and profound fry until puffed and brilliant brown.\n\n4. Serve the bhature with the fiery chickpea curry (chole).',

    // Baked Chicken
    '1. Marinate chicken pieces in a combination of yogurt, baked masala, lemon juice, garlic, ginger, and flavors for no less than 2 hours.\n\n2. Preheat the broiler to a high temperature or set up a grill.\n\n3. Heat or barbecue the marinated chicken until it is cooked through and has a roasted exterior.\n\n4. Serve hot with a side of naan or rice and a crush of lemon juice.',

    // Gulab Jamun
    '1. Blend milk powder, flour, and ghee into a smooth batter. Shape into little balls.\n\n2. Heat ghee in a container and broil the mixture balls until brilliant brown.\n\n3. Set up the sugar syrup with water, sugar, and cardamom, then, at that point, let it simmer.\n\n4. Absorb the seared balls the warm sugar syrup for something like 2 hours prior to serving.'
  ];
  List<String>indianDishesImages = ['assets/Images/IndianDishes/1.png',
    'assets/Images/IndianDishes/2.png',
    'assets/Images/IndianDishes/3.png',
    'assets/Images/IndianDishes/4.png',
    'assets/Images/IndianDishes/5.png',
    'assets/Images/IndianDishes/6.png',
    'assets/Images/IndianDishes/7.png',
    'assets/Images/IndianDishes/8.png',
    'assets/Images/IndianDishes/9.png',
    'assets/Images/IndianDishes/10.png',];

  List<String> getAllDishesByName() {
    List<String> allDishesName = [];
    allDishesName.addAll(chineseDishesname);
    allDishesName.addAll(americanDishesname);
    allDishesName.addAll(italianDishesname);
    allDishesName.addAll(indianDishesname);
    return allDishesName;
  }

  // Method to merge all dish descriptions
  List<String> getAllDishesByDescription() {
    List<String> allDishesDescription = [];
    allDishesDescription.addAll(chineseDishDescriptions);
    allDishesDescription.addAll(americanDishDescriptions);
    allDishesDescription.addAll(italianDishDescriptions);
    allDishesDescription.addAll(indianDishDescriptions);
    return allDishesDescription;
  }

  // Method to merge all dish calories
  List<String> getAllDishesByCalories() {
    List<String> allDishesCalories = [];
    allDishesCalories.addAll(chineseDishCalories);
    allDishesCalories.addAll(americanDishesCalories);
    allDishesCalories.addAll(italianDishesCalories);
    allDishesCalories.addAll(indianDishesCalories);
    return allDishesCalories;
  }

  // Method to merge all dish times
  List<String> getAllDishesByTime() {
    List<String> allDishesTime = [];
    allDishesTime.addAll(chineseDishTime);
    allDishesTime.addAll(americanDishesTime);
    allDishesTime.addAll(italianDishesTime);
    allDishesTime.addAll(indianDishesTime);
    return allDishesTime;
  }

  // Method to merge all dish flavours
  List<String> getAllDishesByFlavour() {
    List<String> allDishesFlavour = [];
    allDishesFlavour.addAll(chineseDishFlavor);
    allDishesFlavour.addAll(americanDishesFlavor);
    allDishesFlavour.addAll(italianDishesFlavor);
    allDishesFlavour.addAll(indianDishesFlavor);
    return allDishesFlavour;
  }

  // Method to merge all dish ingredients
  List<String> getAllDishesByIngredients() {
    List<String> allDishesIngredients = [];
    allDishesIngredients.addAll(chineseDishesIngredients);
    allDishesIngredients.addAll(americanDishesIngredients);
    allDishesIngredients.addAll(italianDishesIngredients);
    allDishesIngredients.addAll(indianDishesIngredients);
    return allDishesIngredients;
  }

  // Method to merge all dish instructions
  List<String> getAllDishesByInstructions() {
    List<String> allDishesInstructions = [];
    allDishesInstructions.addAll(chineseDishesInstructions);
    allDishesInstructions.addAll(americanDishesInstructions);
    allDishesInstructions.addAll(italianDishesInstructions);
    allDishesInstructions.addAll(indianDishesInstructions);
    return allDishesInstructions;
  }

  // Method to merge all dish images
  List<String> getAllDishesByImages() {
    List<String> allDishesImages = [];
    allDishesImages.addAll(chineseDishesImages);
    allDishesImages.addAll(americanDishesImages);
    allDishesImages.addAll(italianDishesImages);
    allDishesImages.addAll(indianDishesImages);
    return allDishesImages;
  }

  List<String> getAllDishes(){
    List<String> allDishes = [];
    allDishes.addAll(chineseDishesname);
    allDishes.addAll(americanDishesname);
    allDishes.addAll(italianDishesname);
    allDishes.addAll(indianDishesname);
    allDishes.addAll(chineseDishDescriptions);
    allDishes.addAll(americanDishDescriptions);
    allDishes.addAll(italianDishDescriptions);
    allDishes.addAll(indianDishDescriptions);
    allDishes.addAll(chineseDishCalories);
    allDishes.addAll(americanDishesCalories);
    allDishes.addAll(italianDishesCalories);
    allDishes.addAll(indianDishesCalories);
    return allDishes;
  }


}
