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


@interface QuizViewController (Specs)

@property (weak, nonatomic) IBOutlet UIButton *questionButton;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@end


SpecBegin(QuizViewController)

describe(@"QuizViewController", ^{
    
    __block QuizViewController *_vc;
    beforeEach(^{
        AppDelegate *delegate = [UIApplication sharedApplication].delegate;
        _vc = (QuizViewController *)[[delegate window] rootViewController];
    });
    
    
    context(@"when setting up the view", ^{
       
        it(@"should have an outlet for the question label", ^{
            expect(_vc.questionLabel).toNot.beNil;
        });
        
        it(@"should wire up the question button", ^{
            UIButton *button = _vc.questionButton;
            NSArray *actions = [button actionsForTarget:_vc forControlEvent:UIControlEventTouchUpInside];
            
            expect(actions[0]).to.equal(@"showQuestion:");
        });
    });
    
});

SpecEnd