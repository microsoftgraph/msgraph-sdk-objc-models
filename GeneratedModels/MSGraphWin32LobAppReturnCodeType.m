// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppReturnCodeType.h"

@interface MSGraphWin32LobAppReturnCodeType () {
    MSGraphWin32LobAppReturnCodeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppReturnCodeTypeValue enumValue;
@end

@implementation MSGraphWin32LobAppReturnCodeType

+ (MSGraphWin32LobAppReturnCodeType*) failed {
    static MSGraphWin32LobAppReturnCodeType *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphWin32LobAppReturnCodeType alloc] init];
        _failed.enumValue = MSGraphWin32LobAppReturnCodeTypeFailed;
    });
    return _failed;
}
+ (MSGraphWin32LobAppReturnCodeType*) success {
    static MSGraphWin32LobAppReturnCodeType *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphWin32LobAppReturnCodeType alloc] init];
        _success.enumValue = MSGraphWin32LobAppReturnCodeTypeSuccess;
    });
    return _success;
}
+ (MSGraphWin32LobAppReturnCodeType*) softReboot {
    static MSGraphWin32LobAppReturnCodeType *_softReboot;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _softReboot = [[MSGraphWin32LobAppReturnCodeType alloc] init];
        _softReboot.enumValue = MSGraphWin32LobAppReturnCodeTypeSoftReboot;
    });
    return _softReboot;
}
+ (MSGraphWin32LobAppReturnCodeType*) hardReboot {
    static MSGraphWin32LobAppReturnCodeType *_hardReboot;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hardReboot = [[MSGraphWin32LobAppReturnCodeType alloc] init];
        _hardReboot.enumValue = MSGraphWin32LobAppReturnCodeTypeHardReboot;
    });
    return _hardReboot;
}
+ (MSGraphWin32LobAppReturnCodeType*) retry {
    static MSGraphWin32LobAppReturnCodeType *_retry;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _retry = [[MSGraphWin32LobAppReturnCodeType alloc] init];
        _retry.enumValue = MSGraphWin32LobAppReturnCodeTypeRetry;
    });
    return _retry;
}

+ (MSGraphWin32LobAppReturnCodeType*) UnknownEnumValue {
    static MSGraphWin32LobAppReturnCodeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppReturnCodeType alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppReturnCodeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppReturnCodeType*) win32LobAppReturnCodeTypeWithEnumValue:(MSGraphWin32LobAppReturnCodeTypeValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppReturnCodeTypeFailed:
            return [MSGraphWin32LobAppReturnCodeType failed];
        case MSGraphWin32LobAppReturnCodeTypeSuccess:
            return [MSGraphWin32LobAppReturnCodeType success];
        case MSGraphWin32LobAppReturnCodeTypeSoftReboot:
            return [MSGraphWin32LobAppReturnCodeType softReboot];
        case MSGraphWin32LobAppReturnCodeTypeHardReboot:
            return [MSGraphWin32LobAppReturnCodeType hardReboot];
        case MSGraphWin32LobAppReturnCodeTypeRetry:
            return [MSGraphWin32LobAppReturnCodeType retry];
        case MSGraphWin32LobAppReturnCodeTypeEndOfEnum:
        default:
            return [MSGraphWin32LobAppReturnCodeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppReturnCodeTypeFailed:
            return @"failed";
        case MSGraphWin32LobAppReturnCodeTypeSuccess:
            return @"success";
        case MSGraphWin32LobAppReturnCodeTypeSoftReboot:
            return @"softReboot";
        case MSGraphWin32LobAppReturnCodeTypeHardReboot:
            return @"hardReboot";
        case MSGraphWin32LobAppReturnCodeTypeRetry:
            return @"retry";
        case MSGraphWin32LobAppReturnCodeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppReturnCodeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppReturnCodeType)

- (MSGraphWin32LobAppReturnCodeType*) toMSGraphWin32LobAppReturnCodeType{

    if([self isEqualToString:@"failed"])
    {
          return [MSGraphWin32LobAppReturnCodeType failed];
    }
    else if([self isEqualToString:@"success"])
    {
          return [MSGraphWin32LobAppReturnCodeType success];
    }
    else if([self isEqualToString:@"softReboot"])
    {
          return [MSGraphWin32LobAppReturnCodeType softReboot];
    }
    else if([self isEqualToString:@"hardReboot"])
    {
          return [MSGraphWin32LobAppReturnCodeType hardReboot];
    }
    else if([self isEqualToString:@"retry"])
    {
          return [MSGraphWin32LobAppReturnCodeType retry];
    }
    else {
        return [MSGraphWin32LobAppReturnCodeType UnknownEnumValue];
    }
}

@end
