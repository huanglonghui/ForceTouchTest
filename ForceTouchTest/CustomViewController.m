//
//  CustomViewController.m
//  ForceTouchTest
//
//  Created by HuangLongHui on 15/11/25.
//  Copyright © 2015年 HuangLongHui. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray <id <UIPreviewActionItem>> *)previewActionItems{
    
    UIPreviewAction *enterPreviewAction = [UIPreviewAction actionWithTitle:@"标记已读"
                                                                     style:UIPreviewActionStyleDefault
                                                                   handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                                       
                                                                       NSLog(@"标记已读");
                                                                   }];
    
    UIPreviewAction *cancelPreviewAction = [UIPreviewAction actionWithTitle:@"删除"
                                                                      style:UIPreviewActionStyleDestructive
                                                                    handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                                        NSLog(@"标记已读");
                                                                    }];
    
    return @[enterPreviewAction, cancelPreviewAction];
}

@end
