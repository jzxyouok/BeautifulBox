//
//  BaseTabBaeController.m
//  BeautifulBox
//
//  Created by MilesMeatheson on 17/1/31.
//  Copyright © 2017年 MilesMeatheson. All rights reserved.
//

#import "BaseTabBaeController.h"
#import "FirstViewController.h"
#import "GoodsViewController.h"
#import "HomeViewController.h"
#import "MineViewController.h"


#define kClassKey  @"classController"
#define kItemTitle @"itemTitle"
#define kItemImage @"itemImage"

@implementation BaseTabBaeController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *itemsArray = @[
                            @{kClassKey:@"FirstViewController",
                              kItemTitle:@"首页",
                              kItemImage:@"fff"},
                            
                            @{kClassKey:@"GoodsViewController",
                              kItemTitle:@"商品",
                              kItemImage:@""},
                            
                            @{kClassKey:@"HomeViewController",
                              kItemTitle:@"购物车",
                              kItemImage:@""},
                            
                            @{kClassKey:@"MineViewController",
                              kItemTitle:@"我的",
                              kItemImage:@""},
                            ];
    
    for (int i = 0; i< itemsArray.count ;  i++) {
        
        NSDictionary *dic    = itemsArray[i];
        
        UIViewController *conVC =  [NSClassFromString(dic[kClassKey]) new];
                                                     
        
        UINavigationController   *nav = [[UINavigationController alloc]initWithRootViewController:conVC];
        nav.navigationBarHidden = YES;
        UITabBarItem *tabBarItem = nav.tabBarItem;
        
        tabBarItem.title = dic[kItemTitle];
//        tabBarItem.image  = dic[kItemImage];
        
        [self addChildViewController:nav];
    }
    
    
    
    
    
}
@end
