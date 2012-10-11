//
//  Possession.h
//  
//
//  Created by Steven Smith on 10/11/12.
//  Copyright (c) 2012 AELOGICA LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

- (void)setPossessionName:(NSString *)str;
- (NSString *)possessionName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)i;
- (int)valueInDollars;

- (NSDate *)dateCreated;

- (id)initWithPossessionName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber;

+ (id)randomPossession;

@end
