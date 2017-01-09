//
//  KYDatePickerController.h
//  KYAlterPicker
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import "KYAlertPickerController.h"

@interface KYDatePickerController : KYAlertPickerController

@property (nonatomic, copy) void (^datePickerDoneBlock)(NSDate *selectedDate);

@property (nonatomic, strong) UIDatePicker *datePickerView;

@end
