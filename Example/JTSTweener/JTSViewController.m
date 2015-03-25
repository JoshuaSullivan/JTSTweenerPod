//
//  ViewController.m
//  JTSTweener
//
//  Created by Joshua Sullivan on 2/26/15.
//  Copyright (c) 2015 Joshua Sullivan. All rights reserved.
//

#import "JTSViewController.h"
#import <JTSTweener/JTSTweener.h>

@interface JTSViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@end

@implementation JTSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startTapped:(id)sender
{
    self.startButton.enabled = NO;
    NSDictionary *tweenOptions = @{
            JTSTweenerOptions.delay : @(0.25),
            JTSTweenerOptions.repeatCount : @(3)
    };
    [JTSTweener tweenerWithDuration:4.0
                      startingValue:0.0f
                        endingValue:100.0f
                        easingCurve:[JTSEaseQuadratic easeInOut]
                            options:tweenOptions
                      progressBlock:^(JTSTweener *tween, CGFloat value, NSTimeInterval elapsedTime) {
                          self.label.text = [NSString stringWithFormat:@"%0.1f", value];
                      }
                    completionBlock:^(JTSTweener *tween, BOOL completedSuccessfully) {
                        self.startButton.enabled = YES;
                    }];

}

@end
