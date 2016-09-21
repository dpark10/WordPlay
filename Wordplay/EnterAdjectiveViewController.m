//
//  EnterAdjectiveViewController.m
//  Wordplay
//
//  Created by dp on 3/14/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    EnterVerbViewController *destination = segue.destinationViewController;
    
    destination.adjective = self.adjectiveTextField.text;
    destination.name = self.name;
    
}

- (IBAction)onButtonPressed:(id)sender {
    if (![self.adjectiveTextField.text isEqualToString: @""]) {
        [self performSegueWithIdentifier:@"adjectiveSegue" sender:sender];
    }
}
@end
