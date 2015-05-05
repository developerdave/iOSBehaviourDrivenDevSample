//
//  QuizViewControllerSpec.m
//  Quiz
//
//  Created by Dave Green on 05/05/2015.
//  Copyright (c) 2015 DeveloperDave. All rights reserved.
//


#import "Specta.h"
#import "Expecta.h"

#import "AppDelegate.h"
#import "QuizViewController.h"


SpecBegin(QuizViewController)

describe(@"QuizViewController", ^{
    
    __block QuizViewController *_vc;
    beforeEach(^{
        AppDelegate *delegate = [UIApplication sharedApplication].delegate;
        _vc = (QuizViewController *)[[delegate window] rootViewController];
    });
    
});

SpecEnd