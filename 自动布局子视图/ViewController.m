//
//  ViewController.m
//  自动布局子视图
//
//  Created by zh dk on 2017/8/23.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    superView = [[UIView alloc] init];
    superView.frame = CGRectMake(20, 20, 180, 280);
    superView.backgroundColor = [UIColor blueColor];
    
    lable01 = [[UILabel alloc] init];
    lable01.frame = CGRectMake(0, 0, 40, 40);
    lable01.text = @"1";
    lable01.backgroundColor = [UIColor greenColor];
    
    lable02 = [[UILabel alloc] init];
    lable02.frame = CGRectMake(140, 0, 40, 40);
    lable02.text = @"2";
    lable02.backgroundColor = [UIColor greenColor];
    
    lable03 = [[UILabel alloc] init];
    lable03.frame = CGRectMake(0, 240, 40, 40);
    lable03.text=@"3";
    lable03.backgroundColor = [UIColor greenColor];
    
    lable04 = [[UILabel alloc] init];
    lable04.frame = CGRectMake(140, 240, 40, 40);
    lable04.text = @"4";
    lable04.backgroundColor = [UIColor greenColor];
    
    viewCenter = [[UIView alloc] init];
    viewCenter.frame = CGRectMake(0, 0, superView.bounds.size.width, 40);
    viewCenter.center = CGPointMake(180/2, 280/2);
    viewCenter.backgroundColor = [UIColor orangeColor];
    
    
    [self.view addSubview:superView];
    [superView addSubview:lable01];
    [superView addSubview:lable02];
    [superView addSubview:lable03];
    [superView addSubview:lable04];
    [superView addSubview:viewCenter];
    
    lable01.autoresizingMask = UIViewAutoresizingFlexibleRightMargin;
    lable02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    lable03.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleRightMargin;
    lable04.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleTopMargin;
    viewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth;
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static BOOL isLatge = NO;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    if (isLatge == NO) {
        superView.frame=CGRectMake(20, 20, 300, 400);
    }
    else{
        superView.frame = CGRectMake(20, 20, 180, 280);
    }
    [UIView commitAnimations];
    isLatge = !isLatge;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
