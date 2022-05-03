// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageRequestState.h"

@interface MSGraphAccessPackageRequestState () {
    MSGraphAccessPackageRequestStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageRequestStateValue enumValue;
@end

@implementation MSGraphAccessPackageRequestState

+ (MSGraphAccessPackageRequestState*) submitted {
    static MSGraphAccessPackageRequestState *_submitted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _submitted = [[MSGraphAccessPackageRequestState alloc] init];
        _submitted.enumValue = MSGraphAccessPackageRequestStateSubmitted;
    });
    return _submitted;
}
+ (MSGraphAccessPackageRequestState*) pendingApproval {
    static MSGraphAccessPackageRequestState *_pendingApproval;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pendingApproval = [[MSGraphAccessPackageRequestState alloc] init];
        _pendingApproval.enumValue = MSGraphAccessPackageRequestStatePendingApproval;
    });
    return _pendingApproval;
}
+ (MSGraphAccessPackageRequestState*) delivering {
    static MSGraphAccessPackageRequestState *_delivering;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delivering = [[MSGraphAccessPackageRequestState alloc] init];
        _delivering.enumValue = MSGraphAccessPackageRequestStateDelivering;
    });
    return _delivering;
}
+ (MSGraphAccessPackageRequestState*) delivered {
    static MSGraphAccessPackageRequestState *_delivered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delivered = [[MSGraphAccessPackageRequestState alloc] init];
        _delivered.enumValue = MSGraphAccessPackageRequestStateDelivered;
    });
    return _delivered;
}
+ (MSGraphAccessPackageRequestState*) deliveryFailed {
    static MSGraphAccessPackageRequestState *_deliveryFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deliveryFailed = [[MSGraphAccessPackageRequestState alloc] init];
        _deliveryFailed.enumValue = MSGraphAccessPackageRequestStateDeliveryFailed;
    });
    return _deliveryFailed;
}
+ (MSGraphAccessPackageRequestState*) denied {
    static MSGraphAccessPackageRequestState *_denied;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _denied = [[MSGraphAccessPackageRequestState alloc] init];
        _denied.enumValue = MSGraphAccessPackageRequestStateDenied;
    });
    return _denied;
}
+ (MSGraphAccessPackageRequestState*) scheduled {
    static MSGraphAccessPackageRequestState *_scheduled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scheduled = [[MSGraphAccessPackageRequestState alloc] init];
        _scheduled.enumValue = MSGraphAccessPackageRequestStateScheduled;
    });
    return _scheduled;
}
+ (MSGraphAccessPackageRequestState*) canceled {
    static MSGraphAccessPackageRequestState *_canceled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _canceled = [[MSGraphAccessPackageRequestState alloc] init];
        _canceled.enumValue = MSGraphAccessPackageRequestStateCanceled;
    });
    return _canceled;
}
+ (MSGraphAccessPackageRequestState*) partiallyDelivered {
    static MSGraphAccessPackageRequestState *_partiallyDelivered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _partiallyDelivered = [[MSGraphAccessPackageRequestState alloc] init];
        _partiallyDelivered.enumValue = MSGraphAccessPackageRequestStatePartiallyDelivered;
    });
    return _partiallyDelivered;
}
+ (MSGraphAccessPackageRequestState*) unknownFutureValue {
    static MSGraphAccessPackageRequestState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageRequestState alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageRequestStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageRequestState*) UnknownEnumValue {
    static MSGraphAccessPackageRequestState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageRequestState alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageRequestStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageRequestState*) accessPackageRequestStateWithEnumValue:(MSGraphAccessPackageRequestStateValue)val {

    switch(val)
    {
        case MSGraphAccessPackageRequestStateSubmitted:
            return [MSGraphAccessPackageRequestState submitted];
        case MSGraphAccessPackageRequestStatePendingApproval:
            return [MSGraphAccessPackageRequestState pendingApproval];
        case MSGraphAccessPackageRequestStateDelivering:
            return [MSGraphAccessPackageRequestState delivering];
        case MSGraphAccessPackageRequestStateDelivered:
            return [MSGraphAccessPackageRequestState delivered];
        case MSGraphAccessPackageRequestStateDeliveryFailed:
            return [MSGraphAccessPackageRequestState deliveryFailed];
        case MSGraphAccessPackageRequestStateDenied:
            return [MSGraphAccessPackageRequestState denied];
        case MSGraphAccessPackageRequestStateScheduled:
            return [MSGraphAccessPackageRequestState scheduled];
        case MSGraphAccessPackageRequestStateCanceled:
            return [MSGraphAccessPackageRequestState canceled];
        case MSGraphAccessPackageRequestStatePartiallyDelivered:
            return [MSGraphAccessPackageRequestState partiallyDelivered];
        case MSGraphAccessPackageRequestStateUnknownFutureValue:
            return [MSGraphAccessPackageRequestState unknownFutureValue];
        case MSGraphAccessPackageRequestStateEndOfEnum:
        default:
            return [MSGraphAccessPackageRequestState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageRequestStateSubmitted:
            return @"submitted";
        case MSGraphAccessPackageRequestStatePendingApproval:
            return @"pendingApproval";
        case MSGraphAccessPackageRequestStateDelivering:
            return @"delivering";
        case MSGraphAccessPackageRequestStateDelivered:
            return @"delivered";
        case MSGraphAccessPackageRequestStateDeliveryFailed:
            return @"deliveryFailed";
        case MSGraphAccessPackageRequestStateDenied:
            return @"denied";
        case MSGraphAccessPackageRequestStateScheduled:
            return @"scheduled";
        case MSGraphAccessPackageRequestStateCanceled:
            return @"canceled";
        case MSGraphAccessPackageRequestStatePartiallyDelivered:
            return @"partiallyDelivered";
        case MSGraphAccessPackageRequestStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageRequestStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageRequestStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageRequestState)

- (MSGraphAccessPackageRequestState*) toMSGraphAccessPackageRequestState{

    if([self isEqualToString:@"submitted"])
    {
          return [MSGraphAccessPackageRequestState submitted];
    }
    else if([self isEqualToString:@"pendingApproval"])
    {
          return [MSGraphAccessPackageRequestState pendingApproval];
    }
    else if([self isEqualToString:@"delivering"])
    {
          return [MSGraphAccessPackageRequestState delivering];
    }
    else if([self isEqualToString:@"delivered"])
    {
          return [MSGraphAccessPackageRequestState delivered];
    }
    else if([self isEqualToString:@"deliveryFailed"])
    {
          return [MSGraphAccessPackageRequestState deliveryFailed];
    }
    else if([self isEqualToString:@"denied"])
    {
          return [MSGraphAccessPackageRequestState denied];
    }
    else if([self isEqualToString:@"scheduled"])
    {
          return [MSGraphAccessPackageRequestState scheduled];
    }
    else if([self isEqualToString:@"canceled"])
    {
          return [MSGraphAccessPackageRequestState canceled];
    }
    else if([self isEqualToString:@"partiallyDelivered"])
    {
          return [MSGraphAccessPackageRequestState partiallyDelivered];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageRequestState unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageRequestState UnknownEnumValue];
    }
}

@end
