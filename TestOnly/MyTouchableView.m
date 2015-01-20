//
//  TouchableUIView.m
//  TestOnly
//
//  Created by Sanad on 1/20/15.
//  Copyright (c) 2015 SHL Info Systems. All rights reserved.
//

#import "MyTouchableView.h"

@implementation MyTouchableView{
    CGPoint _startPosition;
    CGPoint _previousPosition;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [touches anyObject];
    _startPosition = [touch locationInView:self];
    _previousPosition = _startPosition;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

    UITouch *touch = [touches anyObject];
    CGPoint currentPosition = [touch locationInView:self.scrollView];
    
    
    if(!CGPointEqualToPoint(_previousPosition, _startPosition)){
        CGFloat deltaX = _previousPosition.x-currentPosition.x;

        [UIView animateWithDuration:0.1 animations:^{
            //
            self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x +
                                                        deltaX, self.scrollView.contentOffset.y);
        }];

        
    }
    _previousPosition = currentPosition;
}

@end
