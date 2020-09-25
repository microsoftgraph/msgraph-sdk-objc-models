// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppFileSystemOperationType.h"

@interface MSGraphWin32LobAppFileSystemOperationType () {
    MSGraphWin32LobAppFileSystemOperationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppFileSystemOperationTypeValue enumValue;
@end

@implementation MSGraphWin32LobAppFileSystemOperationType

+ (MSGraphWin32LobAppFileSystemOperationType*) notConfigured {
    static MSGraphWin32LobAppFileSystemOperationType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _notConfigured.enumValue = MSGraphWin32LobAppFileSystemOperationTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphWin32LobAppFileSystemOperationType*) exists {
    static MSGraphWin32LobAppFileSystemOperationType *_exists;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exists = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _exists.enumValue = MSGraphWin32LobAppFileSystemOperationTypeExists;
    });
    return _exists;
}
+ (MSGraphWin32LobAppFileSystemOperationType*) modifiedDate {
    static MSGraphWin32LobAppFileSystemOperationType *_modifiedDate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _modifiedDate = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _modifiedDate.enumValue = MSGraphWin32LobAppFileSystemOperationTypeModifiedDate;
    });
    return _modifiedDate;
}
+ (MSGraphWin32LobAppFileSystemOperationType*) createdDate {
    static MSGraphWin32LobAppFileSystemOperationType *_createdDate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdDate = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _createdDate.enumValue = MSGraphWin32LobAppFileSystemOperationTypeCreatedDate;
    });
    return _createdDate;
}
+ (MSGraphWin32LobAppFileSystemOperationType*) version {
    static MSGraphWin32LobAppFileSystemOperationType *_version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _version = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _version.enumValue = MSGraphWin32LobAppFileSystemOperationTypeVersion;
    });
    return _version;
}
+ (MSGraphWin32LobAppFileSystemOperationType*) sizeInMB {
    static MSGraphWin32LobAppFileSystemOperationType *_sizeInMB;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sizeInMB = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _sizeInMB.enumValue = MSGraphWin32LobAppFileSystemOperationTypeSizeInMB;
    });
    return _sizeInMB;
}

+ (MSGraphWin32LobAppFileSystemOperationType*) UnknownEnumValue {
    static MSGraphWin32LobAppFileSystemOperationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppFileSystemOperationType alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppFileSystemOperationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppFileSystemOperationType*) win32LobAppFileSystemOperationTypeWithEnumValue:(MSGraphWin32LobAppFileSystemOperationTypeValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppFileSystemOperationTypeNotConfigured:
            return [MSGraphWin32LobAppFileSystemOperationType notConfigured];
        case MSGraphWin32LobAppFileSystemOperationTypeExists:
            return [MSGraphWin32LobAppFileSystemOperationType exists];
        case MSGraphWin32LobAppFileSystemOperationTypeModifiedDate:
            return [MSGraphWin32LobAppFileSystemOperationType modifiedDate];
        case MSGraphWin32LobAppFileSystemOperationTypeCreatedDate:
            return [MSGraphWin32LobAppFileSystemOperationType createdDate];
        case MSGraphWin32LobAppFileSystemOperationTypeVersion:
            return [MSGraphWin32LobAppFileSystemOperationType version];
        case MSGraphWin32LobAppFileSystemOperationTypeSizeInMB:
            return [MSGraphWin32LobAppFileSystemOperationType sizeInMB];
        case MSGraphWin32LobAppFileSystemOperationTypeEndOfEnum:
        default:
            return [MSGraphWin32LobAppFileSystemOperationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppFileSystemOperationTypeNotConfigured:
            return @"notConfigured";
        case MSGraphWin32LobAppFileSystemOperationTypeExists:
            return @"exists";
        case MSGraphWin32LobAppFileSystemOperationTypeModifiedDate:
            return @"modifiedDate";
        case MSGraphWin32LobAppFileSystemOperationTypeCreatedDate:
            return @"createdDate";
        case MSGraphWin32LobAppFileSystemOperationTypeVersion:
            return @"version";
        case MSGraphWin32LobAppFileSystemOperationTypeSizeInMB:
            return @"sizeInMB";
        case MSGraphWin32LobAppFileSystemOperationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppFileSystemOperationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppFileSystemOperationType)

- (MSGraphWin32LobAppFileSystemOperationType*) toMSGraphWin32LobAppFileSystemOperationType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphWin32LobAppFileSystemOperationType notConfigured];
    }
    else if([self isEqualToString:@"exists"])
    {
          return [MSGraphWin32LobAppFileSystemOperationType exists];
    }
    else if([self isEqualToString:@"modifiedDate"])
    {
          return [MSGraphWin32LobAppFileSystemOperationType modifiedDate];
    }
    else if([self isEqualToString:@"createdDate"])
    {
          return [MSGraphWin32LobAppFileSystemOperationType createdDate];
    }
    else if([self isEqualToString:@"version"])
    {
          return [MSGraphWin32LobAppFileSystemOperationType version];
    }
    else if([self isEqualToString:@"sizeInMB"])
    {
          return [MSGraphWin32LobAppFileSystemOperationType sizeInMB];
    }
    else {
        return [MSGraphWin32LobAppFileSystemOperationType UnknownEnumValue];
    }
}

@end
