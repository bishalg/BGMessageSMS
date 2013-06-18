//
//  BGViewController.m
//  BGMessageSMS
//
//  Created by Bishal Ghimire on 6/18/13.
//  Copyright (c) 2013 Bishal Ghimire. All rights reserved.
//

#import "BGViewController.h"

@interface BGViewController ()

@end

@implementation BGViewController

#pragma mark -
#pragma mark Outlets

- (IBAction)btnSend:(id)sender {
    MFMessageComposeViewController *controller = [[MFMessageComposeViewController alloc] init];
	if([MFMessageComposeViewController canSendText])
	{
		controller.body = self.txtBody.text;
		controller.recipients = [NSArray arrayWithObjects:self.txtPhoneNo.text, nil];
		controller.messageComposeDelegate = self;
        [self presentViewController:controller animated:YES completion:^{
            NSLog(@"presntViewController Completed");
        }];
	}
    [self dismissKeyBoard];
}

-(void) dismissKeyBoard {
    [self.txtPhoneNo resignFirstResponder];
    [self.txtBody resignFirstResponder];
}

#pragma mark -
#pragma mark MessageComposeDelegate

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller
                didFinishWithResult:(MessageComposeResult)result {
    switch (result) {
		case MessageComposeResultCancelled:
			NSLog(@"Cancelled");
			break;
		case MessageComposeResultFailed:
            NSLog(@"MessageComposeResultFailed");
			break;
		case MessageComposeResultSent:
            NSLog(@"MessageComposeResultSent");
			break;
		default:
			break;
	}
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"message Controller Dismissed");
    }];
    [self dismissKeyBoard];
}

#pragma mark View

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
