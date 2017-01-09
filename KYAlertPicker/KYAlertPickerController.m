//
//  AlertPickerController.m
//  KYAlterPicker
//
//  Created by 易之盛 on 17/1/9.
//  Copyright © 2017年 康义. All rights reserved.
//

#import "KYAlertPickerController.h"

@interface KYAlertPickerController ()<UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation KYAlertPickerController

- (instancetype)init    {
    self = [super init];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    self.toolbar = [[UIToolbar alloc] init];
    self.toolbar.clipsToBounds = YES;
    
    //自定义取消按钮，可自定义自己喜欢的样式
    UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelBtn.frame = CGRectMake(0, 5, 30, 30);
    [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cancelBtn addTarget:self action:@selector(pickerCancel:) forControlEvents:UIControlEventTouchUpInside];
    [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
    cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]initWithCustomView:cancelBtn];
    
    //自定义取消按钮，可自定义自己喜欢的样式
    UIButton *doneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    doneBtn.frame = CGRectMake(0, 5, 30, 30);
    [doneBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [doneBtn addTarget:self action:@selector(pickerDone:) forControlEvents:UIControlEventTouchUpInside];
    [doneBtn setTitle:@"完成" forState:UIControlStateNormal];
    doneBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithCustomView:doneBtn];
    
    //空格
    UIBarButtonItem *flexibleButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    //标题按钮
    self.titleButton = [[UIBarButtonItem alloc] initWithTitle:self.pickerTitle style:UIBarButtonItemStylePlain target:nil action:nil];
    self.titleButton.tintColor = [UIColor blackColor];
    
    //设置UIToolBar
    [self.toolbar setItems:@[cancelButton,flexibleButton,self.titleButton,flexibleButton,doneButton]];
    
    //添加ToolBar
    [self.view addSubview:self.toolbar];
    
    [self createPickerView];
}

- (void)createPickerView {
    self.pickerView = [[UIPickerView alloc] init];
    self.pickerView.clipsToBounds = YES;
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    self.pickerView.showsSelectionIndicator = YES;
    [self.view addSubview:self.pickerView];
}

- (void)setOptions:(NSArray *)options {
    _options = options;
    if ([options count] > 0) {
        self.selectedOption = self.options.firstObject;
    }
}

- (void)setPickerTitle:(NSString *)pickerTitle {
    _pickerTitle = pickerTitle;
    self.titleButton.title = pickerTitle;
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGFloat screenWidth = self.view.frame.size.width;
    self.toolbar.frame = CGRectMake(0, 12, screenWidth, 0);
    [self.toolbar sizeToFit];
    self.pickerView.frame = CGRectMake(0, self.toolbar.bounds.size.height, screenWidth, 180);
}
#pragma mark - UIPickerView DataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.options.count;
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component   {
    return self.options[row];
}

#pragma mark - UIPickerView Delegate

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component  {
    self.selectedOption = self.options[row];
}

#pragma mark -

- (void)pickerDone:(id)sender {
    if (self.pickerDoneBlock) {
        self.pickerDoneBlock(self.selectedOption);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pickerCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
