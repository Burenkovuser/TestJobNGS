//
//  ServerManager.m
//  TestJobNGS
//
//  Created by Vasilii on 24.03.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ServerManager.h"
//#import

@implementation ServerManager

+(ServerManager*) sharedManger {
    
    static ServerManager* manager = nil;
  
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[ServerManager alloc] init];
    });
    return manager;
}

@end
