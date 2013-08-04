//
//  Sudoku_Solver.m
//  Sudoku
//
//  Created by Ruan Pingcheng on 13-8-3.
//  Copyright (c) 2013年 Ruan Pingcheng. All rights reserved.
//

#import "Sudoku_Solver.h"
#import "Sudoku_Index.h"
@interface Sudoku_Solver()
@property NSDictionary *sudoku;


@end

@implementation Sudoku_Solver
-(id)initWithSudokuIndex:(NSDictionary *)Sudoku{
    if (self = [super init]) {
        self.sudoku = Sudoku;
    }
    return self;
}

-(NSDictionary *)solve{
    
}

-(void)display{
    NSMutableString *pattern = [NSMutableString stringWithString: @"\n"];
    for (int i = 0; i < 9; i++) {
        if (i == 3 || i == 6) {
            [pattern appendString: @" - - - | - - - | - - -\n"];
            
        }
        for (int j = 0; j < 9; j++) {
            if (j == 3 || j == 6) {
                [pattern appendString:@" |"];
            }
            
            Sudoku_Index *index = [Sudoku_Index Sudoku_IndexAtRow: i Column:j];
            if ([self.sudoku objectForKey:index]) {
                [pattern appendFormat:@" %@",[self.sudoku objectForKey:index]];
            }else{
                [pattern appendString:@" ?"];
            }
            
        }
        [pattern appendString:@"\n"];
    }
    NSLog(@"%@",pattern);
}

@end
