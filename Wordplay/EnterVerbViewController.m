//
//  EnterVerbViewController.m
//  Wordplay
//
//  Created by dp on 3/15/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterNounViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    EnterNounViewController *destination = segue.destinationViewController;
    
    destination.verb = self.verbTextField.text;
    destination.adjective = self.adjective;
    destination.name = self.name;
    
}

- (IBAction)onButtonPressed:(id)sender {
    if (![self.verbTextField.text isEqualToString: @""]) {
        [self performSegueWithIdentifier:@"verbSegue" sender:sender];
    }
    
}
@end
