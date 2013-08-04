//
//  Sudoku_Index.m
//  Sudoku
//
//  Created by Ruan Pingcheng on 13-8-3.
//  Copyright (c) 2013年 Ruan Pingcheng. All rights reserved.
//

#import "Sudoku_Index.h"

@implementation Sudoku_Index
@synthesize row;
@synthesize district;
@synthesize column;

-(id)initWithDistrict:(int)dis Row:(int)r Column:(int)col{
    if (self = [super init]) {
        self.district = dis;
        self.row = r;
        self.column = col;
    }
    return self;
}
@end
