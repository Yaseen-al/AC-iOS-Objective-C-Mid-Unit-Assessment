//
//  CrayonDetailView.m
//  Crayons
//
//  Created by Yaseen Al Dallash on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "CrayonDetailView.h"

@implementation CrayonDetailView




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


-(void)allocInitSubViews{
    _crayonNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _crayonRedValueLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //TODO setup the rest of labels and sliders
    
    
}
-(void)addSubView{
    [self addSubview:_crayonNameLabel];
}
-(void)configureConstraints{
    //CrayonNameLabel
    _crayonNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonNameLabel.topAnchor constraintEqualToAnchor:self.topAnchor constant:20],
                                              [_crayonNameLabel.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10],
                                              [_crayonNameLabel.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:10],
                                              ]];
    
}
-(void)configureCrayonDetailView: (Crayon *) crayon{
    self.backgroundColor = [UIColor colorWithRed:(crayon.red/255) green:(crayon.green/255) blue:(crayon.blue/255) alpha: 1.0];
    self.crayonNameLabel.text = crayon.name;
    self.crayonNameLabel.font = [UIFont systemFontOfSize:25];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
