// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions.h"

@interface MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions () {
    MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions

+ (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) principal {
    static MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions *_principal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _principal = [[MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions alloc] init];
        _principal.enumValue = MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsPrincipal;
    });
    return _principal;
}
+ (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) roleEligibilityScheduleFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsPrincipal:
            return [MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions principal];
        case MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsPrincipal:
            return @"principal";
        case MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions)

- (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) toMSGraphRoleEligibilityScheduleFilterByCurrentUserOptions{

    if([self isEqualToString:@"principal"])
    {
          return [MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions principal];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
