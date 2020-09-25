// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppRuleTypeValue){

	MSGraphWin32LobAppRuleTypeDetection = 0,
	MSGraphWin32LobAppRuleTypeRequirement = 1,
    MSGraphWin32LobAppRuleTypeEndOfEnum
};

@interface MSGraphWin32LobAppRuleType : NSObject

+(MSGraphWin32LobAppRuleType*) detection;
+(MSGraphWin32LobAppRuleType*) requirement;

+(MSGraphWin32LobAppRuleType*) UnknownEnumValue;

+(MSGraphWin32LobAppRuleType*) win32LobAppRuleTypeWithEnumValue:(MSGraphWin32LobAppRuleTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppRuleTypeValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppRuleType)

- (MSGraphWin32LobAppRuleType*) toMSGraphWin32LobAppRuleType;

@end
