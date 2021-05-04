// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEnrollmentState.h"

@interface MSGraphEnrollmentState () {
    MSGraphEnrollmentStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEnrollmentStateValue enumValue;
@end

@implementation MSGraphEnrollmentState

+ (MSGraphEnrollmentState*) unknown {
    static MSGraphEnrollmentState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphEnrollmentState alloc] init];
        _unknown.enumValue = MSGraphEnrollmentStateUnknown;
    });
    return _unknown;
}
+ (MSGraphEnrollmentState*) enrolled {
    static MSGraphEnrollmentState *_enrolled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enrolled = [[MSGraphEnrollmentState alloc] init];
        _enrolled.enumValue = MSGraphEnrollmentStateEnrolled;
    });
    return _enrolled;
}
+ (MSGraphEnrollmentState*) pendingReset {
    static MSGraphEnrollmentState *_pendingReset;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pendingReset = [[MSGraphEnrollmentState alloc] init];
        _pendingReset.enumValue = MSGraphEnrollmentStatePendingReset;
    });
    return _pendingReset;
}
+ (MSGraphEnrollmentState*) failed {
    static MSGraphEnrollmentState *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphEnrollmentState alloc] init];
        _failed.enumValue = MSGraphEnrollmentStateFailed;
    });
    return _failed;
}
+ (MSGraphEnrollmentState*) notContacted {
    static MSGraphEnrollmentState *_notContacted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notContacted = [[MSGraphEnrollmentState alloc] init];
        _notContacted.enumValue = MSGraphEnrollmentStateNotContacted;
    });
    return _notContacted;
}

+ (MSGraphEnrollmentState*) UnknownEnumValue {
    static MSGraphEnrollmentState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEnrollmentState alloc] init];
        _unknownValue.enumValue = MSGraphEnrollmentStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEnrollmentState*) enrollmentStateWithEnumValue:(MSGraphEnrollmentStateValue)val {

    switch(val)
    {
        case MSGraphEnrollmentStateUnknown:
            return [MSGraphEnrollmentState unknown];
        case MSGraphEnrollmentStateEnrolled:
            return [MSGraphEnrollmentState enrolled];
        case MSGraphEnrollmentStatePendingReset:
            return [MSGraphEnrollmentState pendingReset];
        case MSGraphEnrollmentStateFailed:
            return [MSGraphEnrollmentState failed];
        case MSGraphEnrollmentStateNotContacted:
            return [MSGraphEnrollmentState notContacted];
        case MSGraphEnrollmentStateEndOfEnum:
        default:
            return [MSGraphEnrollmentState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEnrollmentStateUnknown:
            return @"unknown";
        case MSGraphEnrollmentStateEnrolled:
            return @"enrolled";
        case MSGraphEnrollmentStatePendingReset:
            return @"pendingReset";
        case MSGraphEnrollmentStateFailed:
            return @"failed";
        case MSGraphEnrollmentStateNotContacted:
            return @"notContacted";
        case MSGraphEnrollmentStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEnrollmentStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEnrollmentState)

- (MSGraphEnrollmentState*) toMSGraphEnrollmentState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphEnrollmentState unknown];
    }
    else if([self isEqualToString:@"enrolled"])
    {
          return [MSGraphEnrollmentState enrolled];
    }
    else if([self isEqualToString:@"pendingReset"])
    {
          return [MSGraphEnrollmentState pendingReset];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphEnrollmentState failed];
    }
    else if([self isEqualToString:@"notContacted"])
    {
          return [MSGraphEnrollmentState notContacted];
    }
    else {
        return [MSGraphEnrollmentState UnknownEnumValue];
    }
}

@end
