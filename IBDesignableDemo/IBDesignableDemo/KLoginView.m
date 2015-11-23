//
//  KLoginView.m
//  IBDesignableDemo
//
//  Created by guojun on 11/22/15.
//  Copyright © 2015 guojunxu. All rights reserved.
//

#import "KLoginView.h"
#define kTextFieldHeight 32
#define kTextFieldSpacing 8
@interface KLoginView()

@property (nonatomic, strong) UITextField *accountTextField;
@property (nonatomic, strong) UITextField *passwordTextField;

@end

@implementation KLoginView

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self loadView];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadView];
    }
    
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
 
    self.accountTextField.frame = [self frameAccount];
    self.passwordTextField.frame = [self framePassword];
}

#pragma mark - Private Methods
- (void)loadView{

    [self addSubview:self.accountTextField];
    [self addSubview:self.passwordTextField];
}

- (CGRect)frameAccount{
    CGRect frame = CGRectMake(0, kTextFieldSpacing, self.bounds.size.width, kTextFieldHeight);
    return frame;
}

- (CGRect)framePassword{
    CGRect frame = CGRectMake(0, kTextFieldSpacing + kTextFieldHeight + kTextFieldSpacing, self.bounds.size.width, kTextFieldHeight);
    return frame;
}

#pragma mark - Getters & Setters
- (UITextField *)accountTextField{
    if (!_accountTextField) {
        
        _accountTextField.backgroundColor = [UIColor blueColor];
        _accountTextField = [[UITextField alloc] init];
        _accountTextField.placeholder = @"Account...";
        _accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    
    return _accountTextField;
}

- (UITextField *)passwordTextField{
    if (!_passwordTextField) {
        _passwordTextField = [[UITextField alloc] init];
        _passwordTextField.placeholder = @"Password...";
        _passwordTextField.secureTextEntry = YES;
        _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    
    return _passwordTextField;
}

- (void)setAccount:(NSString *)account{
    self.accountTextField.text = account;
}

- (void)setPassword:(NSString *)password{
    self.passwordTextField.text = password;
}

@end
