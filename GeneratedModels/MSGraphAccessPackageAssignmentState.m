// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageAssignmentState.h"

@interface MSGraphAccessPackageAssignmentState () {
    MSGraphAccessPackageAssignmentStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageAssignmentStateValue enumValue;
@end

@implementation MSGraphAccessPackageAssignmentState

+ (MSGraphAccessPackageAssignmentState*) delivering {
    static MSGraphAccessPackageAssignmentState *_delivering;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delivering = [[MSGraphAccessPackageAssignmentState alloc] init];
        _delivering.enumValue = MSGraphAccessPackageAssignmentStateDelivering;
    });
    return _delivering;
}
+ (MSGraphAccessPackageAssignmentState*) partiallyDelivered {
    static MSGraphAccessPackageAssignmentState *_partiallyDelivered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _partiallyDelivered = [[MSGraphAccessPackageAssignmentState alloc] init];
        _partiallyDelivered.enumValue = MSGraphAccessPackageAssignmentStatePartiallyDelivered;
    });
    return _partiallyDelivered;
}
+ (MSGraphAccessPackageAssignmentState*) delivered {
    static MSGraphAccessPackageAssignmentState *_delivered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delivered = [[MSGraphAccessPackageAssignmentState alloc] init];
        _delivered.enumValue = MSGraphAccessPackageAssignmentStateDelivered;
    });
    return _delivered;
}
+ (MSGraphAccessPackageAssignmentState*) expired {
    static MSGraphAccessPackageAssignmentState *_expired;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _expired = [[MSGraphAccessPackageAssignmentState alloc] init];
        _expired.enumValue = MSGraphAccessPackageAssignmentStateExpired;
    });
    return _expired;
}
+ (MSGraphAccessPackageAssignmentState*) deliveryFailed {
    static MSGraphAccessPackageAssignmentState *_deliveryFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deliveryFailed = [[MSGraphAccessPackageAssignmentState alloc] init];
        _deliveryFailed.enumValue = MSGraphAccessPackageAssignmentStateDeliveryFailed;
    });
    return _deliveryFailed;
}
+ (MSGraphAccessPackageAssignmentState*) unknownFutureValue {
    static MSGraphAccessPackageAssignmentState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageAssignmentState alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageAssignmentStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageAssignmentState*) UnknownEnumValue {
    static MSGraphAccessPackageAssignmentState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageAssignmentState alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageAssignmentStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageAssignmentState*) accessPackageAssignmentStateWithEnumValue:(MSGraphAccessPackageAssignmentStateValue)val {

    switch(val)
    {
        case MSGraphAccessPackageAssignmentStateDelivering:
            return [MSGraphAccessPackageAssignmentState delivering];
        case MSGraphAccessPackageAssignmentStatePartiallyDelivered:
            return [MSGraphAccessPackageAssignmentState partiallyDelivered];
        case MSGraphAccessPackageAssignmentStateDelivered:
            return [MSGraphAccessPackageAssignmentState delivered];
        case MSGraphAccessPackageAssignmentStateExpired:
            return [MSGraphAccessPackageAssignmentState expired];
        case MSGraphAccessPackageAssignmentStateDeliveryFailed:
            return [MSGraphAccessPackageAssignmentState deliveryFailed];
        case MSGraphAccessPackageAssignmentStateUnknownFutureValue:
            return [MSGraphAccessPackageAssignmentState unknownFutureValue];
        case MSGraphAccessPackageAssignmentStateEndOfEnum:
        default:
            return [MSGraphAccessPackageAssignmentState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageAssignmentStateDelivering:
            return @"delivering";
        case MSGraphAccessPackageAssignmentStatePartiallyDelivered:
            return @"partiallyDelivered";
        case MSGraphAccessPackageAssignmentStateDelivered:
            return @"delivered";
        case MSGraphAccessPackageAssignmentStateExpired:
            return @"expired";
        case MSGraphAccessPackageAssignmentStateDeliveryFailed:
            return @"deliveryFailed";
        case MSGraphAccessPackageAssignmentStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageAssignmentStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageAssignmentStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageAssignmentState)

- (MSGraphAccessPackageAssignmentState*) toMSGraphAccessPackageAssignmentState{

    if([self isEqualToString:@"delivering"])
    {
          return [MSGraphAccessPackageAssignmentState delivering];
    }
    else if([self isEqualToString:@"partiallyDelivered"])
    {
          return [MSGraphAccessPackageAssignmentState partiallyDelivered];
    }
    else if([self isEqualToString:@"delivered"])
    {
          return [MSGraphAccessPackageAssignmentState delivered];
    }
    else if([self isEqualToString:@"expired"])
    {
          return [MSGraphAccessPackageAssignmentState expired];
    }
    else if([self isEqualToString:@"deliveryFailed"])
    {
          return [MSGraphAccessPackageAssignmentState deliveryFailed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageAssignmentState unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageAssignmentState UnknownEnumValue];
    }
}

@end
