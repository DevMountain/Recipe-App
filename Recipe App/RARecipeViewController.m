//
//  RARecipeViewController.m
//  Recipe App
//
//  Created by Joshua Howland on 5/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RARecipeViewController.h"

#import "RARecipeTableViewDatasource.h"

#import "RARecipes.h"

#import "RARecipeDetailViewController.h"

@interface RARecipeViewController () <UITableViewDelegate>

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

    self.dataSource = [RARecipeTableViewDatasource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return [self.dataSource heightForIndexPath:indexPath];

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    RARecipeDetailViewController *viewController = [RARecipeDetailViewController new];
    viewController.recipeIndex = indexPath.row;
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
