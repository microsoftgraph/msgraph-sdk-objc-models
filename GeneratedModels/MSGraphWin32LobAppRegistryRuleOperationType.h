// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppRegistryRuleOperationTypeValue){

	MSGraphWin32LobAppRegistryRuleOperationTypeNotConfigured = 0,
	MSGraphWin32LobAppRegistryRuleOperationTypeExists = 1,
	MSGraphWin32LobAppRegistryRuleOperationTypeDoesNotExist = 2,
	MSGraphWin32LobAppRegistryRuleOperationTypeString = 3,
	MSGraphWin32LobAppRegistryRuleOperationTypeInteger = 4,
	MSGraphWin32LobAppRegistryRuleOperationTypeVersion = 5,
    MSGraphWin32LobAppRegistryRuleOperationTypeEndOfEnum
};

@interface MSGraphWin32LobAppRegistryRuleOperationType : NSObject

+(MSGraphWin32LobAppRegistryRuleOperationType*) notConfigured;
+(MSGraphWin32LobAppRegistryRuleOperationType*) exists;
+(MSGraphWin32LobAppRegistryRuleOperationType*) doesNotExist;
+(MSGraphWin32LobAppRegistryRuleOperationType*) string;
+(MSGraphWin32LobAppRegistryRuleOperationType*) integer;
+(MSGraphWin32LobAppRegistryRuleOperationType*) version;

+(MSGraphWin32LobAppRegistryRuleOperationType*) UnknownEnumValue;

+(MSGraphWin32LobAppRegistryRuleOperationType*) win32LobAppRegistryRuleOperationTypeWithEnumValue:(MSGraphWin32LobAppRegistryRuleOperationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppRegistryRuleOperationTypeValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppRegistryRuleOperationType)

- (MSGraphWin32LobAppRegistryRuleOperationType*) toMSGraphWin32LobAppRegistryRuleOperationType;

@end
