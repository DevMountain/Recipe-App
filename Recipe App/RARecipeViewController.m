//
//  RARecipeViewController.m
//  Recipe App
//
//  Created by Joshua Howland on 5/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RARecipeViewController.h"

#import "RARecipeTableViewDatasource.h"

@interface RARecipeViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RARecipeTableViewDatasource *dataSource; // Must be strong to stay in memory

@end

@implementation RARecipeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"All-Time Best Recipes";
    
    //Initalizes a new data source.
    self.dataSource = [RARecipeTableViewDatasource new];
    
    //Set tableViews frame as the bounds with Grouped Style
    //Add the tableView as a subview of the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    //Set the dataSource to the correct tableView
    //Set the tableViews dataSource to the RARecipe Datasource property
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
