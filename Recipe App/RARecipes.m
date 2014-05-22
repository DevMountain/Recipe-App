//
//  RARecipes.m
//  Recipe App
//
//  Created by Joshua Howland on 5/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RARecipes.h"

static NSString * const RecipeTitleKey = @"recipeTitle";
static NSString * const RecipeDescriptionKey = @"recipeDescription";
static NSString * const RecipeIngredientsKey = @"recipeIngredients";
static NSString * const IngredientVolumeKey = @"ingredientVolume";
static NSString * const IngredientTypeKey = @"ingredientType";
static NSString * const DirectionsKey = @"directions";

@implementation RARecipes

+ (NSInteger)count {
    return [[self recipes] count];
}

+ (NSDictionary *)recipeAtIndex:(NSInteger)index {
    return [self recipes][index];
}

+ (NSString *)titleAtIndex:(NSInteger)index {
    return [self recipes][index][RecipeTitleKey];
}

+ (NSString *)descriptionAtIndex:(NSInteger)index {
    return [self recipes][index][RecipeDescriptionKey];
}

+ (NSInteger)ingredientCountAtIndex:(NSInteger)index {
    return [[self recipes][index][RecipeIngredientsKey] count];
}

+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex {
    return [self recipes][recIndex][RecipeIngredientsKey][ingIndex][IngredientTypeKey];
}

+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex {
    return [self recipes][recIndex][RecipeIngredientsKey][ingIndex][IngredientVolumeKey];
}

+ (NSArray *)directionsAtIndex:(NSInteger)index {
    return [self recipes][index][DirectionsKey];
}

+ (NSArray *)recipes {
    
    return @[
             @{
                 RecipeTitleKey : @"Lynn's Best Herb-and-Garlic Pork",
                 RecipeDescriptionKey : @"Garlic, chili powder, and lots of fresh herbs make a wonderful marinade for the pork in this grilling recipe.",
                 RecipeIngredientsKey : @[
                         @{IngredientTypeKey: @"olive oil", IngredientVolumeKey: @"1/4 cup"},
                         @{IngredientTypeKey: @"garlic, minced", IngredientVolumeKey: @"6 cloves"},
                         @{IngredientTypeKey: @"snipped fresh basil", IngredientVolumeKey: @"2 tbs"},
                         @{IngredientTypeKey: @"chopped green onion", IngredientVolumeKey: @"2 tbs"},
                         @{IngredientTypeKey: @"chili powder", IngredientVolumeKey: @"2 tsp"},
                         @{IngredientTypeKey: @"oregano", IngredientVolumeKey: @"1 tsp"},
                         @{IngredientTypeKey: @"salt", IngredientVolumeKey: @"1 tsp"},
                         @{IngredientTypeKey: @"pepper", IngredientVolumeKey: @"1/2 tsp"},
                         @{IngredientTypeKey: @"pork top loin roast", IngredientVolumeKey: @"3-4 lb"}
                         ],
                 DirectionsKey : @[@"In a small mixing bowl, combine all ingredients except meat. Place meat in a large plastic bag set in a shallow dish. Pour marinade over meat. Close bag. Turn several times. Marinate in refrigerator 2 to 24 hours, turning occasionally.",
                                   @"Remove meat from bag. Discard marinade. Insert a meat thermometer into the thickest part of the roast. (Or use an instant-read thermometer to start checking the roast after 1 hour of grilling.",
                                   @"In a covered grill, arrange preheated coals around drip pan (or follow manufacturer's directions for cooking over indirect heat on your gas grill.) Test for medium-low heat above pan. Place meat on grill rack over drip pan. Cover and grill for 1-1/2 to 2-1/4 hours or until meat thermometer registers 155 degree F. Remove roast and cover with foil. Let stand 15 minutes before carving. (The internal temperature of the meat should rise 5 degrees F upon standing, to 160 degree F.)",
                                   @"Remove strings and slice meat to serve. Use any leftover pork for sandwiches. Makes 12 servings."]
                 },
             @{
                 RecipeTitleKey : @"Glorious Glazed Salmon",
                 RecipeDescriptionKey : @"As the salmon grills, the tamari sauce and balsamic vinegar glaze caramelizes on the fish, adding color and flavor to the final dish.",
                 RecipeIngredientsKey : @[
                         @{IngredientTypeKey: @"balsamic vinegar", IngredientVolumeKey: @"1/2 cup"},
                         @{IngredientTypeKey: @"brown sugar", IngredientVolumeKey: @"1 tbs"},
                         @{IngredientTypeKey: @"tamari sauce", IngredientVolumeKey: @"1 tsp"},
                         @{IngredientTypeKey: @"chopped ginger", IngredientVolumeKey: @"1/4 tsp"},
                         @{IngredientTypeKey: @"boneless salmon fillets", IngredientVolumeKey: @"4"}
                         ],
                 DirectionsKey : @[@"In a small saucepan, bring vinegar to boiling over medium heat. Boil gently, uncovered, for about 5 minutes or until reduced by about half.",
                                   @"Stir in brown sugar and molasses, tamari or soy sauce, and ginger.",
                                   @"Brush the mixture on the salmon fillets. Place fish on the rack of an uncovered grill directly over medium heat. Grill for 4 to 6 minutes per 1/2-inch thickness or until fish flakes with a fork, turning and brushing with soy mixture halfway through cooking.",
                                   @"Serve the grilled fish with some rice pilaf and asparagus spears, if you like. Makes 4 servings."]
                 },
             @{
                 RecipeTitleKey : @"Paradise Pumpkin Pie",
                 RecipeDescriptionKey : @"This extravagant two-layered dessert has a cream cheese base topped with a pumpkin filling and sweet pecans.",
                 RecipeIngredientsKey : @[
                         @{IngredientTypeKey: @"cream cheese", IngredientVolumeKey: @"8 ounce"},
                         @{IngredientTypeKey: @"granulated sugar", IngredientVolumeKey: @"1/4 cup"},
                         @{IngredientTypeKey: @"vanilla", IngredientVolumeKey: @"1/2 tsp"},
                         @{IngredientTypeKey: @"egg, beaten", IngredientVolumeKey: @"1"},
                         @{IngredientTypeKey: @"pastry crust", IngredientVolumeKey: @"1"},
                         @{IngredientTypeKey: @"canned pumpkin", IngredientVolumeKey: @"1 1/4 can"},
                         @{IngredientTypeKey: @"brown sugar", IngredientVolumeKey: @"1/4 cup"},
                         @{IngredientTypeKey: @"cinnamon", IngredientVolumeKey: @"1 tsp"},
                         @{IngredientTypeKey: @"chopped pecans", IngredientVolumeKey: @"1/2 cup"}
                         ],
                 
                 DirectionsKey : @[@"In a small bowl, beat cream cheese, 1/4 cup granulated sugar, the vanilla, and the 1 egg with an electric mixer on medium speed until smooth. Chill in the refrigerator for 30 minutes.",
                                   @"Meanwhile, on a lightly floured surface, use your hands to slightly flatten Pastry for Single-Crust Pie. Roll dough from center to edge into a circle about 12 inches in diameter. To transfer pastry, wrap it around the rolling pin. Unroll pastry into a 9-inch pie plate. Ease pastry into pie plate, being careful not to stretch pastry. Turn cream cheese mixture into pastry-lined pie plate. Trim pastry to 1/2 inch beyond edge of pie plate. Fold under extra pastry. Crimp edge as desired.",
                                   @"In a medium bowl, combine pumpkin, evaporated milk, the 2 eggs, the 1/4 cup brown sugar, 1/4 cup granulated sugar, the cinnamon, salt, and nutmeg. Carefully pour over cream cheese mixture.",
                                   @"Cover edge of the pie with foil. Bake in a 350 degree F oven for 25 minutes. Remove foil; bake for 25 minutes more.",
                                   @"Meanwhile, combine pecans, butter, flour, and the 2 tablespoons brown sugar. Sprinkle over the pie. Bake for 10 to 15 minutes more or until a knife inserted near the center comes out clean. Cool on wire rack. Makes 1 pie (8 servings)."
                                   ]
                 },
             @{
                 RecipeTitleKey : @"Chicken & chorizo jambalaya",
                 RecipeDescriptionKey : @"A Cajun-inspired rice pot recipe with spicy Spanish sausage, sweet peppers and tomatoes",
                 RecipeIngredientsKey : @[
                         @{IngredientTypeKey: @"olive oil", IngredientVolumeKey: @"1 tbs"},
                         @{IngredientTypeKey: @"chicken chopped", IngredientVolumeKey: @"2 breast"},
                         @{IngredientTypeKey: @"onion diced", IngredientVolumeKey: @"1"},
                         @{IngredientTypeKey: @"red pepper sliced", IngredientVolumeKey: @"1"},
                         @{IngredientTypeKey: @"galic cloves crushed", IngredientVolumeKey: @"2"}
                         ],
                 DirectionsKey : @[@"Heat the oil in a large frying pan with a lid and brown the chicken for 5-8 mins until golden. Remove and set aside. Tip in the onion and cook for 3-4 mins until soft. Then add the pepper, garlic, chorizo and Cajun seasoning, and cook for 5 mins more.",
                                   @"Stir the chicken back in with the rice, add the tomatoes and stock. Cover and simmer for 20-25 mins until the rice is tender."]
                 },
             @{
                 RecipeTitleKey : @"Ultimate chocolate cake",
                 RecipeDescriptionKey : @"Indulge yourself with Angela Nilsen's heavenly moist and fudgy chocolate cake - perfect for celebrations - birthdays, weddings, christenings - any excuse!",
                 RecipeIngredientsKey : @[
                         @{IngredientTypeKey: @"dark chocolate", IngredientVolumeKey: @"200 g"},
                         @{IngredientTypeKey: @"butter", IngredientVolumeKey: @"200 g"},
                         @{IngredientTypeKey: @"instant coffee", IngredientVolumeKey: @"1 tbs"},
                         @{IngredientTypeKey: @"self-raising flour", IngredientVolumeKey: @"85 g"},
                         @{IngredientTypeKey: @"golden caster sugar", IngredientVolumeKey: @"200 g"},
                         @{IngredientTypeKey: @"cocoa powder", IngredientVolumeKey: @"200 g"},
                         @{IngredientTypeKey: @"medium eggs", IngredientVolumeKey: @"3"}
                         ],
                 DirectionsKey : @[@"Butter a 20cm round cake tin (7.5cm deep) and line the base. Preheat the oven to fan 140C/conventional 160C/ gas 3. Break 200g good quality dark chocolate in pieces into a medium, heavy-based pan. Cut 200g butter into pieces and tip in with the chocolate, then mix 1 tbsp instant coffee granules into 125ml cold water and pour into the pan. Warm through over a low heat just until everything is melted – don’t overheat. Or melt in the microwave on Medium for about 5 minutes, stirring half way through.",
                                   @"While the chocolate is melting, mix 85g self-raising flour, 85g plain flour, ¼ bicarbonate of soda, 200g light muscovado sugar, 200g golden caster sugar and 25g cocoa powder in a big bowl, mixing with your hands to get rid of any lumps. Beat 3 medium eggs in a bowl and stir in 75ml (5 tbsp) buttermilk.",
                                   @"Now pour the melted chocolate mixture and the egg mixture into the flour mixture, stirring just until everything is well blended and you have a smooth, quite runny consistency. Pour this into the tin and bake for 1 hour 25- 1 hour 30 minutes – if you push a skewer in the centre it should come out clean and the top should feel firm (don’t worry if it cracks a bit). Leave to cool in the tin (don’t worry if it dips slightly), then turn out onto a wire rack to cool completely.",
                                   @"When the cake is cold, cut it horizontally into three. Make the ganache: chop 200g good quality dark chocolate into small pieces and tip into a bowl. Pour a 284ml carton of double cream into a pan, add 2 tbsp golden caster sugar, and heat until it is about to boil. Take off the heat and pour it over the chocolate. Stir until the chocolate has melted and the mixture is smooth.",
                                   @"Sandwich the layers together with just a little of the ganache. Pour the rest over the cake letting it fall down the sides and smoothing to cover with a palette knife. Decorate with grated chocolate or a pile of chocolate curls. The cake keeps moist and gooey for 3-4 days."]
                 }
             ];
    
}

@end
