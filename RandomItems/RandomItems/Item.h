//
//  Item.h
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@property (nonatomic, strong) Item *containedItem;
@property (nonatomic, weak) Item *container;


+ (instancetype)randomItem;

// Designated initializer for Item
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@end
