//
//  main.m
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
   @autoreleasepool {
      NSMutableArray *items = [[NSMutableArray alloc] init];
      
      Item *backpack = [[Item alloc] initWithItemName:@"Backpack"];
      [items addObject:backpack];
      
      Item *calculator = [[Item alloc] initWithItemName:@"Calculator"];
      [items addObject:calculator];
      
      backpack.containedItem = calculator;
      
      backpack = nil;
      calculator = nil;
      
      for (Item *item in items) {
         NSLog(@"%@", item);
      }
      
      
      NSLog(@"Setting items to nil...");
      items = nil;
   }
    return 0;
}
