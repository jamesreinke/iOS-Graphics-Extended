//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by James Reinke on 8/17/15.
//  Copyright (c) 2015 Twenty Two Bits. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

- (IBAction)addReminder: (id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if(self) {
        // Set the tab bar item's title
        self.tabBarItem.title = @"Dates";
        
        // Create a UIImage from a file
        UIImage *image = [UIImage imageNamed:@"calendar_date.png"];
        
        self.tabBarItem.image = image;
    }
    
    return self;
    
}

@end
