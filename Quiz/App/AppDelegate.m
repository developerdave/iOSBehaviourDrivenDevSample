//
//  AppDelegate.m
//  Quiz
//
//  Created by Dave Green on 24/04/2015.
//  Copyright (c) 2015 DeveloperDave. All rights reserved.
//

#import "AppDelegate.h"
#import "QuizViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    QuizViewController *quizVC = [[QuizViewController alloc] init];
    self.window.rootViewController = quizVC;
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

@end