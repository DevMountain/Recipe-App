Recipe-App
==========

An iOS app that displays some favorite recipes from Recipe.com

##Lesson 3: TableView DataSource

###Step 1: Create a Navigation Controller
- Clone down this project (or create a new single view controller in Xcode)
- Create a UIViewController called RecipeViewController
- In the AppDelegate didFinishLaunching method initialize a UINavigationController with a recipeViewController instance as the rootViewController
- Make the navigationController the rootViewController of the window.

### Step 2: Add a tableview to the view
- Add a UITableView as a property on the viewController class
- Initialize and add the tableView as a subview of the main view

### Step 3: Import the RARecipes model into your app
- Create a new subclass of NSObject called RARecipes in your app. 
- Copy the code from this Gist: https://gist.github.com/jkhowland/5e7c356c73f617bcfdd0

### Step 4: Create a new tableViewDatasource
- Create a NSObject subclass called RecipesTableViewDataSource
- In the header file, adopt the UITableViewDataSource protocol 
- Add the required UITableViewDataSource methods to the implementation file
- In numberOfRows return RARecipes class method count
- in cellForRowAtIndexPath return a cell with the textLabel.text set to the string RARecipes class titleAtIndex for indexPath.row

## Lesson 4: TableView Delegate

### Step 5: Setting Up the Delegate
- In the RecipeViewController, adopt the UITableViewDelegate protocol
- Add the ```didSelectRowAtIndexPath:(NSIndexPath *)indexPath``` method to enable cell selection
- In the ```didSelectRowAtIndexPath:``` method, tell the tableView to deselect the cell to remove the highlight
- Create a new ViewController class called RecipeDetailViewController
- Instantiate your new RecipeDetailViewController and present it using the RecipeViewController's UINavigationController

### Step 6: Set Up the DetailViewController
Setting up the DetailViewController is your opportunity to incorporate a lot of the work with UIView that we have done so far. You will use a ScrollView to display the details of the recipe. Feel free to reference the solution code for hints on setting up the DetailViewController.

- Add a public property ```@property (nonatomic, assign) NSInteger recipeIndex``` to your RecipeDetailViewController, this will be used to connect the correct Recipe Details to the DetailViewController
- Set the title of the DetailViewController to the [RARecipes titleAtIndex:], you should retrieve the titleAtIndex using the index property
- Initialize a UIScrollView that will hold all of your labels for details on the Recipe
- Set a topMargin variable that can be used to separate the labels
- Add a description label, ingredients labels, and direction labels, use the solution code as a reference, do not copy and paste, but use it to learn how a developer must think about laying out views
- You will need a method that returns the height for a given string, look in the documentation for NSString (hint: use the boundingRectWithSize: method to return how tall your block of text will be so you can properly set your subviews)

This can be overwhelming and difficult. Enjoy the learning process. Ask your mentor for help.

### Step 7: Updating Your DetailViewController With the Correct Recipe

We need to pass the indexPath.row of the selected cell to the DetailViewController's index property that we created so that the DetailViewController knows what recipe to display

- In your didSelectRowAtIndexPath: method in your RecipeViewController, set the public index property of the DetailViewController to the indexPath.row of the selected cell

### Black Diamonds
- Add the description of each recipe in small text on the main view
- Stylize the detail view. Fonts, layout, color.
- Can you add an imageview to the top of the recipe detail view?
