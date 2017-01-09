//
//  KYPickerView.m
//  KYAlterPicker
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import "KYPickerView.h"
#import "KYAlertPickerController.h"
#import "KYDatePickerController.h"

@implementation KYPickerView
/**
 自定义选择器

 @param target target
 @param options Picker要显示的数据
 @param title Alter的Title
 @param block block
 */
+ (void)showPickerWithTarget:(id)target Options:(NSArray *)options title:(NSString *)title selectionBlock:(void (^)(NSString *selectedOption))block{
    KYAlertPickerController *alertController = [KYAlertPickerController alertControllerWithTitle:title message:@"\n\n\n\n\n\n\n\n\n\n\n"preferredStyle:UIAlertControllerStyleActionSheet];
    alertController.options = options;
    alertController.pickerTitle = title;
    [alertController setPickerDoneBlock:block];
    [target presentViewController:alertController animated:YES completion:nil];
}

/**
 时间选择器

 @param target target
 @param title Picker要显示的数据
 @param mode Alter的Title
 @param block block
 */
+ (void)showDatePickerWithTarget:(id)target Title:(NSString *)title dateMode:(UIDatePickerMode)mode selectionBlock:(void (^)(NSDate *))block{
    KYDatePickerController *alertController = [KYDatePickerController alertControllerWithTitle:title message:@"\n\n\n\n\n\n\n\n\n\n\n"preferredStyle:UIAlertControllerStyleActionSheet];
    alertController.pickerTitle = title;
    alertController.datePickerView.datePickerMode = mode;
    [alertController setDatePickerDoneBlock:block];
    [target presentViewController:alertController animated:YES completion:nil];
}
@end
