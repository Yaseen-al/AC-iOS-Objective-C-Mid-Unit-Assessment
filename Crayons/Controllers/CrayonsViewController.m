//
//  ViewController.m
//  Crayons
//
//  Created by Alex Paul on 5/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "CrayonsViewController.h"
#import "Crayon.h"
#import "ContentView.h"
@interface CrayonsViewController ()

@end

@implementation CrayonsViewController


#pragma mark - View LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.orangeColor;
    [self allocProperties];
    [self allocInitSubViews];
    [self addSubView];
    [self configureContentView];
    [self configureNavBar];
}

#pragma mark - Properties Allocation
-(void) allocProperties{
    _crayons = [Crayon allTheCrayons];
}



#pragma mark - View Allocations
-(void) allocInitSubViews{
    _contentView = [[ContentView alloc] initWithFrame:CGRectZero];
}

#pragma mark - Add SubViews
-(void) addSubView{
    [self.view addSubview:_contentView];
}

#pragma mark - SubViews Constraints

-(void) configureContentView{
    _contentView.translatesAutoresizingMaskIntoConstraints = NO;
    _contentView.crayonsTableView.delegate = self;
    _contentView.crayonsTableView.dataSource = self;
    [NSLayoutConstraint activateConstraints:@[
[self.contentView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
[self.contentView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor],
[self.contentView.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor],
[self.contentView.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor],


                                              ]];
}

#pragma configure Navigation Bar
-(void) configureNavBar{
    [self.navigationItem setTitle:@"Crayons"];
}

#pragma mark - TableView Data Source

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    Crayon *currentCrayon = [self crayons][indexPath.row];
    UITableViewCell *myDefaultCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"DefaultCell"];
    myDefaultCell.textLabel.text = currentCrayon.name;
    myDefaultCell.detailTextLabel.text  = currentCrayon.hex;
    myDefaultCell.backgroundColor = [UIColor colorWithRed:(currentCrayon.red/255) green:(currentCrayon.green/255) blue:(currentCrayon.blue/255) alpha: 1.0];
    if ([currentCrayon.hex isEqualToString:@"#000000"]){
        myDefaultCell.textLabel.textColor = UIColor.whiteColor;
        myDefaultCell.detailTextLabel.textColor = UIColor.whiteColor;
    }
    return myDefaultCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self crayons].count ;
}

#pragma mark - TableView Delegates

@end
