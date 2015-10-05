//
//  ViewController.m
//  05
//
//  Created by 鄭涵嚴 on 2015/10/5.
//  Copyright © 2015年 鄭涵嚴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"Forgot your password?"];
    
    [
     attrString setAttributes:@{/*NSFontAttributeName:[UIFont fontWithName:@"Helvetica-Oblique" size:15.0],*/      NSForegroundColorAttributeName:[UIColor grayColor],
            NSUnderlineStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle]} range:NSMakeRange(0,[attrString length])
     ];
    
    [_btnforget setAttributedTitle:attrString forState:UIControlStateNormal];
    [_btncreate setAttributedTitle:attrString forState:UIControlStateNormal];
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(keyboardDidShow:)
//                                                 name:UIKeyboardWillShowNotification
//                                               object:nil];
//    //向 NotificationCenter 申請註冊，在 UIKeyboardWillHideNotification 時，
//    //會呼叫 keyboardWillHide (自訂的) 這個 selector。
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(keyboardWillHide:)
//                                                 name:UIKeyboardWillHideNotification
//                                               object:nil];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

//-(void) keyboardDidShow: (NSNotification *) notification {
//    
//    //取得鍵盤高度
//    NSValue * value = [[notification userInfo] valueForKey:UIKeyboardFrameBeginUserInfoKey];
//    CGFloat keyboardHeight = [value CGRectValue].size.height;
//    //以動畫的方式，將 View 的 Y軸 往上移一個鍵盤高
//    [UIView animateWithDuration:0.3f animations:^
//     {
//         CGRect frame = self.view.frame;
//         frame.origin.y -= keyboardHeight;
//         self.view.frame = frame;
//     }
//     ];
//}
//
//-(void) keyboardWillHide: (NSNotification *) notification {
//    
//    NSValue * value = [[notification userInfo] valueForKey:UIKeyboardFrameEndUserInfoKey];
//    CGFloat keyboardHeight = [value CGRectValue].size.height;
//    
//    [UIView animateWithDuration:0.3f animations:^
//     {
//         CGRect frame = self.view.frame;
//         frame.origin.y += keyboardHeight;
//         self.view.frame = frame;
//     }
//     ];
//}
@end
