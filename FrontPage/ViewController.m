//
//  ViewController.m
//  FrontPage
//
//  Created by Zhaoyu Li on 5/29/15.
//  Copyright (c) 2015 Zhaoyu Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *frontCircle;
@property (weak, nonatomic) IBOutlet UIImageView *backCircle;

@end

@implementation ViewController

- (void)firstArc {
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer = [CALayer layer];
    layer.contents = (__bridge id)([UIImage imageNamed:@"daddian"].CGImage);
    layer.bounds = CGRectMake(0, 0, 20, 20);
    
    //    layer.position = CGPointMake(0,0);
    [self.frontCircle.layer addSublayer:layer];
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(14.63, 21.33)];
    [bezierPath addCurveToPoint: CGPointMake(14.64, 3.66) controlPoint1: CGPointMake(-4.88, 16.46) controlPoint2: CGPointMake(-4.88, 8.54)];
    [bezierPath addLineToPoint: CGPointMake(14.8, 3.62)];
    [bezierPath addCurveToPoint: CGPointMake(19.22, 2.65) controlPoint1: CGPointMake(16.22, 3.27) controlPoint2: CGPointMake(17.69, 2.95)];


    
    CGFloat scale = [self getScale];
    
    [bezierPath applyTransform:CGAffineTransformMakeScale(scale, scale)];
    
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyframe.path = bezierPath.CGPath;
    
    keyframe.duration = 4;
    keyframe.additive = YES;
    keyframe.repeatCount = HUGE_VALF;
    keyframe.calculationMode = kCAAnimationPaced;
    keyframe.rotationMode = kCAAnimationRotateAuto;
    
    
    [layer addAnimation:keyframe forKey:nil];
}

- (void)secondArc {
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer = [CALayer layer];
    layer.contents = (__bridge id)([UIImage imageNamed:@"xiaodian"].CGImage);
    layer.bounds = CGRectMake(0, 0, 16, 16);
    
    //    layer.position = CGPointMake(0,0);
    [self.backCircle.layer addSublayer:layer];
    
    
    //// Bezier Drawing
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(19.22, 2.65)];
    [bezier2Path addCurveToPoint: CGPointMake(28.05, 1.27) controlPoint1: CGPointMake(22, 2.1) controlPoint2: CGPointMake(24.96, 1.64)];
    [bezier2Path addCurveToPoint: CGPointMake(73.79, 1.5) controlPoint1: CGPointMake(42.48, -0.5) controlPoint2: CGPointMake(59.6, -0.42)];

    
    
    CGFloat scale = [self getScale];
    
    [bezier2Path applyTransform:CGAffineTransformMakeScale(scale, scale)];
    
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyframe.path = bezier2Path.CGPath;
    
    keyframe.duration = 4;
    keyframe.additive = YES;
    keyframe.repeatCount = HUGE_VALF;
    keyframe.calculationMode = kCAAnimationPaced;
    keyframe.rotationMode = kCAAnimationRotateAuto;
    
    
    [layer addAnimation:keyframe forKey:nil];
}

- (void)threeArc {
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer = [CALayer layer];
    layer.contents = (__bridge id)([UIImage imageNamed:@"xiaodian"].CGImage);
    layer.bounds = CGRectMake(0, 0, 16, 16);
    
    //    layer.position = CGPointMake(0,0);
    [self.frontCircle.layer addSublayer:layer];
    
    
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(73.79, 1.5)];
    [bezier2Path addCurveToPoint: CGPointMake(85.36, 3.66) controlPoint1: CGPointMake(77.95, 2.06) controlPoint2: CGPointMake(81.85, 2.78)];
    [bezier2Path addCurveToPoint: CGPointMake(85.36, 21.34) controlPoint1: CGPointMake(104.88, 8.54) controlPoint2: CGPointMake(104.88, 16.46)];
    [bezier2Path addCurveToPoint: CGPointMake(81.33, 22.24) controlPoint1: CGPointMake(84.06, 21.66) controlPoint2: CGPointMake(82.72, 21.96)];


    
    
    
    CGFloat scale = [self getScale];
    
    [bezier2Path applyTransform:CGAffineTransformMakeScale(scale, scale)];
    
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyframe.path = bezier2Path.CGPath;
    
    keyframe.duration = 4;
    keyframe.additive = YES;
    keyframe.repeatCount = HUGE_VALF;
    keyframe.calculationMode = kCAAnimationPaced;
    keyframe.rotationMode = kCAAnimationRotateAuto;
    
    
    [layer addAnimation:keyframe forKey:nil];
}


- (void)fourArc {
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer = [CALayer layer];
    layer.contents = (__bridge id)([UIImage imageNamed:@"xiaodian"].CGImage);
    layer.bounds = CGRectMake(0, 0, 16, 16);
    
    //    layer.position = CGPointMake(0,0);
    [self.frontCircle.layer addSublayer:layer];
    
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(81.33, 22.24)];
    [bezier2Path addCurveToPoint: CGPointMake(14.64, 21.34) controlPoint1: CGPointMake(61.69, 26.2) controlPoint2: CGPointMake(32.88, 25.9)];

    
    
    CGFloat scale = [self getScale];
    
    [bezier2Path applyTransform:CGAffineTransformMakeScale(scale, scale)];
    
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyframe.path = bezier2Path.CGPath;
    
    keyframe.duration = 4;
    keyframe.additive = YES;
    keyframe.repeatCount = HUGE_VALF;
    keyframe.calculationMode = kCAAnimationPaced;
    keyframe.rotationMode = kCAAnimationRotateAuto;
    
    
    [layer addAnimation:keyframe forKey:nil];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self firstArc];
    [self secondArc];
    [self threeArc];
    [self fourArc];

    
    
    
    
    
}

-(CGFloat)getScale{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    
    CGFloat scale = screenWidth * 0.9 / 100;
    
    return scale;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
