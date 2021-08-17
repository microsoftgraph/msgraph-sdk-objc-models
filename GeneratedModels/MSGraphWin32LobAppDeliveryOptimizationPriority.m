// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppDeliveryOptimizationPriority.h"

@interface MSGraphWin32LobAppDeliveryOptimizationPriority () {
    MSGraphWin32LobAppDeliveryOptimizationPriorityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppDeliveryOptimizationPriorityValue enumValue;
@end

@implementation MSGraphWin32LobAppDeliveryOptimizationPriority

+ (MSGraphWin32LobAppDeliveryOptimizationPriority*) notConfigured {
    static MSGraphWin32LobAppDeliveryOptimizationPriority *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphWin32LobAppDeliveryOptimizationPriority alloc] init];
        _notConfigured.enumValue = MSGraphWin32LobAppDeliveryOptimizationPriorityNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphWin32LobAppDeliveryOptimizationPriority*) foreground {
    static MSGraphWin32LobAppDeliveryOptimizationPriority *_foreground;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _foreground = [[MSGraphWin32LobAppDeliveryOptimizationPriority alloc] init];
        _foreground.enumValue = MSGraphWin32LobAppDeliveryOptimizationPriorityForeground;
    });
    return _foreground;
}

+ (MSGraphWin32LobAppDeliveryOptimizationPriority*) UnknownEnumValue {
    static MSGraphWin32LobAppDeliveryOptimizationPriority *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppDeliveryOptimizationPriority alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppDeliveryOptimizationPriorityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppDeliveryOptimizationPriority*) win32LobAppDeliveryOptimizationPriorityWithEnumValue:(MSGraphWin32LobAppDeliveryOptimizationPriorityValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppDeliveryOptimizationPriorityNotConfigured:
            return [MSGraphWin32LobAppDeliveryOptimizationPriority notConfigured];
        case MSGraphWin32LobAppDeliveryOptimizationPriorityForeground:
            return [MSGraphWin32LobAppDeliveryOptimizationPriority foreground];
        case MSGraphWin32LobAppDeliveryOptimizationPriorityEndOfEnum:
        default:
            return [MSGraphWin32LobAppDeliveryOptimizationPriority UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppDeliveryOptimizationPriorityNotConfigured:
            return @"notConfigured";
        case MSGraphWin32LobAppDeliveryOptimizationPriorityForeground:
            return @"foreground";
        case MSGraphWin32LobAppDeliveryOptimizationPriorityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppDeliveryOptimizationPriorityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppDeliveryOptimizationPriority)

- (MSGraphWin32LobAppDeliveryOptimizationPriority*) toMSGraphWin32LobAppDeliveryOptimizationPriority{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphWin32LobAppDeliveryOptimizationPriority notConfigured];
    }
    else if([self isEqualToString:@"foreground"])
    {
          return [MSGraphWin32LobAppDeliveryOptimizationPriority foreground];
    }
    else {
        return [MSGraphWin32LobAppDeliveryOptimizationPriority UnknownEnumValue];
    }
}

@end
