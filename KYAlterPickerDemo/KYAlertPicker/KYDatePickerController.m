//
//  KYDatePickerController.m
//  KYAlterPicker
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import "KYDatePickerController.h"

@interface KYDatePickerController ()

@end

@implementation KYDatePickerController
- (void)createPickerView {
    self.datePickerView = [[UIDatePicker alloc] init];
    self.datePickerView.clipsToBounds = YES;
    [self.view addSubview:self.datePickerView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGFloat screenWidth = self.view.frame.size.width;
    self.datePickerView.frame = CGRectMake(0, self.toolbar.bounds.size.height, screenWidth, 180);
}

- (void)pickerDone:(id)sender {
    if (self.datePickerDoneBlock) {
        self.datePickerDoneBlock(self.datePickerView.date);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
