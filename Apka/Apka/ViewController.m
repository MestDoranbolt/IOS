//
//  ViewController.m
//  Apka
//
//  Created by qwerty123456 on 11/5/17.
//  Copyright © 2017 qwerty123456. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Kacper";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@ We have the same name", yourName];
                   }else {
                       message = [NSString stringWithFormat:@"Hello %@", yourName];
                   }
                   self.messageLabel.text = message;
}


          
          
-(void)prepareForSegue:(UIStoryboardSegue*)segue
                sender:(id)sender{
    if([segue.identifier isEqualToString:@"sendSurnameSegue"]){
        ViewController2 *controller = (ViewController2 *)segue.destinationViewController;
        controller.surname = self.inputField2.text;
    
    controller.delegate = self;
    //[[self navigationController] pushViewController: ViewController2 animated:YES];
        
    }
    
}
                   

- (void)addItemViewController:(ViewController2 *)controller
        didFinishEnteringItem:(NSString *)item
{
    NSLog(@"This was returned from SecondViewController %@",item);
    self.inputField2.text = item;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
