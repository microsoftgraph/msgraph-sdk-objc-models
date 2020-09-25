// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppReturnCodeTypeValue){

	MSGraphWin32LobAppReturnCodeTypeFailed = 0,
	MSGraphWin32LobAppReturnCodeTypeSuccess = 1,
	MSGraphWin32LobAppReturnCodeTypeSoftReboot = 2,
	MSGraphWin32LobAppReturnCodeTypeHardReboot = 3,
	MSGraphWin32LobAppReturnCodeTypeRetry = 4,
    MSGraphWin32LobAppReturnCodeTypeEndOfEnum
};

@interface MSGraphWin32LobAppReturnCodeType : NSObject

+(MSGraphWin32LobAppReturnCodeType*) failed;
+(MSGraphWin32LobAppReturnCodeType*) success;
+(MSGraphWin32LobAppReturnCodeType*) softReboot;
+(MSGraphWin32LobAppReturnCodeType*) hardReboot;
+(MSGraphWin32LobAppReturnCodeType*) retry;

+(MSGraphWin32LobAppReturnCodeType*) UnknownEnumValue;

+(MSGraphWin32LobAppReturnCodeType*) win32LobAppReturnCodeTypeWithEnumValue:(MSGraphWin32LobAppReturnCodeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppReturnCodeTypeValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppReturnCodeType)

- (MSGraphWin32LobAppReturnCodeType*) toMSGraphWin32LobAppReturnCodeType;

@end
