//
//  ViewController.h
//  Crayons
//
//  Created by Alex Paul on 5/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentView.h"

@interface CrayonsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, atomic) ContentView *contentView;
@property(strong, nonatomic) NSArray *crayons;
@end
