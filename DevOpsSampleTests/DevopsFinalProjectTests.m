//
//  DevopsFinalProjectTests.m
//  DevopsFinalProjectTests
//
//  Created by Soumitra on 25/02/15.
//  Copyright (c) 2015 my company. All rights reserved.
//

#import "DOViewController.h"
#import "DOHomeViewController.h"
#import <XCTest/XCTest.h>

@interface DevopsFinalProjectTests : XCTestCase

@end

@implementation DevopsFinalProjectTests {
    UIApplication *app;
    DOViewController *vcLogin;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    app = [UIApplication sharedApplication];
    vcLogin = (DOViewController*)((UINavigationController*)app.keyWindow.rootViewController).topViewController;
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    
    
    [((UINavigationController*)app.keyWindow.rootViewController) popToRootViewControllerAnimated:YES];
}

//- (void)testExample
//{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//}

- (void)testLoginWithUserSoumitra
{
    [vcLogin.txtUserName setText:@"soumitra"];
    [vcLogin.txtPassword setText:@"password"];
    
    [vcLogin btnLogin:Nil];
    
    UIViewController *vcCurrent = ((UINavigationController*)app.keyWindow.rootViewController).topViewController;
    
//    STAssert([vcCurrent isKindOfClass:[DOViewController class]], @"should have logged in");
    XCTAssert([vcCurrent isKindOfClass:[DOHomeViewController class]], @"should have logged in");
}

- (void)testLoginWithUserNisheeth
{
    [vcLogin.txtUserName setText:@"nisheeth"];
    [vcLogin.txtPassword setText:@"password"];
    
    [vcLogin btnLogin:Nil];
    
    UIViewController *vcCurrent = ((UINavigationController*)app.keyWindow.rootViewController).topViewController;
    
    //    STAssert([vcCurrent isKindOfClass:[DOViewController class]], @"should have logged in");
    XCTAssert([vcCurrent isKindOfClass:[DOHomeViewController class]], @"should have logged in");
}

- (void)testLoginWithUserKiran
{
    [vcLogin.txtUserName setText:@"kiran"];
    [vcLogin.txtPassword setText:@"password"];
    
    [vcLogin btnLogin:Nil];
    
    UIViewController *vcCurrent = ((UINavigationController*)app.keyWindow.rootViewController).topViewController;
    
    //    STAssert([vcCurrent isKindOfClass:[DOViewController class]], @"should have logged in");
    XCTAssert([vcCurrent isKindOfClass:[DOHomeViewController class]], @"should have logged in");
    
    // Testing Git commit :(
}

@end
