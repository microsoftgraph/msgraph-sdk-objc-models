// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions.h"

@interface MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions () {
    MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions

+ (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) principal {
    static MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions *_principal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principal = [[MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions alloc] init];
        _principal.enumValue = MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsPrincipal;
    });
    return _principal;
}
+ (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) createdBy {
    static MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions *_createdBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdBy = [[MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions alloc] init];
        _createdBy.enumValue = MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsCreatedBy;
    });
    return _createdBy;
}
+ (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) approver {
    static MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions *_approver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approver = [[MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions alloc] init];
        _approver.enumValue = MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsApprover;
    });
    return _approver;
}
+ (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) roleEligibilityScheduleRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsPrincipal:
            return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions principal];
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsCreatedBy:
            return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions createdBy];
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsApprover:
            return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions approver];
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsPrincipal:
            return @"principal";
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsCreatedBy:
            return @"createdBy";
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsApprover:
            return @"approver";
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions)

- (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) toMSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions{

    if([self isEqualToString:@"principal"])
    {
          return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions principal];
    }
    else if([self isEqualToString:@"createdBy"])
    {
          return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions createdBy];
    }
    else if([self isEqualToString:@"approver"])
    {
          return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions approver];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
