//
//  BDGViewController.m
//
//  Created by Bob de Graaf on 24-11-14.
//  Copyright (c) 2014 GraafICT. All rights reserved.
//

#import "BDGViewController.h"

static const float kDefaultAnimationDuration = 0.4f;

@interface BDGViewController ()
{
    
}

@property(nonatomic,strong) UIView *contentView;

@end

@implementation BDGViewController

#pragma mark Loading

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //Default values
    self.animationDuration = kDefaultAnimationDuration;
    
    //ContentView
    self.contentView = [UIView new];
    [self.view addSubview:self.contentView];
}

#pragma mark Layout

-(void)layoutSubviews
{
    //To be overridden in subclass
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.contentView.frame = self.view.bounds;
    [self layoutSubviews];
}

#pragma mark Adding Subviews

-(void)addSubview:(UIView *)view
{
    [self.contentView addSubview:view];
}

#pragma mark Scaling

-(void)scaleView:(UIView *)view toScale:(float)scale duration:(float)duration completion:(void (^)(void))completion
{
    [UIView animateWithDuration:duration animations:^ {
        view.transform = CGAffineTransformMakeScale(scale, scale);
    }completion:^(BOOL finished) {
        if(finished) {
            if(completion) {
                completion();
            }
        }
    }];
}

-(void)scaleView:(UIView *)view toScale:(float)scale completion:(void (^)(void))completion
{
    [self scaleView:view toScale:scale duration:self.animationDuration completion:completion];
}

-(void)scaleView:(UIView *)view toScale:(float)scale duration:(float)duration
{
    [self scaleView:view toScale:scale duration:duration completion:nil];
}

-(void)scaleView:(UIView *)view toScale:(float)scale
{
    [self scaleView:view toScale:scale duration:self.animationDuration completion:nil];
}

#pragma mark Moving/Translation

-(void)moveView:(UIView *)view toPoint:(CGPoint)point duration:(float)duration completion:(void (^)(void))completion
{
    [UIView animateWithDuration:duration animations:^ {
        view.transform = CGAffineTransformMakeTranslation(point.x, point.y);
    }completion:^(BOOL finished) {
        if(finished) {
            if(completion) {
                completion();
            }
        }
    }];
}

-(void)moveView:(UIView *)view toPoint:(CGPoint)point completion:(void (^)(void))completion
{
    [self moveView:view toPoint:point duration:self.animationDuration completion:completion];
}

-(void)moveView:(UIView *)view toPoint:(CGPoint)point duration:(float)duration
{
    [self moveView:view toPoint:point duration:duration completion:nil];
}

-(void)moveView:(UIView *)view toPoint:(CGPoint)point
{
    [self moveView:view toPoint:point duration:self.animationDuration completion:nil];
}

#pragma mark Rotation

-(void)rotateView:(UIView *)view toAngle:(float)angle duration:(float)duration completion:(void (^)(void))completion
{
    [UIView animateWithDuration:duration animations:^ {
        view.transform = CGAffineTransformMakeRotation(angle);
    }completion:^(BOOL finished) {
        if(finished) {
            if(completion) {
                completion();
            }
        }
    }];
}

-(void)rotateView:(UIView *)view toAngle:(float)angle completion:(void (^)(void))completion
{
    [self rotateView:view toAngle:angle duration:self.animationDuration completion:completion];
}

-(void)rotateView:(UIView *)view toAngle:(float)angle duration:(float)duration
{
    [self rotateView:view toAngle:angle duration:duration completion:nil];
}

-(void)rotateView:(UIView *)view toAngle:(float)angle
{
    [self rotateView:view toAngle:angle duration:self.animationDuration completion:nil];
}

#pragma mark ContentView Getters

-(float)width
{
    return self.contentView.frame.size.width;
}

-(float)height
{
    return self.contentView.frame.size.height;
}

-(CGRect)frame
{
    return self.contentView.frame;
}

-(CGRect)bounds
{
    return self.contentView.bounds;
}

-(CGPoint)center
{
    return self.contentView.center;
}

@end






















