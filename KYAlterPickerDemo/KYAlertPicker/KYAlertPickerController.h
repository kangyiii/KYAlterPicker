//
//  AlertPickerController.h
//  KYAlterPicker
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KYAlertPickerController : UIAlertController

@property (nonatomic, strong) UIToolbar *toolbar;
@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) NSString *pickerTitle;
@property (nonatomic, strong) UIBarButtonItem *titleButton;
@property (nonatomic, strong) NSArray *options;
@property (nonatomic, strong) NSString *selectedOption;
@property (nonatomic, copy) void (^pickerDoneBlock)(NSString *selectedOption);

@end
