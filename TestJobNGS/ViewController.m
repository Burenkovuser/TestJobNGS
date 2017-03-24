//
//  ViewController.m
//  TestJobNGS
//
//  Created by Vasilii on 24.03.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) loadData {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"http://rabota.ngs.ru/api/v1/vacancies" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
