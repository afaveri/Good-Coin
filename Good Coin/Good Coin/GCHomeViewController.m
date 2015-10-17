//
//  GCHomeViewController.m
//  Good Coin
//
//  Created by Alexandre Perozim de Faveri on 10/15/15.
//  Copyright © 2015 Good Coin. All rights reserved.
//

#import "GCHomeViewController.h"
#import "GCRecentDonationsCollectionViewController.h"

@interface GCHomeViewController ()

- (void)createRecentDonationsCollectionView;

@end

@implementation GCHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;

    [self createRecentDonationsCollectionView];
}

- (void)createRecentDonationsCollectionView
{
    // Create collection view controller
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    [layout setItemSize:CGSizeMake(self.view.frame.size.height / 3.0 - 50.0, self.view.frame.size.height / 3.0 - 50.0)];
    [layout setMinimumLineSpacing:self.view.frame.size.width / 10.0];
    
    GCRecentDonationsCollectionViewController *recentDonations = [[GCRecentDonationsCollectionViewController alloc]
                                                                  initWithCollectionViewLayout:layout];
    
    // Add subview and child controller
    [self addChildViewController:recentDonations];
    [self.view addSubview:recentDonations.view];
    [recentDonations didMoveToParentViewController:self];
    
    // Setup constraints
    recentDonations.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:recentDonations.view
                                                                     attribute:NSLayoutAttributeBottom
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeBottom
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:recentDonations.view
                                                                     attribute:NSLayoutAttributeLeading
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeLeading
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:recentDonations.view
                                                                     attribute:NSLayoutAttributeTrailing
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeTrailing
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:recentDonations.view
                                                                     attribute:NSLayoutAttributeHeight
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeHeight
                                                                    multiplier:1.0/3.0
                                                                      constant:0.0]];
}

@end
