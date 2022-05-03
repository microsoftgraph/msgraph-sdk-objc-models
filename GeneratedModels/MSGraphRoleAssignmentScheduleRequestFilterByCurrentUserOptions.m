// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions.h"

@interface MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions () {
    MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions

+ (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) principal {
    static MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions *_principal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principal = [[MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions alloc] init];
        _principal.enumValue = MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsPrincipal;
    });
    return _principal;
}
+ (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) createdBy {
    static MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions *_createdBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdBy = [[MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions alloc] init];
        _createdBy.enumValue = MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsCreatedBy;
    });
    return _createdBy;
}
+ (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) approver {
    static MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions *_approver;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approver = [[MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions alloc] init];
        _approver.enumValue = MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsApprover;
    });
    return _approver;
}
+ (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) roleAssignmentScheduleRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsPrincipal:
            return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions principal];
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsCreatedBy:
            return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions createdBy];
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsApprover:
            return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions approver];
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsPrincipal:
            return @"principal";
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsCreatedBy:
            return @"createdBy";
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsApprover:
            return @"approver";
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions)

- (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) toMSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions{

    if([self isEqualToString:@"principal"])
    {
          return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions principal];
    }
    else if([self isEqualToString:@"createdBy"])
    {
          return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions createdBy];
    }
    else if([self isEqualToString:@"approver"])
    {
          return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions approver];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
