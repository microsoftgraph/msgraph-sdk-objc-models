// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue){

	MSGraphChatMessagePolicyViolationVerdictDetailsTypesNone = 0,
	MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowFalsePositiveOverride = 1,
	MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithoutJustification = 2,
	MSGraphChatMessagePolicyViolationVerdictDetailsTypesAllowOverrideWithJustification = 4,
    MSGraphChatMessagePolicyViolationVerdictDetailsTypesEndOfEnum
};

@interface MSGraphChatMessagePolicyViolationVerdictDetailsTypes : NSObject

+(MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) none;
+(MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) allowFalsePositiveOverride;
+(MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) allowOverrideWithoutJustification;
+(MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) allowOverrideWithJustification;

+(MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) UnknownEnumValue;

+(MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) chatMessagePolicyViolationVerdictDetailsTypesWithEnumValue:(MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChatMessagePolicyViolationVerdictDetailsTypesValue enumValue;

@end


@interface NSString (MSGraphChatMessagePolicyViolationVerdictDetailsTypes)

- (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) toMSGraphChatMessagePolicyViolationVerdictDetailsTypes;

@end
