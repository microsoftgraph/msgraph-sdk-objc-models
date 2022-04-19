// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions.h"

@interface MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions () {
    MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions

+ (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) principal {
    static MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions *_principal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principal = [[MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions alloc] init];
        _principal.enumValue = MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsPrincipal;
    });
    return _principal;
}
+ (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) roleEligibilityScheduleInstanceFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsPrincipal:
            return [MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions principal];
        case MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsPrincipal:
            return @"principal";
        case MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions)

- (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) toMSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions{

    if([self isEqualToString:@"principal"])
    {
          return [MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions principal];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
