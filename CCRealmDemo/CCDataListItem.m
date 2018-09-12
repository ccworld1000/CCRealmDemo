//
//  CCDataListItem.m
//  CCRealmDemo
//
//  Created by dengyouhua on 2018/9/12 - now.
//  Copyright © 2018 cc | ccworld1000@gmail.com. All rights reserved.
//  https://github.com/ccworld1000/CCRealmDemo

#import "CCDataListItem.h"
#import <CCDebug.h>

@implementation CCDataListItem

+ (CCDataListItem *) genItem : (NSArray *) list {
    CCDataListItem *item = nil;
    
    if (!list || list.count != 16) {
        CCDebugErrorPrint(@"ill list");
        return item;
    }
    
    item = [CCDataListItem new];
    
    item.title1 =  list[0];
    item.title2 =  list[1];
    item.title3 =  list[2];
    item.title4 =  list[3];
    item.title5 =  list[4];
    item.title6 =  list[5];
    item.title7 =  list[6];
    item.title8 =  list[7];
    item.title9 =  list[8];
    item.title10 =  list[9];
    
    item.type1 =  [list[10] integerValue];
    item.type2 =  [list[11] integerValue];
    item.type3 =  [list[12] integerValue];
    item.type4 =  [list[13] integerValue];
    item.type5 =  [list[14] integerValue];
    item.type6 =  [list[15] integerValue];
    
    return item;
}

@end
