USE [CourseSalesDb]
GO

INSERT INTO [dbo].[Products]
           ([ProductCode]
           ,[ProductName]
           ,[ProductDescription]
           ,[Category]
           ,[UnitPrice]
           ,[IsActive])
     VALUES
           ('B-1','Chai','Black tea with a blend of cardamom, ginger, cloves and cinnamon','Beverages',18.00,1),
('CO-3','Syrup','Pure cane syrup','Condiments & Sauces',10.00,1),
('CO-4','Cajun Seasoning','Adds zingy new taste to meat, seafood, vegetables, eggs and more','Condiments & Sauces',22.00,1),
('O-5','Olive Oil','Extra virgin for smooth taste and versatility','Condiments & Sauces',21.35,1),
('JP-6','Boysenberry Spread','BoysenBerry berries. A delicious alternative topping for toast, pancakes and waffles','Condiments & Sauces',25.00,1),
('DFN-7','Dried Pears','A sweet treat for hikers and snackers','Dried Goods & Nuts',30.00,1),
('S-8','Curry Sauce','Thai style red curry sauce is a zesty blend of red chili puree, coconut milk, onions, garlic and ginger','Condiments & Sauces',40.00,1),
('DFN-14','Walnuts','Shelled, energy-dense and loaded with polyunsaturated good fats. Perfect baking and snacking','Dried Goods & Nuts',23.25,1),
('CFV-17','Fruit Cocktail','Diced peaches, pears, pineapple and sweet cherries in heavy syrup','Prepared Foods',39.00,1),
('BGM-19','Chocolate Biscuits Mix','A flaky, buttery, chocolatey twist on traditional biscuits','Baking Goods',9.20,1),
('BGM-21','Scones','The perfect accompaniment to coffee or proper tea','Baking Goods',10.00,1),
('B-34','Beer','Belgian-style, a flavorful, balanced beer with characteristics of hops, malt and fruity yeast','Beverages',14.00,1),
('CM-40','Crab Meat','Authentic Maryland Blue crab meat, packed by hand','Seafood & Meat',18.40,1),
('SO-41','Clam Chowder','New England style with a creamy base, with generous portions of clams and bacon','Prepared Foods',9.65,1),
('B-43','Coffee','Pre-ground medium roast is a full-flavored blend of 100% Arabica beans from Guatemala and Ethiopia','Beverages',46.00,1),
('CA-48','Chocolate','Smooth and satisfying, 72% cacao for an antioxidant boost','Snacks & Sweets',12.75,1),
('DFN-51','Dried Apples','Apple chips for lunchboxes and snacks are high in fiber and nutrients','Dried Goods & Nuts',53.00,1),
('G-52','Long Grain Rice','Premium white Basmati','Grains & Pasta',7.00,1),
('P-56','Gnocchi','Traditional Italian potato dumplings, fully-cooked; ready to heat and eat','Grains & Pasta',38.00,1),
('P-57','Ravioli','Tender pasta envelopes filled with ricotta cheese and spinach','Grains & Pasta',19.50,1),
('S-65','Hot Pepper Sauce','Hot stuff! Adds tastebud-searing warmth to any dish','Condiments & Sauces',21.05,1),
('S-66','Tomato Sauce','Delicately seasoned with salt, pepper and herbs','Condiments & Sauces',17.00,1),
('D-72','Mozzarella','Fresh, mild and cheesy; a staple of Italian cuisine','Prepared Foods',34.80,1),
('DFN-74','Almonds','Premium almonds from California''s Central Valley','Dried Goods & Nuts',10.00,1),
('CO-77','Mustard','Stone-ground dijon-style prepared mustard','Condiments & Sauces',13.00,1),
('DFN-80','Dried Plums','Dense, sweet dried plums, the perfect snack for people on the go','Dried Goods & Nuts',3.50,1),
('B-81','Green Tea','Authentic green tea leaves, dried quickly after harvest to preserve their vibrant color and naturally occurring antioxidants','Beverages',2.99,1),
('C-82','Granola','A super crunchy treat, Oats loaded with almonds, walnuts, hazelnuts, raisins, coconut and dried cranberry','Snacks & Sweets',4.00,1),
('CS-83','Potato Chips','Kettle-cooked crispy snackers','Snacks & Sweets',1.80,1),
('BGM-85','Brownie Mix','Rich and fudgy, for a dense, chewy brownie with fudge topping','Baking Goods',12.49,1),
('BGM-86','Cake Mix','Versatile yellow mix for moist, fluffy cakes and cupcakes','Baking Goods',15.99,1),
('B-87','Tea','Robust black tea leaves have rich flavor, dark color, and a smooth finish','Beverages',4.00,1),
('CFV-88','Pears','Organic red D''Anjou pears, ripened to pear-fection','Produce',1.30,1),
('CFV-89','Peaches','Delicious, juicy freestone peaches suitable for canning, baking and snacking','Produce',1.50,1),
('CFV-90','Pineapple','Fresh from Hawaii, ripe, succulent whole fruits','Produce',1.80,1),
('CFV-91','Cherry Pie Filling','Real, whole, tart cherries hand-picked at their peak','Prepared Foods',2.00,1),
('CFV-92','Green Beans','Whole fresh green beans picked in their prime','Produce',1.20,1),
('CFV-93','Corn','Delicious, tender tri-color sweet corn on the cob','Produce',1.20,1),
('CFV-94','Peas','Baby green peas in the pod, ready for shucking','Produce',1.50,1),
('CM-95','Tuna Fish','Wild-caught solid-white albacore tuna packed in water','Seafood & Meat',2.00,1),
('CM-96','Smoked Salmon','From the Pacific Northwest''s pristine icy cold waters and hardwood-smoked','Seafood & Meat',4.00,1),
('SO-98','Vegetable Soup','Farm-fresh diced vegetable medley in a rich vegetable broth','Prepared Foods',1.89,1),
('SO-99','Chicken Soup','To warm the soul. Rich broth chock-full of tender chicken, fresh diced vegetables and hearty egg noodles','Prepared Foods',1.95,1);
GO


