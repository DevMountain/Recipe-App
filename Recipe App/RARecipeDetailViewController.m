//
//  RARecipeDetailViewController.m
//  Recipe App
//
//  Created by Joshua Howland on 5/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RARecipeDetailViewController.h"

#import "RARecipes.h"

static CGFloat margin = 15;

@interface RARecipeDetailViewController ()

@end

@implementation RARecipeDetailViewController

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
    
    self.title = [RARecipes titleAtIndex:self.recipeIndex];

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];

    CGFloat topMargin = 20;

    CGFloat heightForReference = [self heightForDescription:[RARecipes descriptionAtIndex:self.recipeIndex]];

    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(margin, topMargin, self.view.frame.size.width - 2 * margin, heightForReference)];
    description.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    description.numberOfLines = 0;
    [scrollView addSubview:description];
    
    CGFloat top = topMargin + heightForReference + margin * 2;
    
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i++) {
        
        UILabel *volume = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, (self.view.frame.size.width - 2 * margin) / 4, 20)];
        volume.font = [UIFont boldSystemFontOfSize:17];
        volume.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:volume];
        
        UILabel *type = [[UILabel alloc] initWithFrame:CGRectMake(margin + (self.view.frame.size.width - 2 * margin) / 4, top, (self.view.frame.size.width - 2 * margin) * 3 / 4, 20)];
        type.numberOfLines = 0;
        type.font = [UIFont systemFontOfSize:15];
        type.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:type];
        
        top += (20 + margin);
        
    }
    
    // We set the content size of the scrollview after we've added all the labels so that we know how tall the size needs to be.
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, top + margin);


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)heightForDescription:(NSString *)description {
    
    CGRect bounding = [description boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * margin, CGFLOAT_MAX)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]}
                                              context:nil];
    
    return bounding.size.height;
    
}

@end
