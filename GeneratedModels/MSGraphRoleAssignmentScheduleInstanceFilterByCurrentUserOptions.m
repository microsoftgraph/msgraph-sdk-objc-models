// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions.h"

@interface MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions () {
    MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions

+ (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) principal {
    static MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions *_principal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principal = [[MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions alloc] init];
        _principal.enumValue = MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsPrincipal;
    });
    return _principal;
}
+ (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) roleAssignmentScheduleInstanceFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsPrincipal:
            return [MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions principal];
        case MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsPrincipal:
            return @"principal";
        case MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions)

- (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) toMSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions{

    if([self isEqualToString:@"principal"])
    {
          return [MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions principal];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
