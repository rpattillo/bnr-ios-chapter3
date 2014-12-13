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
      
      [items addObject:@"One"];
      [items addObject:@"Two"];
      [items addObject:@"Three"];
      
      [items insertObject:@"Zero" atIndex:0];
      
      for ( NSString *item in items ) {
         NSLog(@"%@", item);
      }
      
      Item *item = [[Item alloc] init];
      
      [item setItemName:@"Red Sofa"];
      [item setSerialNumber:@"A1B2C"];
      [item setValueInDollars:100];
      
      NSLog( @"%@ %@ %@ %d", [item itemName], [item dateCreated],
            [item serialNumber], [item valueInDollars] );
      
      items = nil;
   }
    return 0;
}
