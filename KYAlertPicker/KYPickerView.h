//
//  KYPickerView.h
//  KYAlterPicker
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KYPickerView : NSObject



+ (void)showPickerWithTarget:(id)target Options:(NSArray *)options title:(NSString *)title selectionBlock:(void (^)(NSString *selectedOption))block;

+ (void)showDatePickerWithTarget:(id)target Title:(NSString *)title dateMode:(UIDatePickerMode)mode selectionBlock:(void (^)(NSDate *selectedDate))block;

@end
