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

    // We need to calculate the height of the description because it's going to cover more than one line.
    
    CGFloat heightForDescription = [self heightForDescription:[RARecipes descriptionAtIndex:self.recipeIndex]];

    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(margin, topMargin, self.view.frame.size.width - 2 * margin, heightForDescription)];
    description.text = [RARecipes descriptionAtIndex:self.recipeIndex];

    // By setting numberOfLines = 0 it will let us have as many lines as we need.
    description.numberOfLines = 0;
    [scrollView addSubview:description];
    
    // We'll shift the top margin with every label we add to the scrollview
    CGFloat top = topMargin + heightForDescription + margin * 2;
    
    UILabel *ingredientsTitle = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, self.view.frame.size.width - 2 * margin, 20)];
    ingredientsTitle.text = @"Ingredients";
    ingredientsTitle.font = [UIFont boldSystemFontOfSize:17];
    [scrollView addSubview:ingredientsTitle];
    
    top += 20 + margin;
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i++) {
        
        // I set the width of the volume to 1/4 of the screen (less margins). You can set it to whatever width you want. The best thing to do would be to find the maximum width of all ingredient volumes.
        
        UILabel *volume = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, (self.view.frame.size.width - 2 * margin) / 4, 20)];
        volume.font = [UIFont boldSystemFontOfSize:17];
        volume.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:volume];
        
        // The width of the type is just the remaining space. It's possible that this get's trunkated, because I'm not wrapping text here.
        
        UILabel *type = [[UILabel alloc] initWithFrame:CGRectMake(margin + (self.view.frame.size.width - 2 * margin) / 4, top, (self.view.frame.size.width - 2 * margin) * 3 / 4, 20)];
        type.numberOfLines = 0;
        type.font = [UIFont systemFontOfSize:15];
        type.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:type];
        
        top += (20 + margin);
        
    }
    
    top += margin;
    
    UILabel *directionsTitle = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, self.view.frame.size.width - 2 * margin, 20)];
    directionsTitle.text = @"Directions";
    directionsTitle.font = [UIFont boldSystemFontOfSize:17];
    [scrollView addSubview:directionsTitle];
    
    top += 20 + margin;

    
    for (int i = 0; i < [[RARecipes directionsAtIndex:self.recipeIndex] count]; i++) {

        CGFloat height = [self heightForDescription:[RARecipes directionsAtIndex:self.recipeIndex][i]];
        
        UILabel *count = [[UILabel alloc] initWithFrame:CGRectMake(margin, top, 30, 20)];
        count.font = [UIFont boldSystemFontOfSize:17];
        count.text = [NSString stringWithFormat:@"%d", i + 1];
        [scrollView addSubview:count];
        
        UILabel *direction = [[UILabel alloc] initWithFrame:CGRectMake(margin + 30, top, (self.view.frame.size.width - 2 * margin - 40), height)];
        direction.numberOfLines = 0;
        direction.text = [RARecipes directionsAtIndex:self.recipeIndex][i];

        [scrollView addSubview:direction];

        top += (height + margin);

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
