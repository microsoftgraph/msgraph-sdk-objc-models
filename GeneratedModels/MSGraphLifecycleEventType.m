// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLifecycleEventType.h"

@interface MSGraphLifecycleEventType () {
    MSGraphLifecycleEventTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphLifecycleEventTypeValue enumValue;
@end

@implementation MSGraphLifecycleEventType

+ (MSGraphLifecycleEventType*) missed {
    static MSGraphLifecycleEventType *_missed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _missed = [[MSGraphLifecycleEventType alloc] init];
        _missed.enumValue = MSGraphLifecycleEventTypeMissed;
    });
    return _missed;
}
+ (MSGraphLifecycleEventType*) subscriptionRemoved {
    static MSGraphLifecycleEventType *_subscriptionRemoved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _subscriptionRemoved = [[MSGraphLifecycleEventType alloc] init];
        _subscriptionRemoved.enumValue = MSGraphLifecycleEventTypeSubscriptionRemoved;
    });
    return _subscriptionRemoved;
}
+ (MSGraphLifecycleEventType*) reauthorizationRequired {
    static MSGraphLifecycleEventType *_reauthorizationRequired;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reauthorizationRequired = [[MSGraphLifecycleEventType alloc] init];
        _reauthorizationRequired.enumValue = MSGraphLifecycleEventTypeReauthorizationRequired;
    });
    return _reauthorizationRequired;
}

+ (MSGraphLifecycleEventType*) UnknownEnumValue {
    static MSGraphLifecycleEventType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphLifecycleEventType alloc] init];
        _unknownValue.enumValue = MSGraphLifecycleEventTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphLifecycleEventType*) lifecycleEventTypeWithEnumValue:(MSGraphLifecycleEventTypeValue)val {

    switch(val)
    {
        case MSGraphLifecycleEventTypeMissed:
            return [MSGraphLifecycleEventType missed];
        case MSGraphLifecycleEventTypeSubscriptionRemoved:
            return [MSGraphLifecycleEventType subscriptionRemoved];
        case MSGraphLifecycleEventTypeReauthorizationRequired:
            return [MSGraphLifecycleEventType reauthorizationRequired];
        case MSGraphLifecycleEventTypeEndOfEnum:
        default:
            return [MSGraphLifecycleEventType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphLifecycleEventTypeMissed:
            return @"missed";
        case MSGraphLifecycleEventTypeSubscriptionRemoved:
            return @"subscriptionRemoved";
        case MSGraphLifecycleEventTypeReauthorizationRequired:
            return @"reauthorizationRequired";
        case MSGraphLifecycleEventTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphLifecycleEventTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphLifecycleEventType)

- (MSGraphLifecycleEventType*) toMSGraphLifecycleEventType{

    if([self isEqualToString:@"missed"])
    {
          return [MSGraphLifecycleEventType missed];
    }
    else if([self isEqualToString:@"subscriptionRemoved"])
    {
          return [MSGraphLifecycleEventType subscriptionRemoved];
    }
    else if([self isEqualToString:@"reauthorizationRequired"])
    {
          return [MSGraphLifecycleEventType reauthorizationRequired];
    }
    else {
        return [MSGraphLifecycleEventType UnknownEnumValue];
    }
}

@end
