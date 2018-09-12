//
//  ViewController.m
//  CCRealmDemo
//
//  Created by dengyouhua on 2018/9/12 - now.
//  Copyright © 2018 cc | ccworld1000@gmail.com. All rights reserved.
//  https://github.com/ccworld1000/CCRealmDemo

#import "ViewController.h"
#import <Realm/Realm.h>
#import <CCDebug.h>
#import "CCDataListItem.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *filePath;

@end

@implementation ViewController

- (NSString *)filePath {
    if (!_filePath) {
        _filePath = [[NSBundle mainBundle] pathForResource:@"CCAutoDataList" ofType:@"json"];
        if (!_filePath) {
            CCDebugErrorPrint(@"ill data list file!");
        }
    }
    
    return _filePath;
}

- (void) datalistHandle {
    NSData *data = [NSData dataWithContentsOfFile:self.filePath];
    if (!data) {
        CCDebugErrorPrint(@"ill data!");
        return;
    }
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    if (!dict) {
        CCDebugErrorPrint(@"ill dict!");
        return;
    }
    
    NSArray *list = dict[@"list"];
    
    if (!list.count) {
        CCDebugWarningPrint(@"list is empty");
        return;
    }
    
    NSMutableArray *saveList = [NSMutableArray arrayWithCapacity:list.count];
    [list enumerateObjectsUsingBlock:^(NSArray * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        CCDataListItem *item = [CCDataListItem genItem:obj];
        
        if (item) {
            [saveList addObject:item];
        }
    }];
    

    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    
    for (int i = 0; i < saveList.count; i++) {
        CCDataListItem *item = saveList[i];
        
        [realm addObject:item];
    }
    
    [realm commitWriteTransaction];
    

}

- (IBAction)testHandle:(id)sender {
    CCDebugWarningPrint(@"testHandle");

    [self datalistHandle];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}




@end
