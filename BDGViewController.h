//
//  BDGViewController.h
//
//  Created by Bob de Graaf on 24-11-14.
//  Copyright (c) 2014 GraafICT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDGViewController : UIViewController
{
    
}

/*!
 *  Layout  your subviews like you're used to in a custom UIView. 
 *  This method should always be implemented in your subclass!
 */
-(void)layoutSubviews;

/*!
 *  Add subview just like you're used to in a custom UIView
 *
 *  @param view The view to Add
 */
-(void)addSubview:(UIView *)view;

/*!
 *  Quick properties of the view all subviews are added to. In layoutsubviews you can use these to quickly get the width/height/frame/bounds.
 */
@property(nonatomic) float width;
@property(nonatomic) float height;
@property(nonatomic) CGRect frame;
@property(nonatomic) CGRect bounds;
@property(nonatomic) CGPoint center;

/*!
 *  Scale your view with an animation
 *
 *  @param view       The view to scale
 *  @param scale      The scale (currently both x and y will be scaled)
 *  @param duration   The duration (optional)
 *  @param completion The completion block (optional)
 */
-(void)scaleView:(UIView *)view toScale:(float)scale duration:(float)duration completion:(void (^)(void))completion;
-(void)scaleView:(UIView *)view toScale:(float)scale completion:(void (^)(void))completion;
-(void)scaleView:(UIView *)view toScale:(float)scale duration:(float)duration;
-(void)scaleView:(UIView *)view toScale:(float)scale;

/*!
 *  Move/Translate your view with an animation
 *
 *  @param view       The view to move/translate
 *  @param point      The point in x,y
 *  @param duration   The duration (optional)
 *  @param completion The completion block (optional)
 */
-(void)moveView:(UIView *)view toPoint:(CGPoint)point duration:(float)duration completion:(void (^)(void))completion;
-(void)moveView:(UIView *)view toPoint:(CGPoint)point completion:(void (^)(void))completion;
-(void)moveView:(UIView *)view toPoint:(CGPoint)point duration:(float)duration;
-(void)moveView:(UIView *)view toPoint:(CGPoint)point;

/*!
 *  Rotate your view with an animation
 *
 *  @param view       The view to rotate
 *  @param scale      The angle (in radians) TIP: use the BDGMacros Cocoapod for easy degrees/radians computations
 *  @param duration   The duration (optional)
 *  @param completion The completion block (optional)
 */
-(void)rotateView:(UIView *)view toAngle:(float)angle duration:(float)duration completion:(void (^)(void))completion;
-(void)rotateView:(UIView *)view toAngle:(float)angle completion:(void (^)(void))completion;
-(void)rotateView:(UIView *)view toAngle:(float)angle duration:(float)duration;
-(void)rotateView:(UIView *)view toAngle:(float)angle;

/*!
 *  AnimationDuration property. There is a default animation duration but you can set your own default here. Additionally, you can set a specific duration for each animation call if you want.
 */
@property(nonatomic) float animationDuration;

@end












