//
//  GCMainTabBarController.m
//  Good Coin
//
//  Created by Alexandre Perozim de Faveri on 10/15/15.
//  Copyright © 2015 Good Coin. All rights reserved.
//

#import "GCMainTabBarController.h"
#import "GCHomeViewController.h"
#import "GCDonationsViewController.h"
#import "GCFeedbackViewController.h"
#import "GCCharitiesViewController.h"

@implementation GCMainTabBarController

static const NSInteger kHomeButtonIndex = 0;
static const NSInteger kDonationsButtonIndex = 1;
static const NSInteger kFeedbackButtonIndex = 2;
static const NSInteger kCharitiesButtonIndex = 3;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create home tab
    GCHomeViewController *homeViewController = [[GCHomeViewController alloc] init];
    UINavigationController *homeNavigationController = [[UINavigationController alloc]
                                                        initWithRootViewController:homeViewController];
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:nil tag:kHomeButtonIndex];
    homeNavigationController.tabBarItem = homeItem;
    
    // Create donations tab
    GCDonationsViewController *donationsViewController = [[GCDonationsViewController alloc] init];
    UINavigationController *donationsNavigationController = [[UINavigationController alloc]
                                                        initWithRootViewController:donationsViewController];
    UITabBarItem *donationsItem = [[UITabBarItem alloc] initWithTitle:@"Donations" image:nil tag:kDonationsButtonIndex];
    donationsNavigationController.tabBarItem = donationsItem;
    
    // Create feedback tab
    GCFeedbackViewController *feedbackViewController = [[GCFeedbackViewController alloc] init];
    UINavigationController *feedbackNavigationController = [[UINavigationController alloc]
                                                        initWithRootViewController:feedbackViewController];
    UITabBarItem *feedbackItem = [[UITabBarItem alloc] initWithTitle:@"Feedback" image:nil tag:kFeedbackButtonIndex];
    feedbackNavigationController.tabBarItem = feedbackItem;
    
    // Create charities tab
    GCCharitiesViewController *charitiesViewController = [[GCCharitiesViewController alloc] init];
    UINavigationController *charitiesNavigationController = [[UINavigationController alloc]
                                                        initWithRootViewController:charitiesViewController];
    UITabBarItem *charitiesItem = [[UITabBarItem alloc] initWithTitle:@"Charities" image:nil tag:kCharitiesButtonIndex];
    charitiesNavigationController.tabBarItem = charitiesItem;
    
    NSArray *controllers = [[NSArray alloc] initWithObjects:homeNavigationController, donationsNavigationController,
                            feedbackNavigationController, charitiesNavigationController, nil];
    self.viewControllers = controllers;
}

@end
