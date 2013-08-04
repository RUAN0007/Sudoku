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

-(BOOL)isEqual:(Sudoku_Index *)object{
    if ([object isMemberOfClass:[self class]]) {
        return object.district == self.district && object.row == self.row && object.column == self.column;
    }else{
        return NO;
    }
}

+(Sudoku_Index *)Sudoku_IndexAtRow:(int)row Column:(int)column{
    int row_in_Sudoku = row % 3;
    int column_in_Sudoku = column % 3;
    int district_in_Sudoku = row / 3 * 3 + column / 3;
    return [[Sudoku_Index alloc]initWithDistrict:district_in_Sudoku Row:row_in_Sudoku Column:column_in_Sudoku];
}

-(int)rowAsWhole{
    if (self.district >=0 && self.district <= 2) {
        return self.row;
    }else if(self.district >= 3 && self.district <= 5){
        return self.row + 3;
    }else{
        return self.row + 6;
    }
}
-(int)columnAsWhole{
    if (self.district % 3 == 0) {
        return self.column;
    }else if(self.district % 3 == 1){
        return self.column + 3;
    }else{
        return self.column + 6;
    }
}

-(id)copyWithZone:(NSZone *)zone{
    Sudoku_Index   *objectCopy = [[Sudoku_Index allocWithZone:zone] init];
    // Copy over all instance variables from self to objectCopy.
    // Use deep copies for all strong pointers, shallow copies for weak.
    return objectCopy;
}
@end
