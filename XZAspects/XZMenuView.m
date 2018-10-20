//
//  XZMenuView.m
//  XZAspects
//
//  Created by kkxz on 2018/10/20.
//  Copyright © 2018年 kkxz. All rights reserved.
//

#import "XZMenuView.h"
@interface XZMenuView()
@property(nonatomic,strong)UIButton * buttonOne;
@end

@implementation XZMenuView
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        self.buttonOne.frame = CGRectMake(0.0f, 0.0f, 60.0f, 40.0f);
        [self addSubview:self.buttonOne];
    }
    return self;
}

-(void)btnClick
{
    [self  buttonOfMenuView:self];
}

#pragma mark - lazy init
@synthesize buttonOne = _buttonOne;
-(UIButton *)buttonOne
{
    if(_buttonOne == nil){
        _buttonOne = [UIButton buttonWithType:UIButtonTypeSystem];
        [_buttonOne setTitle:@"新闻" forState:UIControlStateNormal];
        [_buttonOne.titleLabel setFont:[UIFont systemFontOfSize:14.0f]];
        [_buttonOne setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_buttonOne addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        _buttonOne.backgroundColor = [UIColor clearColor];
    }
    return _buttonOne;
}

@end

@implementation XZMenuView(Aspects)

-(void)buttonOfMenuView:(XZMenuView *)menuView
{
    //
}

@end
