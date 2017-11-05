//
//  ViewController2.h
//  Apka
//
//  Created by qwerty123456 on 11/5/17.
//  Copyright © 2017 qwerty123456. All rights reserved.
//


#import <UIKit/UIKit.h>

@class ViewController2;

@class ViewControllerB;
@protocol ViewController2Delegate <NSObject>
- (void)addItemViewController:(ViewController2 *)controller
        didFinishEnteringItem:(NSString *)item;
@end



@interface ViewController2 : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameInputField;
@property (nonatomic, weak) NSString *surname;
@property (nonatomic, weak) id <ViewController2Delegate>delegate;
@end



