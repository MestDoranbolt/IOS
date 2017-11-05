//
//  ViewController2.m
//  Apka
//
//  Created by qwerty123456 on 11/5/17.
//  Copyright © 2017 qwerty123456. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

@synthesize surname = _surname;

- (IBAction)sendSurname{
    NSString *itemToPassBack = self.modifiedSurnameInputField.text;
    [self.delegate addItemViewController:self
                   didFinishEnteringItem:itemToPassBack];
    [self dismissViewControllerAnimated:YES completion:nil];}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modifiedSurnameInputField.text = self.surname;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
