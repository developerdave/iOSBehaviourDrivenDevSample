//
//  AppDelegateSpec.m
//  Quiz
//
//  Created by Dave Green on 05/05/2015.
//  Copyright (c) 2015 DeveloperDave. All rights reserved.
//

#import "Specta.h"
#import "Expecta.h"

#import "AppDelegate.h"
#import "QuizViewController.h"


SpecBegin(AppDelegate)

describe(@"AppDelegate", ^{

    it(@"should create an instance of QuizViewController", ^{
        AppDelegate *delegate = [UIApplication sharedApplication].delegate;
        id vc = [[delegate window] rootViewController];
        
        expect(vc).to.beKindOf([QuizViewController class]);
    });
});

SpecEnd