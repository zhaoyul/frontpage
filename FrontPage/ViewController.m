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

-(void)drawArcWithPath:(UIBezierPath *) path
    withDuration:(CGFloat)duration
              withSize:(CGSize) size
         withImageName:(NSString*) imageName
          onView:(UIView*) view
     wishStartPosition:(CGPoint) startPosition{
    
    CALayer *layer = [CALayer layer];
    layer.contents = (__bridge id)([UIImage imageNamed:imageName].CGImage);
    layer.bounds = CGRectMake(0, 0, size.width, size.height);
    [view.layer addSublayer:layer];
    
    
    CGFloat scale = [self getScale];
    
    [path applyTransform:CGAffineTransformMakeScale(scale, scale)];
    
//    layer.position = CGPointMake(startPosition.x * scale, startPosition.y *scale);
    
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    
    keyframe.path = path.CGPath;
    
    keyframe.duration = duration;
    keyframe.additive = YES;
    keyframe.repeatCount = HUGE_VALF;
    keyframe.calculationMode = kCAAnimationPaced;
    keyframe.rotationMode = kCAAnimationRotateAuto;
    
    
    [layer addAnimation:keyframe forKey:nil];

}



- (void)firstArcReverse:(BOOL) isReverse {
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    CGPoint startPosition = CGPointMake(14.63, 21.33);
    [bezierPath moveToPoint: startPosition];
    [bezierPath addCurveToPoint: CGPointMake(14.64, 3.66) controlPoint1: CGPointMake(-4.88, 16.46) controlPoint2: CGPointMake(-4.88, 8.54)];
    [bezierPath addLineToPoint: CGPointMake(14.8, 3.62)];
    [bezierPath addCurveToPoint: CGPointMake(19.22, 2.65) controlPoint1: CGPointMake(16.22, 3.27) controlPoint2: CGPointMake(17.69, 2.95)];
    
    if (isReverse) {
        bezierPath = bezierPath.bezierPathByReversingPath;
    }
    
    [self drawArcWithPath:bezierPath withDuration:1.0 withSize:CGSizeMake(25, 25) withImageName:@"dadian" onView:self.frontCircle wishStartPosition:startPosition];
    
    
   }

- (void)secondArcReverse:(BOOL) isReverse {
       //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    CGPoint startPosition = CGPointMake(19.22, 2.65);

    [bezier2Path moveToPoint: CGPointMake(19.22, 2.65)];
    [bezier2Path addCurveToPoint: CGPointMake(28.05, 1.27) controlPoint1: CGPointMake(22, 2.1) controlPoint2: CGPointMake(24.96, 1.64)];
    [bezier2Path addCurveToPoint: CGPointMake(73.79, 1.5) controlPoint1: CGPointMake(42.48, -0.5) controlPoint2: CGPointMake(59.6, -0.42) ];

    
    if (isReverse) {
        bezier2Path = bezier2Path.bezierPathByReversingPath;
    }
    

    [self drawArcWithPath:bezier2Path withDuration:1.0 withSize:CGSizeMake(25, 25) withImageName:@"xiaodian" onView:self.backCircle wishStartPosition:startPosition];

}

- (void)threeArcReverse:(BOOL) isReverse {
    
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    CGPoint startPosition = CGPointMake(73.79, 1.5);

    [bezier2Path moveToPoint: startPosition];
    [bezier2Path addCurveToPoint: CGPointMake(85.36, 3.66) controlPoint1: CGPointMake(77.95, 2.06) controlPoint2: CGPointMake(81.85, 2.78)];
    [bezier2Path addCurveToPoint: CGPointMake(85.36, 21.34) controlPoint1: CGPointMake(104.88, 8.54) controlPoint2: CGPointMake(104.88, 16.46)];
    [bezier2Path addCurveToPoint: CGPointMake(81.33, 22.24) controlPoint1: CGPointMake(84.06, 21.66) controlPoint2: CGPointMake(82.72, 21.96)];


    if (isReverse) {
        bezier2Path = bezier2Path.bezierPathByReversingPath;
    }
    
    
       [self drawArcWithPath:bezier2Path withDuration:1.0 withSize:CGSizeMake(25, 25) withImageName:@"xiaodian" onView:self.frontCircle wishStartPosition:startPosition];
}


- (void)fourArcReverse:(BOOL) isReverse {
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    CGPoint startPosition = CGPointMake(81.33, 22.24);

    [bezier2Path moveToPoint: CGPointMake(81.33, 22.24)];
    [bezier2Path addCurveToPoint: CGPointMake(14.64, 21.34) controlPoint1: CGPointMake(61.69, 26.2) controlPoint2: CGPointMake(32.88, 25.9)];
    if (isReverse) {
        bezier2Path = bezier2Path.bezierPathByReversingPath;
    }
    
      
    
    [self drawArcWithPath:bezier2Path withDuration:1.0 withSize:CGSizeMake(25, 25) withImageName:@"xiaodian" onView:self.frontCircle wishStartPosition:startPosition];}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self firstArcReverse:YES];
    [self secondArcReverse:YES];
    [self threeArcReverse:YES];
    [self fourArcReverse:YES];

    
    
    
    
    
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
