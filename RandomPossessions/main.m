//
//  main.m
//  RandomPossessions
//
//  Created by Steven Smith on 10/11/12.
//  Copyright (c) 2012 AELOGICA LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++){
            Possession *p = [Possession randomPossession];
            [items addObject:p];
        }
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        //[items addObject:@"One"];
        //[items addObject:@"Two"];
        //[items addObject:@"Three"];
        // Send another message, insertObject:atIndex:, to that same array object
        //[items insertObject:@"Zero" atIndex:0];
        
        // For every item in the array as determined by sending count to the items array
        for(int i=0; i < [items count]; i++) {
            // We get the ith object from the array and pass it as an argument to NSLog,
            // which implicitly sends the description message to that object
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        // Possession *p = [[Possession alloc] init];        
        //[p setPossessionName:@"Red Sofa"];
        //[p setSerialNumber:@"A1B2C"];
        //[p setValueInDollars:1];
        //NSLog(@"%@", p);
        
        // Release the array
        [items release];
        // Don't leave items pointing at freed memory
        items = nil;
    }
    return 0;
}

