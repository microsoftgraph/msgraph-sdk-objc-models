// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChatMessagePolicyViolationDlpActionTypes.h"

@interface MSGraphChatMessagePolicyViolationDlpActionTypes () {
    MSGraphChatMessagePolicyViolationDlpActionTypesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChatMessagePolicyViolationDlpActionTypesValue enumValue;
@end

@implementation MSGraphChatMessagePolicyViolationDlpActionTypes

+ (MSGraphChatMessagePolicyViolationDlpActionTypes*) none {
    static MSGraphChatMessagePolicyViolationDlpActionTypes *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphChatMessagePolicyViolationDlpActionTypes alloc] init];
        _none.enumValue = MSGraphChatMessagePolicyViolationDlpActionTypesNone;
    });
    return _none;
}
+ (MSGraphChatMessagePolicyViolationDlpActionTypes*) notifySender {
    static MSGraphChatMessagePolicyViolationDlpActionTypes *_notifySender;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notifySender = [[MSGraphChatMessagePolicyViolationDlpActionTypes alloc] init];
        _notifySender.enumValue = MSGraphChatMessagePolicyViolationDlpActionTypesNotifySender;
    });
    return _notifySender;
}
+ (MSGraphChatMessagePolicyViolationDlpActionTypes*) blockAccess {
    static MSGraphChatMessagePolicyViolationDlpActionTypes *_blockAccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockAccess = [[MSGraphChatMessagePolicyViolationDlpActionTypes alloc] init];
        _blockAccess.enumValue = MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccess;
    });
    return _blockAccess;
}
+ (MSGraphChatMessagePolicyViolationDlpActionTypes*) blockAccessExternal {
    static MSGraphChatMessagePolicyViolationDlpActionTypes *_blockAccessExternal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockAccessExternal = [[MSGraphChatMessagePolicyViolationDlpActionTypes alloc] init];
        _blockAccessExternal.enumValue = MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccessExternal;
    });
    return _blockAccessExternal;
}

+ (MSGraphChatMessagePolicyViolationDlpActionTypes*) UnknownEnumValue {
    static MSGraphChatMessagePolicyViolationDlpActionTypes *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChatMessagePolicyViolationDlpActionTypes alloc] init];
        _unknownValue.enumValue = MSGraphChatMessagePolicyViolationDlpActionTypesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChatMessagePolicyViolationDlpActionTypes*) chatMessagePolicyViolationDlpActionTypesWithEnumValue:(MSGraphChatMessagePolicyViolationDlpActionTypesValue)val {

    switch(val)
    {
        case MSGraphChatMessagePolicyViolationDlpActionTypesNone:
            return [MSGraphChatMessagePolicyViolationDlpActionTypes none];
        case MSGraphChatMessagePolicyViolationDlpActionTypesNotifySender:
            return [MSGraphChatMessagePolicyViolationDlpActionTypes notifySender];
        case MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccess:
            return [MSGraphChatMessagePolicyViolationDlpActionTypes blockAccess];
        case MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccessExternal:
            return [MSGraphChatMessagePolicyViolationDlpActionTypes blockAccessExternal];
        case MSGraphChatMessagePolicyViolationDlpActionTypesEndOfEnum:
        default:
            return [MSGraphChatMessagePolicyViolationDlpActionTypes UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChatMessagePolicyViolationDlpActionTypesNone:
            return @"none";
        case MSGraphChatMessagePolicyViolationDlpActionTypesNotifySender:
            return @"notifySender";
        case MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccess:
            return @"blockAccess";
        case MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccessExternal:
            return @"blockAccessExternal";
        case MSGraphChatMessagePolicyViolationDlpActionTypesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChatMessagePolicyViolationDlpActionTypesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChatMessagePolicyViolationDlpActionTypes)

- (MSGraphChatMessagePolicyViolationDlpActionTypes*) toMSGraphChatMessagePolicyViolationDlpActionTypes{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphChatMessagePolicyViolationDlpActionTypes none];
    }
    else if([self isEqualToString:@"notifySender"])
    {
          return [MSGraphChatMessagePolicyViolationDlpActionTypes notifySender];
    }
    else if([self isEqualToString:@"blockAccess"])
    {
          return [MSGraphChatMessagePolicyViolationDlpActionTypes blockAccess];
    }
    else if([self isEqualToString:@"blockAccessExternal"])
    {
          return [MSGraphChatMessagePolicyViolationDlpActionTypes blockAccessExternal];
    }
    else {
        return [MSGraphChatMessagePolicyViolationDlpActionTypes UnknownEnumValue];
    }
}

@end
