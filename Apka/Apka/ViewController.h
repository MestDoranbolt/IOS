//
//  ViewController.h
//  Apka
//
//  Created by qwerty123456 on 11/5/17.
//  Copyright © 2017 qwerty123456. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController2.h"

@interface ViewController : UIViewController
<ViewController2Delegate>

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@property (nonatomic, weak) IBOutlet UITextField *inputField2;
@end

