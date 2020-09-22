// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppMsiPackageType.h"

@interface MSGraphWin32LobAppMsiPackageType () {
    MSGraphWin32LobAppMsiPackageTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppMsiPackageTypeValue enumValue;
@end

@implementation MSGraphWin32LobAppMsiPackageType

+ (MSGraphWin32LobAppMsiPackageType*) perMachine {
    static MSGraphWin32LobAppMsiPackageType *_perMachine;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perMachine = [[MSGraphWin32LobAppMsiPackageType alloc] init];
        _perMachine.enumValue = MSGraphWin32LobAppMsiPackageTypePerMachine;
    });
    return _perMachine;
}
+ (MSGraphWin32LobAppMsiPackageType*) perUser {
    static MSGraphWin32LobAppMsiPackageType *_perUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _perUser = [[MSGraphWin32LobAppMsiPackageType alloc] init];
        _perUser.enumValue = MSGraphWin32LobAppMsiPackageTypePerUser;
    });
    return _perUser;
}
+ (MSGraphWin32LobAppMsiPackageType*) dualPurpose {
    static MSGraphWin32LobAppMsiPackageType *_dualPurpose;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dualPurpose = [[MSGraphWin32LobAppMsiPackageType alloc] init];
        _dualPurpose.enumValue = MSGraphWin32LobAppMsiPackageTypeDualPurpose;
    });
    return _dualPurpose;
}

+ (MSGraphWin32LobAppMsiPackageType*) UnknownEnumValue {
    static MSGraphWin32LobAppMsiPackageType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppMsiPackageType alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppMsiPackageTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppMsiPackageType*) win32LobAppMsiPackageTypeWithEnumValue:(MSGraphWin32LobAppMsiPackageTypeValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppMsiPackageTypePerMachine:
            return [MSGraphWin32LobAppMsiPackageType perMachine];
        case MSGraphWin32LobAppMsiPackageTypePerUser:
            return [MSGraphWin32LobAppMsiPackageType perUser];
        case MSGraphWin32LobAppMsiPackageTypeDualPurpose:
            return [MSGraphWin32LobAppMsiPackageType dualPurpose];
        case MSGraphWin32LobAppMsiPackageTypeEndOfEnum:
        default:
            return [MSGraphWin32LobAppMsiPackageType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppMsiPackageTypePerMachine:
            return @"perMachine";
        case MSGraphWin32LobAppMsiPackageTypePerUser:
            return @"perUser";
        case MSGraphWin32LobAppMsiPackageTypeDualPurpose:
            return @"dualPurpose";
        case MSGraphWin32LobAppMsiPackageTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppMsiPackageTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppMsiPackageType)

- (MSGraphWin32LobAppMsiPackageType*) toMSGraphWin32LobAppMsiPackageType{

    if([self isEqualToString:@"perMachine"])
    {
          return [MSGraphWin32LobAppMsiPackageType perMachine];
    }
    else if([self isEqualToString:@"perUser"])
    {
          return [MSGraphWin32LobAppMsiPackageType perUser];
    }
    else if([self isEqualToString:@"dualPurpose"])
    {
          return [MSGraphWin32LobAppMsiPackageType dualPurpose];
    }
    else {
        return [MSGraphWin32LobAppMsiPackageType UnknownEnumValue];
    }
}

@end
