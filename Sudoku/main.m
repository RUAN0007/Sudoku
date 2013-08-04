//
//  main.m
//  Sudoku
//
//  Created by Ruan Pingcheng on 13-8-3.
//  Copyright (c) 2013年 Ruan Pingcheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sudoku_Index.h"
#import "Sudoku_Solver.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Sudoku_Index *sindex = [[Sudoku_Index alloc] initWithDistrict:0 Row:0 Column:0];
        NSDictionary *index = [NSDictionary dictionaryWithObject:[NSNumber numberWithInt:9] forKey:sindex];
        [[[Sudoku_Solver alloc]initWithSudokuIndex:index] display];
    }
    return 0;
}

