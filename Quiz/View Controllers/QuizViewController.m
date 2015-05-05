//
//  QuizViewController.m
//  Quiz
//
//  Created by Dave Green on 05/05/2015.
//  Copyright (c) 2015 DeveloperDave. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIButton *questionButton;

@property (copy, nonatomic) NSArray *questions;

@end

@implementation QuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        // Create an array filled with questions
        self.questions = @[
                            @"From what is cognac made?",
                            @"What is 7+7?",
                            @"What is the capital of Vermont?"
                           ];
    }
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    // Step to the next question
    self.currentQuestionIndex++;
    
    // Am I past the last question?
    if (self.currentQuestionIndex >= [self.questions count])
    {
        // Go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // Display the string in the question label
    self.questionLabel.text = question;
}

@end
