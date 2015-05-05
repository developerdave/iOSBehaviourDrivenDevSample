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

@property (nonatomic) int currentQuestionIndex;
@property (weak, nonatomic) IBOutlet UIButton *questionButton;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@property (nonatomic, copy) NSArray *questions;

- (IBAction)showQuestion:(id)sender;

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
    
    context(@"when viewing a question", ^{
        
        it(@"should set current question index", ^{
            [_vc showQuestion:nil];
            
            expect(_vc.currentQuestionIndex).to.beGreaterThan(0);
        });
        
        it(@"should cycle around questions", ^{
            // Work out how many questions there are
            int numberOfQuestions = [_vc.questions count];
            
            // Make sure we have questions
            expect(numberOfQuestions).to.beGreaterThan(0);
            
            // Move straight to the last question
            _vc.currentQuestionIndex = numberOfQuestions;
            
            // Now show the next question
            [_vc showQuestion:nil];
            
            // We should now be viewing the first question
            expect(_vc.currentQuestionIndex).to.equal(0);
        });
        
        it(@"should display the question", ^{
            [_vc showQuestion:nil];
            
            expect(_vc.questionLabel.text).to.equal(_vc.questions[_vc.currentQuestionIndex]);
        });
    });
    
});

SpecEnd