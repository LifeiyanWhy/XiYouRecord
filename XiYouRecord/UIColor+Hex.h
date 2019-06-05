//
//  UIColor+Hex.h
//  XiYouRecord
//
//  Created by 李飞艳 on 2019/6/5.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Hex)
+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END
