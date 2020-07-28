// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChatMessagePolicyViolationUserActionTypes.h"

@interface MSGraphChatMessagePolicyViolationUserActionTypes () {
    MSGraphChatMessagePolicyViolationUserActionTypesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChatMessagePolicyViolationUserActionTypesValue enumValue;
@end

@implementation MSGraphChatMessagePolicyViolationUserActionTypes

+ (MSGraphChatMessagePolicyViolationUserActionTypes*) none {
    static MSGraphChatMessagePolicyViolationUserActionTypes *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphChatMessagePolicyViolationUserActionTypes alloc] init];
        _none.enumValue = MSGraphChatMessagePolicyViolationUserActionTypesNone;
    });
    return _none;
}
+ (MSGraphChatMessagePolicyViolationUserActionTypes*) override {
    static MSGraphChatMessagePolicyViolationUserActionTypes *_override;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _override = [[MSGraphChatMessagePolicyViolationUserActionTypes alloc] init];
        _override.enumValue = MSGraphChatMessagePolicyViolationUserActionTypesOverride;
    });
    return _override;
}
+ (MSGraphChatMessagePolicyViolationUserActionTypes*) reportFalsePositive {
    static MSGraphChatMessagePolicyViolationUserActionTypes *_reportFalsePositive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reportFalsePositive = [[MSGraphChatMessagePolicyViolationUserActionTypes alloc] init];
        _reportFalsePositive.enumValue = MSGraphChatMessagePolicyViolationUserActionTypesReportFalsePositive;
    });
    return _reportFalsePositive;
}

+ (MSGraphChatMessagePolicyViolationUserActionTypes*) UnknownEnumValue {
    static MSGraphChatMessagePolicyViolationUserActionTypes *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChatMessagePolicyViolationUserActionTypes alloc] init];
        _unknownValue.enumValue = MSGraphChatMessagePolicyViolationUserActionTypesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChatMessagePolicyViolationUserActionTypes*) chatMessagePolicyViolationUserActionTypesWithEnumValue:(MSGraphChatMessagePolicyViolationUserActionTypesValue)val {

    switch(val)
    {
        case MSGraphChatMessagePolicyViolationUserActionTypesNone:
            return [MSGraphChatMessagePolicyViolationUserActionTypes none];
        case MSGraphChatMessagePolicyViolationUserActionTypesOverride:
            return [MSGraphChatMessagePolicyViolationUserActionTypes override];
        case MSGraphChatMessagePolicyViolationUserActionTypesReportFalsePositive:
            return [MSGraphChatMessagePolicyViolationUserActionTypes reportFalsePositive];
        case MSGraphChatMessagePolicyViolationUserActionTypesEndOfEnum:
        default:
            return [MSGraphChatMessagePolicyViolationUserActionTypes UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChatMessagePolicyViolationUserActionTypesNone:
            return @"none";
        case MSGraphChatMessagePolicyViolationUserActionTypesOverride:
            return @"override";
        case MSGraphChatMessagePolicyViolationUserActionTypesReportFalsePositive:
            return @"reportFalsePositive";
        case MSGraphChatMessagePolicyViolationUserActionTypesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChatMessagePolicyViolationUserActionTypesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChatMessagePolicyViolationUserActionTypes)

- (MSGraphChatMessagePolicyViolationUserActionTypes*) toMSGraphChatMessagePolicyViolationUserActionTypes{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphChatMessagePolicyViolationUserActionTypes none];
    }
    else if([self isEqualToString:@"override"])
    {
          return [MSGraphChatMessagePolicyViolationUserActionTypes override];
    }
    else if([self isEqualToString:@"reportFalsePositive"])
    {
          return [MSGraphChatMessagePolicyViolationUserActionTypes reportFalsePositive];
    }
    else {
        return [MSGraphChatMessagePolicyViolationUserActionTypes UnknownEnumValue];
    }
}

@end
