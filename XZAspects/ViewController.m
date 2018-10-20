//
//  ViewController.m
//  XZAspects
//
//  Created by kkxz on 2018/10/20.
//  Copyright © 2018年 kkxz. All rights reserved.
//

#import "ViewController.h"
#import "XZMenuView.h"
#import "Aspects.h"

@interface ViewController ()
@property(nonatomic,strong)XZMenuView * menuView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    self.menuView.frame = CGRectMake((self.view.frame.size.width-60.0f)/2, 150.0f, 60.0f, 40.0f);
    [self.view addSubview:self.menuView];
    
    /**
     *拦截menuView的buttonOfMenuView:方法
     */
    [self.menuView aspect_hookSelector:@selector(buttonOfMenuView:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo>aspects,XZMenuView* menuView){
        NSLog(@"按钮点击事件");
        
    } error:nil];
}

#pragma mark - lazy init
@synthesize menuView = _menuView;
-(XZMenuView *)menuView
{
    if(!_menuView){
        _menuView = [[XZMenuView alloc] init];
        _menuView.backgroundColor = [UIColor clearColor];
    }
    return _menuView;
}

@end
