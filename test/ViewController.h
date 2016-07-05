//
//  ViewController.h
//  test
//
//  Created by Jamie Jyhyun Song on 7/4/16.
//  Copyright (c) 2016 JSONG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)buttonTouch:(id)sender;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)inputTextToTextView:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UISwitch *switchButton;

- (IBAction)switchTouch:(id)sender;

@end

