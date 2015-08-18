//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by James Reinke on 8/17/15.
//  Copyright (c) 2015 Twenty Two Bits. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    HypnosisView *backgroundView = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as the view of this view controller
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if(self) {
        // Set the tab bar item's title
        self.tabBarItem.title = @"Stupid Ducks";
        
        // Create a UIImage from a file
        UIImage *image = [UIImage imageNamed:@"spiral.png"];
        
        self.tabBarItem.image = image;
    }
    
    return self;
    
}

@end
