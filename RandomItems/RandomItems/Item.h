//
//  Item.h
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
   NSString *_itemName;
   NSString *_serialNumber;
   int _valueInDollars;
   NSDate *_dateCreated;
   
   Item *_containedItem;
   __weak Item *_container;
}

+ (instancetype)randomItem;

// Designated initializer for Item
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;


- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;

- (void)setContainedItem:(Item *)item;
- (Item *)containedItem;

- (void)setContainer:(Item *)item;
- (Item *)container;

@end
