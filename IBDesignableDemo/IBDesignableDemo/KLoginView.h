//
//  KLoginView.h
//  IBDesignableDemo
//
//  Created by guojun on 11/22/15.
//  Copyright © 2015 guojunxu. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface KLoginView : UIView

@property (nonatomic, copy) IBInspectable NSString *account;
@property (nonatomic, copy) IBInspectable NSString *password;

@end
