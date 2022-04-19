// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions.h"

@interface MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions () {
    MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions

+ (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) principal {
    static MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions *_principal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principal = [[MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions alloc] init];
        _principal.enumValue = MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsPrincipal;
    });
    return _principal;
}
+ (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) roleAssignmentScheduleFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsPrincipal:
            return [MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions principal];
        case MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsPrincipal:
            return @"principal";
        case MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions)

- (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) toMSGraphRoleAssignmentScheduleFilterByCurrentUserOptions{

    if([self isEqualToString:@"principal"])
    {
          return [MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions principal];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
