//
//  Possession.m
//  
//
//  Created by Steven Smith on 10/11/12.
//  Copyright (c) 2012 AELOGICA LLC. All rights reserved.
//

#import "Possession.h"

@implementation Possession
- (id)initWithPossessionName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setPossessionName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
    }

    // Return the address of the newly initialized object
    return self;
}

- (id)init
{
    return [self initWithPossessionName:@"Possession"
                         valueInDollars:0
                           serialNumber:@""];
}

- (void)setPossessionName:(NSString *)str
{
    possessionName = str;
}
- (NSString *)possessionName
{
    return possessionName;
}

- (void)setSerialNumber:(NSString *)str;
{
    serialNumber = str;
}
- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}
- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *)description
{
    NSString *desc =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
            possessionName, serialNumber, valueInDollars, dateCreated];
    return desc;
}

+ (id)randomPossession
{
    // Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    
    // Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",@"Spork",@"Mac", nil];
    
    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, called the modulo operator, gives
    // you the remainder. So adjectiveIndex is a random number
    // from 0 to 2 inclusive.
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0'+rand() % 10,
                                    'A'+rand() % 26,
                                    '0'+rand() % 10,
                                    '0'+rand() % 10,
                                    'A'+rand() % 26];
    
    // Once again, ignore the memory problems with this method
    Possession *newPossession = [[self alloc] initWithPossessionName:randomName
                                                      valueInDollars:randomValue
                                                        serialNumber:randomSerialNumber];
    
    return newPossession;
}

@end
