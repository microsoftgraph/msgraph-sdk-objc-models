// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRestartBehavior.h"

@interface MSGraphWin32LobAppRestartBehavior () {
    MSGraphWin32LobAppRestartBehaviorValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppRestartBehaviorValue enumValue;
@end

@implementation MSGraphWin32LobAppRestartBehavior

+ (MSGraphWin32LobAppRestartBehavior*) basedOnReturnCode {
    static MSGraphWin32LobAppRestartBehavior *_basedOnReturnCode;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _basedOnReturnCode = [[MSGraphWin32LobAppRestartBehavior alloc] init];
        _basedOnReturnCode.enumValue = MSGraphWin32LobAppRestartBehaviorBasedOnReturnCode;
    });
    return _basedOnReturnCode;
}
+ (MSGraphWin32LobAppRestartBehavior*) allow {
    static MSGraphWin32LobAppRestartBehavior *_allow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allow = [[MSGraphWin32LobAppRestartBehavior alloc] init];
        _allow.enumValue = MSGraphWin32LobAppRestartBehaviorAllow;
    });
    return _allow;
}
+ (MSGraphWin32LobAppRestartBehavior*) suppress {
    static MSGraphWin32LobAppRestartBehavior *_suppress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _suppress = [[MSGraphWin32LobAppRestartBehavior alloc] init];
        _suppress.enumValue = MSGraphWin32LobAppRestartBehaviorSuppress;
    });
    return _suppress;
}
+ (MSGraphWin32LobAppRestartBehavior*) force {
    static MSGraphWin32LobAppRestartBehavior *_force;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _force = [[MSGraphWin32LobAppRestartBehavior alloc] init];
        _force.enumValue = MSGraphWin32LobAppRestartBehaviorForce;
    });
    return _force;
}

+ (MSGraphWin32LobAppRestartBehavior*) UnknownEnumValue {
    static MSGraphWin32LobAppRestartBehavior *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppRestartBehavior alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppRestartBehaviorEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppRestartBehavior*) win32LobAppRestartBehaviorWithEnumValue:(MSGraphWin32LobAppRestartBehaviorValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppRestartBehaviorBasedOnReturnCode:
            return [MSGraphWin32LobAppRestartBehavior basedOnReturnCode];
        case MSGraphWin32LobAppRestartBehaviorAllow:
            return [MSGraphWin32LobAppRestartBehavior allow];
        case MSGraphWin32LobAppRestartBehaviorSuppress:
            return [MSGraphWin32LobAppRestartBehavior suppress];
        case MSGraphWin32LobAppRestartBehaviorForce:
            return [MSGraphWin32LobAppRestartBehavior force];
        case MSGraphWin32LobAppRestartBehaviorEndOfEnum:
        default:
            return [MSGraphWin32LobAppRestartBehavior UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppRestartBehaviorBasedOnReturnCode:
            return @"basedOnReturnCode";
        case MSGraphWin32LobAppRestartBehaviorAllow:
            return @"allow";
        case MSGraphWin32LobAppRestartBehaviorSuppress:
            return @"suppress";
        case MSGraphWin32LobAppRestartBehaviorForce:
            return @"force";
        case MSGraphWin32LobAppRestartBehaviorEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppRestartBehaviorValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppRestartBehavior)

- (MSGraphWin32LobAppRestartBehavior*) toMSGraphWin32LobAppRestartBehavior{

    if([self isEqualToString:@"basedOnReturnCode"])
    {
          return [MSGraphWin32LobAppRestartBehavior basedOnReturnCode];
    }
    else if([self isEqualToString:@"allow"])
    {
          return [MSGraphWin32LobAppRestartBehavior allow];
    }
    else if([self isEqualToString:@"suppress"])
    {
          return [MSGraphWin32LobAppRestartBehavior suppress];
    }
    else if([self isEqualToString:@"force"])
    {
          return [MSGraphWin32LobAppRestartBehavior force];
    }
    else {
        return [MSGraphWin32LobAppRestartBehavior UnknownEnumValue];
    }
}

@end
