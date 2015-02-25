//
//  DOViewController.m
//  DevopsFinalProject
//
//  Created by Soumitra on 25/02/15.
//  Copyright (c) 2015 my company. All rights reserved.
//

#import "DOViewController.h"

@interface DOViewController ()
{
    NSMutableArray *arrValidUsernames;
}

@end

@implementation DOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrValidUsernames = [[NSMutableArray alloc] initWithObjects:@"soumitra",@"nisheeth" , nil];
}

- (void) viewWillAppear:(BOOL)animated {
    self.lblWarning.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(id)sender {
    
    NSString *strUserName = self.txtUserName.text;
    NSString *strPassword = self.txtPassword.text;
    
    [self.view endEditing:YES];
    
    if ([arrValidUsernames containsObject:strUserName] && [strPassword isEqualToString:@"password"]) {
        self.lblWarning.text = @"";
        [self performSegueWithIdentifier:@"pushLogin2Home" sender:self];
    }
    else {
        self.lblWarning.text = @"User does not exist!";
    }
        
}
@end
