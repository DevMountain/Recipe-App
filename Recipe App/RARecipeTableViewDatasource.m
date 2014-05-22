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

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [RARecipes count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];

    return cell;

}

- (CGFloat)heightForIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

@end
