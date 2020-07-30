// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChatMessagePolicyViolationVerdictDetailsTypes.h"

@interface MSGraphChatMessagePolicyViolationVerdictDetailsTypes () {
    MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue enumValue;
@end

@implementation MSGraphChatMessagePolicyViolationVerdictDetailsTypes

+ (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) none {
    static MSGraphChatMessagePolicyViolationVerdictDetailsTypes *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphChatMessagePolicyViolationVerdictDetailsTypes alloc] init];
        _none.enumValue = MSGraphChatMessagePolicyViolationVerdictDetailsTypesNone;
    });
    return _none;
}
+ (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) allowFalsePositiveOverride {
    static MSGraphChatMessagePolicyViolationVerdictDetailsTypes *_allowFalsePositiveOverride;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowFalsePositiveOverride = [[MSGraphChatMessagePolicyViolationVerdictDetailsTypes alloc] init];
        _allowFalsePositiveOverride.enumValue = MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowFalsePositiveOverride;
    });
    return _allowFalsePositiveOverride;
}
+ (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) allowOverrideWithoutJustification {
    static MSGraphChatMessagePolicyViolationVerdictDetailsTypes *_allowOverrideWithoutJustification;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowOverrideWithoutJustification = [[MSGraphChatMessagePolicyViolationVerdictDetailsTypes alloc] init];
        _allowOverrideWithoutJustification.enumValue = MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithoutJustification;
    });
    return _allowOverrideWithoutJustification;
}
+ (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) allowOverrideWithJustification {
    static MSGraphChatMessagePolicyViolationVerdictDetailsTypes *_allowOverrideWithJustification;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowOverrideWithJustification = [[MSGraphChatMessagePolicyViolationVerdictDetailsTypes alloc] init];
        _allowOverrideWithJustification.enumValue = MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithJustification;
    });
    return _allowOverrideWithJustification;
}

+ (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) UnknownEnumValue {
    static MSGraphChatMessagePolicyViolationVerdictDetailsTypes *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChatMessagePolicyViolationVerdictDetailsTypes alloc] init];
        _unknownValue.enumValue = MSGraphChatMessagePolicyViolationVerdictDetailsTypesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) chatMessagePolicyViolationVerdictDetailsTypesWithEnumValue:(MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue)val {

    switch(val)
    {
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesNone:
            return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes none];
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowFalsePositiveOverride:
            return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowFalsePositiveOverride];
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithoutJustification:
            return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowOverrideWithoutJustification];
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithJustification:
            return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowOverrideWithJustification];
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesEndOfEnum:
        default:
            return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesNone:
            return @"none";
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowFalsePositiveOverride:
            return @"allowFalsePositiveOverride";
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithoutJustification:
            return @"allowOverrideWithoutJustification";
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithJustification:
            return @"allowOverrideWithJustification";
        case MSGraphChatMessagePolicyViolationVerdictDetailsTypesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChatMessagePolicyViolationVerdictDetailsTypes)

- (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) toMSGraphChatMessagePolicyViolationVerdictDetailsTypes{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes none];
    }
    else if([self isEqualToString:@"allowFalsePositiveOverride"])
    {
          return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowFalsePositiveOverride];
    }
    else if([self isEqualToString:@"allowOverrideWithoutJustification"])
    {
          return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowOverrideWithoutJustification];
    }
    else if([self isEqualToString:@"allowOverrideWithJustification"])
    {
          return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowOverrideWithJustification];
    }
    else {
        return [MSGraphChatMessagePolicyViolationVerdictDetailsTypes UnknownEnumValue];
    }
}

@end
