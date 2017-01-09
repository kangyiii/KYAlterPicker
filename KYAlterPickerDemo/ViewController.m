//
//  ViewController.m
//  KYAlterPickerDemo
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import "ViewController.h"
#import "KYPickerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)BtnClick1:(UIButton *)sender {
    NSArray *options = @[@"1个月",@"2个月",@"3个月", @"4个月", @"5个月", @"6个月", @"7个月", @"8个月", @"9个月", @"10个月", @"11个月", @"12个月"];
    [KYPickerView showPickerWithTarget:self Options:options title:@"测试的Title" selectionBlock:^(NSString *selectedOption) {
        NSLog(@"%@",selectedOption);
        self.testLable.text = selectedOption;
    }];
}

- (IBAction)BtnClick2:(UIButton *)sender {
    /**
     dateMode:
     UIDatePickerModeTime
     UIDatePickerModeDate
     UIDatePickerModeDateAndTime
     UIDatePickerModeCountDownTimer
     */
    [KYPickerView showDatePickerWithTarget:self Title:@"测试的Title" dateMode:UIDatePickerModeDate selectionBlock:^(NSDate *selectedDate) {
        NSLog(@"%@",selectedDate);
        self.testLable.text = [NSString stringWithFormat:@"%@",selectedDate];
    }];
}

@end
