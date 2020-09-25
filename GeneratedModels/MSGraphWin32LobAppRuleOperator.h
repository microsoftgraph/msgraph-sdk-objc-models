// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppRuleOperatorValue){

	MSGraphWin32LobAppRuleOperatorNotConfigured = 0,
	MSGraphWin32LobAppRuleOperatorEqual = 1,
	MSGraphWin32LobAppRuleOperatorNotEqual = 2,
	MSGraphWin32LobAppRuleOperatorGreaterThan = 4,
	MSGraphWin32LobAppRuleOperatorGreaterThanOrEqual = 5,
	MSGraphWin32LobAppRuleOperatorLessThan = 8,
	MSGraphWin32LobAppRuleOperatorLessThanOrEqual = 9,
    MSGraphWin32LobAppRuleOperatorEndOfEnum
};

@interface MSGraphWin32LobAppRuleOperator : NSObject

+(MSGraphWin32LobAppRuleOperator*) notConfigured;
+(MSGraphWin32LobAppRuleOperator*) equal;
+(MSGraphWin32LobAppRuleOperator*) notEqual;
+(MSGraphWin32LobAppRuleOperator*) greaterThan;
+(MSGraphWin32LobAppRuleOperator*) greaterThanOrEqual;
+(MSGraphWin32LobAppRuleOperator*) lessThan;
+(MSGraphWin32LobAppRuleOperator*) lessThanOrEqual;

+(MSGraphWin32LobAppRuleOperator*) UnknownEnumValue;

+(MSGraphWin32LobAppRuleOperator*) win32LobAppRuleOperatorWithEnumValue:(MSGraphWin32LobAppRuleOperatorValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppRuleOperatorValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppRuleOperator)

- (MSGraphWin32LobAppRuleOperator*) toMSGraphWin32LobAppRuleOperator;

@end
