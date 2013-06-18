//
//  BGViewController.h
//  BGMessageSMS
//
//  Created by Bishal Ghimire on 6/18/13.
//  Copyright (c) 2013 Bishal Ghimire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface BGViewController : UIViewController
<MFMessageComposeViewControllerDelegate> {
    
}
/*/Volumes/Time Machine Backups/Work Projects/BGMessageSMS/BGMessageSMS/BGViewController.m:26:37: Assigning to 'id<MFMessageComposeViewControllerDelegate>' from incompatible type 'BGViewController *const __strong'*/

@property (weak, nonatomic) IBOutlet UITextField *txtPhoneNo;
@property (weak, nonatomic) IBOutlet UITextField *txtBody;

@end
