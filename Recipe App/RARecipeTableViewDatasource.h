//
//  RARecipeTableViewDatasource.h
//  Recipe App
//
//  Created by Joshua Howland on 5/21/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RARecipeTableViewDatasource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

- (CGFloat)heightForIndexPath:(NSIndexPath *)indexPath;

@end
