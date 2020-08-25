// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessPolicyState.h"

@interface MSGraphConditionalAccessPolicyState () {
    MSGraphConditionalAccessPolicyStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConditionalAccessPolicyStateValue enumValue;
@end

@implementation MSGraphConditionalAccessPolicyState

+ (MSGraphConditionalAccessPolicyState*) enabled {
    static MSGraphConditionalAccessPolicyState *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphConditionalAccessPolicyState alloc] init];
        _enabled.enumValue = MSGraphConditionalAccessPolicyStateEnabled;
    });
    return _enabled;
}
+ (MSGraphConditionalAccessPolicyState*) disabled {
    static MSGraphConditionalAccessPolicyState *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphConditionalAccessPolicyState alloc] init];
        _disabled.enumValue = MSGraphConditionalAccessPolicyStateDisabled;
    });
    return _disabled;
}
+ (MSGraphConditionalAccessPolicyState*) enabledForReportingButNotEnforced {
    static MSGraphConditionalAccessPolicyState *_enabledForReportingButNotEnforced;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabledForReportingButNotEnforced = [[MSGraphConditionalAccessPolicyState alloc] init];
        _enabledForReportingButNotEnforced.enumValue = MSGraphConditionalAccessPolicyStateEnabledForReportingButNotEnforced;
    });
    return _enabledForReportingButNotEnforced;
}

+ (MSGraphConditionalAccessPolicyState*) UnknownEnumValue {
    static MSGraphConditionalAccessPolicyState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConditionalAccessPolicyState alloc] init];
        _unknownValue.enumValue = MSGraphConditionalAccessPolicyStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConditionalAccessPolicyState*) conditionalAccessPolicyStateWithEnumValue:(MSGraphConditionalAccessPolicyStateValue)val {

    switch(val)
    {
        case MSGraphConditionalAccessPolicyStateEnabled:
            return [MSGraphConditionalAccessPolicyState enabled];
        case MSGraphConditionalAccessPolicyStateDisabled:
            return [MSGraphConditionalAccessPolicyState disabled];
        case MSGraphConditionalAccessPolicyStateEnabledForReportingButNotEnforced:
            return [MSGraphConditionalAccessPolicyState enabledForReportingButNotEnforced];
        case MSGraphConditionalAccessPolicyStateEndOfEnum:
        default:
            return [MSGraphConditionalAccessPolicyState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConditionalAccessPolicyStateEnabled:
            return @"enabled";
        case MSGraphConditionalAccessPolicyStateDisabled:
            return @"disabled";
        case MSGraphConditionalAccessPolicyStateEnabledForReportingButNotEnforced:
            return @"enabledForReportingButNotEnforced";
        case MSGraphConditionalAccessPolicyStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConditionalAccessPolicyStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConditionalAccessPolicyState)

- (MSGraphConditionalAccessPolicyState*) toMSGraphConditionalAccessPolicyState{

    if([self isEqualToString:@"enabled"])
    {
          return [MSGraphConditionalAccessPolicyState enabled];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphConditionalAccessPolicyState disabled];
    }
    else if([self isEqualToString:@"enabledForReportingButNotEnforced"])
    {
          return [MSGraphConditionalAccessPolicyState enabledForReportingButNotEnforced];
    }
    else {
        return [MSGraphConditionalAccessPolicyState UnknownEnumValue];
    }
}

@end
