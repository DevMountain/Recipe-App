Recipe-App
==========

An iOS app that displays some favorite recipes from Recipe.com

##Lesson 3: Set up a TableView DataSource

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
