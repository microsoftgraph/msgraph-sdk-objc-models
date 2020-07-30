// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphScheduleChangeState.h"

@interface MSGraphScheduleChangeState () {
    MSGraphScheduleChangeStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphScheduleChangeStateValue enumValue;
@end

@implementation MSGraphScheduleChangeState

+ (MSGraphScheduleChangeState*) pending {
    static MSGraphScheduleChangeState *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphScheduleChangeState alloc] init];
        _pending.enumValue = MSGraphScheduleChangeStatePending;
    });
    return _pending;
}
+ (MSGraphScheduleChangeState*) approved {
    static MSGraphScheduleChangeState *_approved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approved = [[MSGraphScheduleChangeState alloc] init];
        _approved.enumValue = MSGraphScheduleChangeStateApproved;
    });
    return _approved;
}
+ (MSGraphScheduleChangeState*) declined {
    static MSGraphScheduleChangeState *_declined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _declined = [[MSGraphScheduleChangeState alloc] init];
        _declined.enumValue = MSGraphScheduleChangeStateDeclined;
    });
    return _declined;
}
+ (MSGraphScheduleChangeState*) unknownFutureValue {
    static MSGraphScheduleChangeState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphScheduleChangeState alloc] init];
        _unknownFutureValue.enumValue = MSGraphScheduleChangeStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphScheduleChangeState*) UnknownEnumValue {
    static MSGraphScheduleChangeState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphScheduleChangeState alloc] init];
        _unknownValue.enumValue = MSGraphScheduleChangeStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphScheduleChangeState*) scheduleChangeStateWithEnumValue:(MSGraphScheduleChangeStateValue)val {

    switch(val)
    {
        case MSGraphScheduleChangeStatePending:
            return [MSGraphScheduleChangeState pending];
        case MSGraphScheduleChangeStateApproved:
            return [MSGraphScheduleChangeState approved];
        case MSGraphScheduleChangeStateDeclined:
            return [MSGraphScheduleChangeState declined];
        case MSGraphScheduleChangeStateUnknownFutureValue:
            return [MSGraphScheduleChangeState unknownFutureValue];
        case MSGraphScheduleChangeStateEndOfEnum:
        default:
            return [MSGraphScheduleChangeState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphScheduleChangeStatePending:
            return @"pending";
        case MSGraphScheduleChangeStateApproved:
            return @"approved";
        case MSGraphScheduleChangeStateDeclined:
            return @"declined";
        case MSGraphScheduleChangeStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphScheduleChangeStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphScheduleChangeStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphScheduleChangeState)

- (MSGraphScheduleChangeState*) toMSGraphScheduleChangeState{

    if([self isEqualToString:@"pending"])
    {
          return [MSGraphScheduleChangeState pending];
    }
    else if([self isEqualToString:@"approved"])
    {
          return [MSGraphScheduleChangeState approved];
    }
    else if([self isEqualToString:@"declined"])
    {
          return [MSGraphScheduleChangeState declined];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphScheduleChangeState unknownFutureValue];
    }
    else {
        return [MSGraphScheduleChangeState UnknownEnumValue];
    }
}

@end
