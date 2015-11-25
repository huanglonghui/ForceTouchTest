//
//  ViewController.m
//  ForceTouchTest
//
//  Created by HuangLongHui on 15/11/24.
//  Copyright © 2015年 HuangLongHui. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerForPreviewingWithDelegate:self sourceView:self.view];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint) point
{
    CustomViewController *childVC = [[CustomViewController alloc] init];
    childVC.view.backgroundColor = [UIColor whiteColor];
    
    CGRect rect = CGRectMake(10, point.y - 10, self.view.frame.size.width - 20,40);
    context.sourceRect = rect;
    
    return childVC;
}


- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    [self showViewController:viewControllerToCommit sender:self];
}

@end
