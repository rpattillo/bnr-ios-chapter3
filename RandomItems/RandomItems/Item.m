//
//  Item.m
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import "Item.h"

@implementation Item


#pragma mark - Initializers

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
   self = [super init];
   if ( self ) {
      _itemName = name;
      _serialNumber = sNumber;
      _valueInDollars = value;
      _dateCreated = [[NSDate alloc] init];
   }
   
   return self;
}


- (instancetype)initWithItemName:(NSString *)name
{
   return [self initWithItemName:(NSString *)name valueInDollars:0 serialNumber:@""];
}


- (instancetype)init
{
   return [self initWithItemName:@"Item"];
}



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
