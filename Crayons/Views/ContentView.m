//
//  ContentView.m
//  Crayons
//
//  Created by Yaseen Al Dallash on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView


-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self allocInitSubViews];
        [self addSubView];
        [self configureConstraints];
    }
    return self;
}

#pragma mark - View Allocations
-(void) allocInitSubViews{
    _crayonsTableView = [[UITableView alloc] initWithFrame:CGRectZero];
}

#pragma mark - Add SubViews
-(void) addSubView{
    [self addSubview:_crayonsTableView];
}


#pragma mark - SubViews Constraints
-(void) configureConstraints{
    
    //Configure TableView
    self.crayonsTableView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.crayonsTableView.topAnchor constraintEqualToAnchor:self.topAnchor],
                                              [self.crayonsTableView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
                                              [self.crayonsTableView.leftAnchor constraintEqualToAnchor:self.leftAnchor],
                                              [self.crayonsTableView.rightAnchor constraintEqualToAnchor:self.rightAnchor]]
     ];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
