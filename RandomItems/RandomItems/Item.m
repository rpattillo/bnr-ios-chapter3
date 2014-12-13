//
//  Item.m
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import "Item.h"

@implementation Item


#pragma mark - Accessors

- (void)setItemName:(NSString *)str
{
   _itemName = str;
}


- (NSString *)itemName
{
   return _itemName;
}


- (void)setSerialNumber:(NSString *)str
{
   _serialNumber = str;
}


- (NSString *)serialNumber
{
   return _serialNumber;
}


- (void)setValueInDollars:(int)v
{
   _valueInDollars = v;
}


- (int)valueInDollars
{
   return _valueInDollars;
}


- (NSDate *)dateCreated
{
   return _dateCreated;
}


#pragma mark - Overrides

- (NSString *)description
{
   NSString *description = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                            self.itemName,
                            self.serialNumber,
                            self.valueInDollars,
                            self.dateCreated];
   return description;
}

@end
