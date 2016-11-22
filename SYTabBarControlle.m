//
//  SYTabBarControlle.m
//  synthesizeDemo
//
//  Created by Xiaosiyu on 16/11/17.
//  Copyright © 2016年 肖丝雨. All rights reserved.
//

#import "SYTabBarControlle.h"
#import "SYHomeViewController.h"
#import "SYSearchViewController.h"
#import "SYWebViewController.h"
#import "SYMineViewController.h"

#import "SYNavigationController.h"

@interface SYTabBarControlle ()

@end

@implementation SYTabBarControlle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initTabBarControllers];
    // Do any additional setup after loading the view.
}

// Initialize the TabBar.
-(void)initTabBarControllers {
    SYHomeViewController * homeVC = [[SYHomeViewController alloc]init];
    [self initTabBarWithControllers:homeVC title:@"主页" andImage:@"tabbar_mainframe.png" andSelectImage:@"tabbar_mainframeHL.png"];
    
    SYSearchViewController * searchVC = [[SYSearchViewController alloc]init];
    [self initTabBarWithControllers:searchVC title:@"搜索" andImage:@"tabbar_discover.png" andSelectImage:@"tabbar_discoverHL.png"];
    
    SYWebViewController *webVC = [[SYWebViewController alloc]init];
    [self initTabBarWithControllers:webVC title:@"网页" andImage:@"tabbar_contacts.png" andSelectImage:@"tabbar_contactsHL.png"];
    
    SYMineViewController * mineVC = [[SYMineViewController alloc] init];
    [self initTabBarWithControllers:mineVC title:@"我的" andImage:@"tabbar_me.png" andSelectImage:@"tabbar_meHL.png"];
}

//setting TabBar.
-(void)initTabBarWithControllers:(UIViewController *)vc title:(NSString *)title andImage:(NSString *)imageName andSelectImage:(NSString *)selectedImageName {
    
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //2.update tabbar text color
    NSMutableDictionary* dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = SY_TabBar_Color(9, 187, 7);
    [vc.tabBarItem setTitleTextAttributes:dic forState:UIControlStateSelected];
    dic[NSForegroundColorAttributeName] = SY_TabBar_Color(168, 179, 168);
    [vc.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    
    SYNavigationController *navigationVC = [[SYNavigationController alloc]initWithRootViewController:vc];
    vc.title = title;
    
    [self addChildViewController:navigationVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
