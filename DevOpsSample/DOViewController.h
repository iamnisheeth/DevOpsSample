//
//  DOViewController.h
//  DevopsFinalProject
//
//  Created by Soumitra on 25/02/15.
//  Copyright (c) 2015 my company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DOViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UILabel *lblWarning;

- (IBAction)btnLogin:(id)sender;
@end
