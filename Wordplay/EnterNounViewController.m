//
//  EnterNounViewController.m
//  Wordplay
//
//  Created by dp on 3/15/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "EnterNounViewController.h"
#import "ResultsViewController.h"

@interface EnterNounViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    ResultsViewController *destination = segue.destinationViewController;
    
    destination.noun = self.nounTextField.text;
    destination.verb = self.verb;
    destination.adjective = self.adjective;
    destination.name = self.name;
}

- (IBAction)onButtonPressed:(id)sender {
    if (![self.nounTextField.text isEqualToString: @""]) {
        [self performSegueWithIdentifier:@"nounSegue" sender:sender];
    }
}
@end
