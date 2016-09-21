//
//  EnterNameViewController.m
//  Wordplay
//
//  Created by dp on 3/14/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@end

@implementation EnterNameViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    
    EnterAdjectiveViewController *destination = segue.destinationViewController;
    destination.name = self.nameTextField.text;
}

- (IBAction)onButtonPressed:(id)sender {
    if (![self.nameTextField.text isEqualToString: @""]) {
        [self performSegueWithIdentifier:@"nameSegue" sender:sender];
    }
}
@end
