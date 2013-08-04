//
//  Sudoku_Index.h
//  Sudoku
//
//  Created by Ruan Pingcheng on 13-8-3.
//  Copyright (c) 2013年 Ruan Pingcheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sudoku_Index : NSObject
@property int row;
@property int column;
@property int district;

-(id)initWithDistrict:(int)district Row:(int)row Column:(int) col;
-(int)rowAsWhole;
-(int)columnAsWhole;
+(Sudoku_Index *)Sudoku_IndexAtRow:(int)row Column:(int)column;

@end
