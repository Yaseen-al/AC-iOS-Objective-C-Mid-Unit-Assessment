//
//  DetailCrayonViewController.m
//  Crayons
//
//  Created by Yaseen Al Dallash on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "DetailCrayonViewController.h"
#import "CrayonDetailView.h"
@interface DetailCrayonViewController ()

@end

@implementation DetailCrayonViewController

#pragma mark - View LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureNavBar];
    [self allocInitSubViews];
    [self configureDetailCrayonView];
}


#pragma mark - Inits

-(instancetype)initWithCrayon:(Crayon *)crayon{
    self = [super init];
    if (self){
        _crayon = crayon;
    }
    return  self;
}


#pragma mark - View Allocations
-(void) allocInitSubViews{
    _crayonDetailView = [[CrayonDetailView alloc] initWithFrame:CGRectZero];
}
#pragma mark - SubViews Constraints
-(void) configureDetailCrayonView{
    [self.view addSubview:_crayonDetailView];
    [_crayonDetailView configureCrayonDetailView:_crayon];
    _crayonDetailView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonDetailView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
                                              [_crayonDetailView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor],
                                              [_crayonDetailView.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor],
                                              [_crayonDetailView.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor],
                                              ]];
    
}

#pragma configure Navigation Bar

-(void) configureNavBar{
    self.navigationItem.title = @"Preferences";
}




@end
