//
//  ResultsViewController.m
//  Wordplay
//
//  Created by dp on 3/14/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "ResultsViewController.h"
#import "EnterAdjectiveViewController.h"
#import "EnterNameViewController.h"



@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *message = [NSString stringWithFormat:@"%@ is %@ and can %@ the %@.",
                                  self.name,
                                  self.adjective,
                                  self.verb,
                                  self.noun];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:message];
    NSArray <NSString *> *stringsToBold = @[self.name, self.adjective, self.verb, self.noun];
    NSLog(@"%@", stringsToBold);

    UIFont *boldFont = [UIFont boldSystemFontOfSize:20];
    
    for (NSString *string in stringsToBold) {
        NSString *boldString = string;
        NSRange boldRange = [message rangeOfString:boldString];
        [attributedString addAttribute:NSFontAttributeName
                                 value:boldFont
                                 range:boldRange];
    }
    
    self.resultsTextView.attributedText = attributedString;
}





@end
