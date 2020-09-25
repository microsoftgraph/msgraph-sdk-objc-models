// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppPowerShellScriptRuleOperationType.h"

@interface MSGraphWin32LobAppPowerShellScriptRuleOperationType () {
    MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue enumValue;
@end

@implementation MSGraphWin32LobAppPowerShellScriptRuleOperationType

+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) notConfigured {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _notConfigured.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) string {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_string;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _string = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _string.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeString;
    });
    return _string;
}
+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) dateTime {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_dateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dateTime = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _dateTime.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeDateTime;
    });
    return _dateTime;
}
+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) integer {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_integer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _integer = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _integer.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeInteger;
    });
    return _integer;
}
+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) float {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_float;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _float = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _float.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeFloat;
    });
    return _float;
}
+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) version {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _version = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _version.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeVersion;
    });
    return _version;
}
+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) boolean {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_boolean;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _boolean = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _boolean.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeBoolean;
    });
    return _boolean;
}

+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) UnknownEnumValue {
    static MSGraphWin32LobAppPowerShellScriptRuleOperationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppPowerShellScriptRuleOperationType alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppPowerShellScriptRuleOperationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) win32LobAppPowerShellScriptRuleOperationTypeWithEnumValue:(MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeNotConfigured:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType notConfigured];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeString:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType string];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeDateTime:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType dateTime];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeInteger:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType integer];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeFloat:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType float];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeVersion:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType version];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeBoolean:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType boolean];
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeEndOfEnum:
        default:
            return [MSGraphWin32LobAppPowerShellScriptRuleOperationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeNotConfigured:
            return @"notConfigured";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeString:
            return @"string";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeDateTime:
            return @"dateTime";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeInteger:
            return @"integer";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeFloat:
            return @"float";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeVersion:
            return @"version";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeBoolean:
            return @"boolean";
        case MSGraphWin32LobAppPowerShellScriptRuleOperationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppPowerShellScriptRuleOperationType)

- (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) toMSGraphWin32LobAppPowerShellScriptRuleOperationType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType notConfigured];
    }
    else if([self isEqualToString:@"string"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType string];
    }
    else if([self isEqualToString:@"dateTime"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType dateTime];
    }
    else if([self isEqualToString:@"integer"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType integer];
    }
    else if([self isEqualToString:@"float"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType float];
    }
    else if([self isEqualToString:@"version"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType version];
    }
    else if([self isEqualToString:@"boolean"])
    {
          return [MSGraphWin32LobAppPowerShellScriptRuleOperationType boolean];
    }
    else {
        return [MSGraphWin32LobAppPowerShellScriptRuleOperationType UnknownEnumValue];
    }
}

@end
