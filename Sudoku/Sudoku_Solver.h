//
//  Sudoku_Solver.h
//  Sudoku
//
//  Created by Ruan Pingcheng on 13-8-3.
//  Copyright (c) 2013年 Ruan Pingcheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sudoku_Solver : NSObject
-(id) initWithSudokuIndex:(NSDictionary *)Sudoku;

-(NSDictionary *)solve;
-(void) display;

@end
