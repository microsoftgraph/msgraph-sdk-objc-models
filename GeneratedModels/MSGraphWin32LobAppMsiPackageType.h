// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppMsiPackageTypeValue){

	MSGraphWin32LobAppMsiPackageTypePerMachine = 0,
	MSGraphWin32LobAppMsiPackageTypePerUser = 1,
	MSGraphWin32LobAppMsiPackageTypeDualPurpose = 2,
    MSGraphWin32LobAppMsiPackageTypeEndOfEnum
};

@interface MSGraphWin32LobAppMsiPackageType : NSObject

+(MSGraphWin32LobAppMsiPackageType*) perMachine;
+(MSGraphWin32LobAppMsiPackageType*) perUser;
+(MSGraphWin32LobAppMsiPackageType*) dualPurpose;

+(MSGraphWin32LobAppMsiPackageType*) UnknownEnumValue;

+(MSGraphWin32LobAppMsiPackageType*) win32LobAppMsiPackageTypeWithEnumValue:(MSGraphWin32LobAppMsiPackageTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppMsiPackageTypeValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppMsiPackageType)

- (MSGraphWin32LobAppMsiPackageType*) toMSGraphWin32LobAppMsiPackageType;

@end
