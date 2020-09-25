// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue){

	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeNotConfigured = 0,
	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeString = 1,
	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeDateTime = 2,
	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeInteger = 3,
	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeFloat = 4,
	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeVersion = 5,
	MSGraphWin32LobAppPowerShellScriptRuleOperationTypeBoolean = 6,
    MSGraphWin32LobAppPowerShellScriptRuleOperationTypeEndOfEnum
};

@interface MSGraphWin32LobAppPowerShellScriptRuleOperationType : NSObject

+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) notConfigured;
+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) string;
+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) dateTime;
+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) integer;
+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) float;
+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) version;
+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) boolean;

+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) UnknownEnumValue;

+(MSGraphWin32LobAppPowerShellScriptRuleOperationType*) win32LobAppPowerShellScriptRuleOperationTypeWithEnumValue:(MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppPowerShellScriptRuleOperationTypeValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppPowerShellScriptRuleOperationType)

- (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) toMSGraphWin32LobAppPowerShellScriptRuleOperationType;

@end
