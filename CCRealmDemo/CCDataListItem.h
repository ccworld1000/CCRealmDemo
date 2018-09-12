//
//  CCDataListItem.h
//  CCRealmDemo
//
//  Created by dengyouhua on 2018/9/12 - now.
//  Copyright © 2018 cc | ccworld1000@gmail.com. All rights reserved.
//  https://github.com/ccworld1000/CCRealmDemo

#import "RLMObject.h"

#define  __CHANGE__ 0

@interface CCDataListItem : RLMObject

#ifdef __CHANGE__

@property NSString *title1;
@property NSString *title2;
@property NSString *title3;
@property NSString *title4;
@property NSString *title5;
@property NSString *title6;
@property NSString *title7;
@property NSString *title8;
@property NSString *title9;
@property NSString *title10;

@property NSInteger type1;
@property NSInteger type2;
@property NSInteger type3;
@property NSInteger type4;
@property NSInteger type5;
@property NSInteger type6;

#else

@property (nonatomic, copy) NSString *title1;
@property (nonatomic, copy) NSString *title2;
@property (nonatomic, copy) NSString *title3;
@property (nonatomic, copy) NSString *title4;
@property (nonatomic, copy) NSString *title5;
@property (nonatomic, copy) NSString *title6;
@property (nonatomic, copy) NSString *title7;
@property (nonatomic, copy) NSString *title8;
@property (nonatomic, copy) NSString *title9;
@property (nonatomic, copy) NSString *title10;

@property (nonatomic, assign) NSInteger type1;
@property (nonatomic, assign) NSInteger type2;
@property (nonatomic, assign) NSInteger type3;
@property (nonatomic, assign) NSInteger type4;
@property (nonatomic, assign) NSInteger type5;
@property (nonatomic, assign) NSInteger type6;

#endif


+ (CCDataListItem *) genItem : (NSArray *) list;

@end
