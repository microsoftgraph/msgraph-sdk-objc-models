// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphScheduleEntityTheme.h"

@interface MSGraphScheduleEntityTheme () {
    MSGraphScheduleEntityThemeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphScheduleEntityThemeValue enumValue;
@end

@implementation MSGraphScheduleEntityTheme

+ (MSGraphScheduleEntityTheme*) white {
    static MSGraphScheduleEntityTheme *_white;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _white = [[MSGraphScheduleEntityTheme alloc] init];
        _white.enumValue = MSGraphScheduleEntityThemeWhite;
    });
    return _white;
}
+ (MSGraphScheduleEntityTheme*) blue {
    static MSGraphScheduleEntityTheme *_blue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blue = [[MSGraphScheduleEntityTheme alloc] init];
        _blue.enumValue = MSGraphScheduleEntityThemeBlue;
    });
    return _blue;
}
+ (MSGraphScheduleEntityTheme*) green {
    static MSGraphScheduleEntityTheme *_green;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _green = [[MSGraphScheduleEntityTheme alloc] init];
        _green.enumValue = MSGraphScheduleEntityThemeGreen;
    });
    return _green;
}
+ (MSGraphScheduleEntityTheme*) purple {
    static MSGraphScheduleEntityTheme *_purple;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _purple = [[MSGraphScheduleEntityTheme alloc] init];
        _purple.enumValue = MSGraphScheduleEntityThemePurple;
    });
    return _purple;
}
+ (MSGraphScheduleEntityTheme*) pink {
    static MSGraphScheduleEntityTheme *_pink;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pink = [[MSGraphScheduleEntityTheme alloc] init];
        _pink.enumValue = MSGraphScheduleEntityThemePink;
    });
    return _pink;
}
+ (MSGraphScheduleEntityTheme*) yellow {
    static MSGraphScheduleEntityTheme *_yellow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _yellow = [[MSGraphScheduleEntityTheme alloc] init];
        _yellow.enumValue = MSGraphScheduleEntityThemeYellow;
    });
    return _yellow;
}
+ (MSGraphScheduleEntityTheme*) gray {
    static MSGraphScheduleEntityTheme *_gray;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _gray = [[MSGraphScheduleEntityTheme alloc] init];
        _gray.enumValue = MSGraphScheduleEntityThemeGray;
    });
    return _gray;
}
+ (MSGraphScheduleEntityTheme*) darkBlue {
    static MSGraphScheduleEntityTheme *_darkBlue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _darkBlue = [[MSGraphScheduleEntityTheme alloc] init];
        _darkBlue.enumValue = MSGraphScheduleEntityThemeDarkBlue;
    });
    return _darkBlue;
}
+ (MSGraphScheduleEntityTheme*) darkGreen {
    static MSGraphScheduleEntityTheme *_darkGreen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _darkGreen = [[MSGraphScheduleEntityTheme alloc] init];
        _darkGreen.enumValue = MSGraphScheduleEntityThemeDarkGreen;
    });
    return _darkGreen;
}
+ (MSGraphScheduleEntityTheme*) darkPurple {
    static MSGraphScheduleEntityTheme *_darkPurple;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _darkPurple = [[MSGraphScheduleEntityTheme alloc] init];
        _darkPurple.enumValue = MSGraphScheduleEntityThemeDarkPurple;
    });
    return _darkPurple;
}
+ (MSGraphScheduleEntityTheme*) darkPink {
    static MSGraphScheduleEntityTheme *_darkPink;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _darkPink = [[MSGraphScheduleEntityTheme alloc] init];
        _darkPink.enumValue = MSGraphScheduleEntityThemeDarkPink;
    });
    return _darkPink;
}
+ (MSGraphScheduleEntityTheme*) darkYellow {
    static MSGraphScheduleEntityTheme *_darkYellow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _darkYellow = [[MSGraphScheduleEntityTheme alloc] init];
        _darkYellow.enumValue = MSGraphScheduleEntityThemeDarkYellow;
    });
    return _darkYellow;
}
+ (MSGraphScheduleEntityTheme*) unknownFutureValue {
    static MSGraphScheduleEntityTheme *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphScheduleEntityTheme alloc] init];
        _unknownFutureValue.enumValue = MSGraphScheduleEntityThemeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphScheduleEntityTheme*) UnknownEnumValue {
    static MSGraphScheduleEntityTheme *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphScheduleEntityTheme alloc] init];
        _unknownValue.enumValue = MSGraphScheduleEntityThemeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphScheduleEntityTheme*) scheduleEntityThemeWithEnumValue:(MSGraphScheduleEntityThemeValue)val {

    switch(val)
    {
        case MSGraphScheduleEntityThemeWhite:
            return [MSGraphScheduleEntityTheme white];
        case MSGraphScheduleEntityThemeBlue:
            return [MSGraphScheduleEntityTheme blue];
        case MSGraphScheduleEntityThemeGreen:
            return [MSGraphScheduleEntityTheme green];
        case MSGraphScheduleEntityThemePurple:
            return [MSGraphScheduleEntityTheme purple];
        case MSGraphScheduleEntityThemePink:
            return [MSGraphScheduleEntityTheme pink];
        case MSGraphScheduleEntityThemeYellow:
            return [MSGraphScheduleEntityTheme yellow];
        case MSGraphScheduleEntityThemeGray:
            return [MSGraphScheduleEntityTheme gray];
        case MSGraphScheduleEntityThemeDarkBlue:
            return [MSGraphScheduleEntityTheme darkBlue];
        case MSGraphScheduleEntityThemeDarkGreen:
            return [MSGraphScheduleEntityTheme darkGreen];
        case MSGraphScheduleEntityThemeDarkPurple:
            return [MSGraphScheduleEntityTheme darkPurple];
        case MSGraphScheduleEntityThemeDarkPink:
            return [MSGraphScheduleEntityTheme darkPink];
        case MSGraphScheduleEntityThemeDarkYellow:
            return [MSGraphScheduleEntityTheme darkYellow];
        case MSGraphScheduleEntityThemeUnknownFutureValue:
            return [MSGraphScheduleEntityTheme unknownFutureValue];
        case MSGraphScheduleEntityThemeEndOfEnum:
        default:
            return [MSGraphScheduleEntityTheme UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphScheduleEntityThemeWhite:
            return @"white";
        case MSGraphScheduleEntityThemeBlue:
            return @"blue";
        case MSGraphScheduleEntityThemeGreen:
            return @"green";
        case MSGraphScheduleEntityThemePurple:
            return @"purple";
        case MSGraphScheduleEntityThemePink:
            return @"pink";
        case MSGraphScheduleEntityThemeYellow:
            return @"yellow";
        case MSGraphScheduleEntityThemeGray:
            return @"gray";
        case MSGraphScheduleEntityThemeDarkBlue:
            return @"darkBlue";
        case MSGraphScheduleEntityThemeDarkGreen:
            return @"darkGreen";
        case MSGraphScheduleEntityThemeDarkPurple:
            return @"darkPurple";
        case MSGraphScheduleEntityThemeDarkPink:
            return @"darkPink";
        case MSGraphScheduleEntityThemeDarkYellow:
            return @"darkYellow";
        case MSGraphScheduleEntityThemeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphScheduleEntityThemeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphScheduleEntityThemeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphScheduleEntityTheme)

- (MSGraphScheduleEntityTheme*) toMSGraphScheduleEntityTheme{

    if([self isEqualToString:@"white"])
    {
          return [MSGraphScheduleEntityTheme white];
    }
    else if([self isEqualToString:@"blue"])
    {
          return [MSGraphScheduleEntityTheme blue];
    }
    else if([self isEqualToString:@"green"])
    {
          return [MSGraphScheduleEntityTheme green];
    }
    else if([self isEqualToString:@"purple"])
    {
          return [MSGraphScheduleEntityTheme purple];
    }
    else if([self isEqualToString:@"pink"])
    {
          return [MSGraphScheduleEntityTheme pink];
    }
    else if([self isEqualToString:@"yellow"])
    {
          return [MSGraphScheduleEntityTheme yellow];
    }
    else if([self isEqualToString:@"gray"])
    {
          return [MSGraphScheduleEntityTheme gray];
    }
    else if([self isEqualToString:@"darkBlue"])
    {
          return [MSGraphScheduleEntityTheme darkBlue];
    }
    else if([self isEqualToString:@"darkGreen"])
    {
          return [MSGraphScheduleEntityTheme darkGreen];
    }
    else if([self isEqualToString:@"darkPurple"])
    {
          return [MSGraphScheduleEntityTheme darkPurple];
    }
    else if([self isEqualToString:@"darkPink"])
    {
          return [MSGraphScheduleEntityTheme darkPink];
    }
    else if([self isEqualToString:@"darkYellow"])
    {
          return [MSGraphScheduleEntityTheme darkYellow];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphScheduleEntityTheme unknownFutureValue];
    }
    else {
        return [MSGraphScheduleEntityTheme UnknownEnumValue];
    }
}

@end
