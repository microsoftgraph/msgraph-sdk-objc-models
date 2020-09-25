// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppFileSystemOperationTypeValue){

	MSGraphWin32LobAppFileSystemOperationTypeNotConfigured = 0,
	MSGraphWin32LobAppFileSystemOperationTypeExists = 1,
	MSGraphWin32LobAppFileSystemOperationTypeModifiedDate = 2,
	MSGraphWin32LobAppFileSystemOperationTypeCreatedDate = 3,
	MSGraphWin32LobAppFileSystemOperationTypeVersion = 4,
	MSGraphWin32LobAppFileSystemOperationTypeSizeInMB = 5,
    MSGraphWin32LobAppFileSystemOperationTypeEndOfEnum
};

@interface MSGraphWin32LobAppFileSystemOperationType : NSObject

+(MSGraphWin32LobAppFileSystemOperationType*) notConfigured;
+(MSGraphWin32LobAppFileSystemOperationType*) exists;
+(MSGraphWin32LobAppFileSystemOperationType*) modifiedDate;
+(MSGraphWin32LobAppFileSystemOperationType*) createdDate;
+(MSGraphWin32LobAppFileSystemOperationType*) version;
+(MSGraphWin32LobAppFileSystemOperationType*) sizeInMB;

+(MSGraphWin32LobAppFileSystemOperationType*) UnknownEnumValue;

+(MSGraphWin32LobAppFileSystemOperationType*) win32LobAppFileSystemOperationTypeWithEnumValue:(MSGraphWin32LobAppFileSystemOperationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppFileSystemOperationTypeValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppFileSystemOperationType)

- (MSGraphWin32LobAppFileSystemOperationType*) toMSGraphWin32LobAppFileSystemOperationType;

@end
