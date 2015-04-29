//
//  RARecipeTableViewDatasource.m
//  Recipe App
//
//  Created by Joshua Howland on 5/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RARecipeTableViewDatasource.h"

#import "RARecipes.h"

static NSString * const cellIdentifier = @"identifier";

@implementation RARecipeTableViewDatasource

//Register a tableView and pass in a tableView.
//We register a class for the Reuse Identifier
- (void)registerTableView:(UITableView *)tableView {
    
    // NOTE: You have 2 options. You can either register the tableview to use automatic initializatino of a cell. Or you can check for a nil cell.
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
    
}


//This method returns the amount of cells in a tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [RARecipes count];
    
}

//Here we set up how the Cell looks and the content within it
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // NOTE: If you don't register the cell class to the tableview then you'll need to check for a nil cell right here, so that you can initialize it.
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    return cell;

}

@end
