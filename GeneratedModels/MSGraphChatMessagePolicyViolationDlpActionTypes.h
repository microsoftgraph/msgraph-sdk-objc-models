// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChatMessagePolicyViolationDlpActionTypesValue){

	MSGraphChatMessagePolicyViolationDlpActionTypesNone = 0,
	MSGraphChatMessagePolicyViolationDlpActionTypesNotifySender = 1,
	MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccess = 2,
	MSGraphChatMessagePolicyViolationDlpActionTypesBlockAccessExternal = 4,
    MSGraphChatMessagePolicyViolationDlpActionTypesEndOfEnum
};

@interface MSGraphChatMessagePolicyViolationDlpActionTypes : NSObject

+(MSGraphChatMessagePolicyViolationDlpActionTypes*) none;
+(MSGraphChatMessagePolicyViolationDlpActionTypes*) notifySender;
+(MSGraphChatMessagePolicyViolationDlpActionTypes*) blockAccess;
+(MSGraphChatMessagePolicyViolationDlpActionTypes*) blockAccessExternal;

+(MSGraphChatMessagePolicyViolationDlpActionTypes*) UnknownEnumValue;

+(MSGraphChatMessagePolicyViolationDlpActionTypes*) chatMessagePolicyViolationDlpActionTypesWithEnumValue:(MSGraphChatMessagePolicyViolationDlpActionTypesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChatMessagePolicyViolationDlpActionTypesValue enumValue;

@end


@interface NSString (MSGraphChatMessagePolicyViolationDlpActionTypes)

- (MSGraphChatMessagePolicyViolationDlpActionTypes*) toMSGraphChatMessagePolicyViolationDlpActionTypes;

@end
