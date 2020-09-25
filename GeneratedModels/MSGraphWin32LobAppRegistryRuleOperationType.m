// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRegistryRuleOperationType.h"

@interface MSGraphWin32LobAppRegistryRuleOperationType () {
    MSGraphWin32LobAppRegistryRuleOperationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppRegistryRuleOperationTypeValue enumValue;
@end

@implementation MSGraphWin32LobAppRegistryRuleOperationType

+ (MSGraphWin32LobAppRegistryRuleOperationType*) notConfigured {
    static MSGraphWin32LobAppRegistryRuleOperationType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _notConfigured.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphWin32LobAppRegistryRuleOperationType*) exists {
    static MSGraphWin32LobAppRegistryRuleOperationType *_exists;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exists = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _exists.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeExists;
    });
    return _exists;
}
+ (MSGraphWin32LobAppRegistryRuleOperationType*) doesNotExist {
    static MSGraphWin32LobAppRegistryRuleOperationType *_doesNotExist;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _doesNotExist = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _doesNotExist.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeDoesNotExist;
    });
    return _doesNotExist;
}
+ (MSGraphWin32LobAppRegistryRuleOperationType*) string {
    static MSGraphWin32LobAppRegistryRuleOperationType *_string;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _string = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _string.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeString;
    });
    return _string;
}
+ (MSGraphWin32LobAppRegistryRuleOperationType*) integer {
    static MSGraphWin32LobAppRegistryRuleOperationType *_integer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _integer = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _integer.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeInteger;
    });
    return _integer;
}
+ (MSGraphWin32LobAppRegistryRuleOperationType*) version {
    static MSGraphWin32LobAppRegistryRuleOperationType *_version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _version = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _version.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeVersion;
    });
    return _version;
}

+ (MSGraphWin32LobAppRegistryRuleOperationType*) UnknownEnumValue {
    static MSGraphWin32LobAppRegistryRuleOperationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppRegistryRuleOperationType alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppRegistryRuleOperationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppRegistryRuleOperationType*) win32LobAppRegistryRuleOperationTypeWithEnumValue:(MSGraphWin32LobAppRegistryRuleOperationTypeValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppRegistryRuleOperationTypeNotConfigured:
            return [MSGraphWin32LobAppRegistryRuleOperationType notConfigured];
        case MSGraphWin32LobAppRegistryRuleOperationTypeExists:
            return [MSGraphWin32LobAppRegistryRuleOperationType exists];
        case MSGraphWin32LobAppRegistryRuleOperationTypeDoesNotExist:
            return [MSGraphWin32LobAppRegistryRuleOperationType doesNotExist];
        case MSGraphWin32LobAppRegistryRuleOperationTypeString:
            return [MSGraphWin32LobAppRegistryRuleOperationType string];
        case MSGraphWin32LobAppRegistryRuleOperationTypeInteger:
            return [MSGraphWin32LobAppRegistryRuleOperationType integer];
        case MSGraphWin32LobAppRegistryRuleOperationTypeVersion:
            return [MSGraphWin32LobAppRegistryRuleOperationType version];
        case MSGraphWin32LobAppRegistryRuleOperationTypeEndOfEnum:
        default:
            return [MSGraphWin32LobAppRegistryRuleOperationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppRegistryRuleOperationTypeNotConfigured:
            return @"notConfigured";
        case MSGraphWin32LobAppRegistryRuleOperationTypeExists:
            return @"exists";
        case MSGraphWin32LobAppRegistryRuleOperationTypeDoesNotExist:
            return @"doesNotExist";
        case MSGraphWin32LobAppRegistryRuleOperationTypeString:
            return @"string";
        case MSGraphWin32LobAppRegistryRuleOperationTypeInteger:
            return @"integer";
        case MSGraphWin32LobAppRegistryRuleOperationTypeVersion:
            return @"version";
        case MSGraphWin32LobAppRegistryRuleOperationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppRegistryRuleOperationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppRegistryRuleOperationType)

- (MSGraphWin32LobAppRegistryRuleOperationType*) toMSGraphWin32LobAppRegistryRuleOperationType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphWin32LobAppRegistryRuleOperationType notConfigured];
    }
    else if([self isEqualToString:@"exists"])
    {
          return [MSGraphWin32LobAppRegistryRuleOperationType exists];
    }
    else if([self isEqualToString:@"doesNotExist"])
    {
          return [MSGraphWin32LobAppRegistryRuleOperationType doesNotExist];
    }
    else if([self isEqualToString:@"string"])
    {
          return [MSGraphWin32LobAppRegistryRuleOperationType string];
    }
    else if([self isEqualToString:@"integer"])
    {
          return [MSGraphWin32LobAppRegistryRuleOperationType integer];
    }
    else if([self isEqualToString:@"version"])
    {
          return [MSGraphWin32LobAppRegistryRuleOperationType version];
    }
    else {
        return [MSGraphWin32LobAppRegistryRuleOperationType UnknownEnumValue];
    }
}

@end
