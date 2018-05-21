//
//  UIColor+Hex.m
//  Crayons
//
//  Created by Yaseen Al Dallash on 5/19/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

-(instancetype)initWiThHex:(NSString *)hex{
    self = [super self];
    if (self){
        NSString *hexVal = [hex stringByTrimmingCharactersInSet:NSCharacterSet.alphanumericCharacterSet.invertedSet];
        NSScanner *myscanner = [[NSScanner alloc] initWithString:hex];
        unsigned int myInt ;
        [myscanner scanHexInt:&myInt];

        
        
        [self initWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>]
    }
    return self;
}
@end
