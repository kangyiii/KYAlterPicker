# KYAlterPickerDemo

![演示动画](https://github.com/kangyiii/KYAlterPickerDemo/blob/master/%E6%BC%94%E7%A4%BA%E5%8A%A8%E7%94%BB.gif )  

###使用范例:
```
//使用方式1
NSArray *options = @[@"1个月",@"2个月",@"3个月", @"4个月", @"5个月", @"6个月", @"7个月", @"8个月", @"9个月", @"10个月", @"11个月", @"12个月"];
[KYPickerView showPickerWithTarget:self Options:options title:@"测试的Title" selectionBlock:^(NSString *selectedOption) {
  NSLog(@"%@",selectedOption);    
}];

//使用方式2
[KYPickerView showDatePickerWithTarget:self Title:@"测试的Title" dateMode:UIDatePickerModeDate selectionBlock:^(NSDate *selectedDate) {
  NSLog(@"%@",selectedDate);
}];
```
