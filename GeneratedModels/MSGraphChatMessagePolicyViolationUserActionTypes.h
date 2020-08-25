// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChatMessagePolicyViolationUserActionTypesValue){

	MSGraphChatMessagePolicyViolationUserActionTypesNone = 0,
	MSGraphChatMessagePolicyViolationUserActionTypesOverride = 1,
	MSGraphChatMessagePolicyViolationUserActionTypesReportFalsePositive = 2,
    MSGraphChatMessagePolicyViolationUserActionTypesEndOfEnum
};

@interface MSGraphChatMessagePolicyViolationUserActionTypes : NSObject

+(MSGraphChatMessagePolicyViolationUserActionTypes*) none;
+(MSGraphChatMessagePolicyViolationUserActionTypes*) override;
+(MSGraphChatMessagePolicyViolationUserActionTypes*) reportFalsePositive;

+(MSGraphChatMessagePolicyViolationUserActionTypes*) UnknownEnumValue;

+(MSGraphChatMessagePolicyViolationUserActionTypes*) chatMessagePolicyViolationUserActionTypesWithEnumValue:(MSGraphChatMessagePolicyViolationUserActionTypesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChatMessagePolicyViolationUserActionTypesValue enumValue;

@end


@interface NSString (MSGraphChatMessagePolicyViolationUserActionTypes)

- (MSGraphChatMessagePolicyViolationUserActionTypes*) toMSGraphChatMessagePolicyViolationUserActionTypes;

@end
