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
    //bring in Image added to folder
    [_imageView setImage:[UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"IMG_7554" ofType:@"JPG"]]];
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
//If On when switch is pressed, show UIImageView and if not, it disappears. Alpha value shows the transparency (0.0 being fully transparent, i.e. not present and 1.0 being fully opaque)

- (IBAction)switchTouch:(id)sender {
    if([_switchButton isOn])
    {
        [_imageView setAlpha:1.0f];
    }
    else
    {
        [_imageView setAlpha:0.0f];
    }
    
}
@end
