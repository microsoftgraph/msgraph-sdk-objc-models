// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRuleType.h"

@interface MSGraphWin32LobAppRuleType () {
    MSGraphWin32LobAppRuleTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppRuleTypeValue enumValue;
@end

@implementation MSGraphWin32LobAppRuleType

+ (MSGraphWin32LobAppRuleType*) detection {
    static MSGraphWin32LobAppRuleType *_detection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _detection = [[MSGraphWin32LobAppRuleType alloc] init];
        _detection.enumValue = MSGraphWin32LobAppRuleTypeDetection;
    });
    return _detection;
}
+ (MSGraphWin32LobAppRuleType*) requirement {
    static MSGraphWin32LobAppRuleType *_requirement;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _requirement = [[MSGraphWin32LobAppRuleType alloc] init];
        _requirement.enumValue = MSGraphWin32LobAppRuleTypeRequirement;
    });
    return _requirement;
}

+ (MSGraphWin32LobAppRuleType*) UnknownEnumValue {
    static MSGraphWin32LobAppRuleType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppRuleType alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppRuleTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppRuleType*) win32LobAppRuleTypeWithEnumValue:(MSGraphWin32LobAppRuleTypeValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppRuleTypeDetection:
            return [MSGraphWin32LobAppRuleType detection];
        case MSGraphWin32LobAppRuleTypeRequirement:
            return [MSGraphWin32LobAppRuleType requirement];
        case MSGraphWin32LobAppRuleTypeEndOfEnum:
        default:
            return [MSGraphWin32LobAppRuleType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppRuleTypeDetection:
            return @"detection";
        case MSGraphWin32LobAppRuleTypeRequirement:
            return @"requirement";
        case MSGraphWin32LobAppRuleTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppRuleTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppRuleType)

- (MSGraphWin32LobAppRuleType*) toMSGraphWin32LobAppRuleType{

    if([self isEqualToString:@"detection"])
    {
          return [MSGraphWin32LobAppRuleType detection];
    }
    else if([self isEqualToString:@"requirement"])
    {
          return [MSGraphWin32LobAppRuleType requirement];
    }
    else {
        return [MSGraphWin32LobAppRuleType UnknownEnumValue];
    }
}

@end
