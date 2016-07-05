//
//  ViewController.m
//  test
//
//  Created by Jamie Jyhyun Song on 7/4/16.
//  Copyright (c) 2016 JSONG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Formatting button to connect to the URL submitted when button is pressed
//Must include http:// when writing the URL and get rid of the keyboard by pressing the lower half of the screen

- (IBAction)buttonTouch:(id)sender {
    //allow text written in text field to connect to str
    NSString *str =[_textField text];
    //change str to NSURLRequest to allow request to connect to str
    NSURLRequest *request =
    [NSURLRequest requestWithURL:[NSURL URLWithString:str]];
    //call the altered request's information to web view to open web page
    [_webView loadRequest:request];
}
//setText method declares the user to input a value in text property in the textView. It declares to apply the method after reading the text value in text field. 
- (IBAction)inputTextToTextView:(id)sender {
    [_textView setText:[_textField text]];
}
@end
