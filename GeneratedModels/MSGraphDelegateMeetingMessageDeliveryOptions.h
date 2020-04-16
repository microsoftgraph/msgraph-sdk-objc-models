// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDelegateMeetingMessageDeliveryOptionsValue){

	MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndInformationToPrincipal = 0,
	MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateAndPrincipal = 1,
	MSGraphDelegateMeetingMessageDeliveryOptionsSendToDelegateOnly = 2,
    MSGraphDelegateMeetingMessageDeliveryOptionsEndOfEnum
};

@interface MSGraphDelegateMeetingMessageDeliveryOptions : NSObject

+(MSGraphDelegateMeetingMessageDeliveryOptions*) sendToDelegateAndInformationToPrincipal;
+(MSGraphDelegateMeetingMessageDeliveryOptions*) sendToDelegateAndPrincipal;
+(MSGraphDelegateMeetingMessageDeliveryOptions*) sendToDelegateOnly;

+(MSGraphDelegateMeetingMessageDeliveryOptions*) UnknownEnumValue;

+(MSGraphDelegateMeetingMessageDeliveryOptions*) delegateMeetingMessageDeliveryOptionsWithEnumValue:(MSGraphDelegateMeetingMessageDeliveryOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDelegateMeetingMessageDeliveryOptionsValue enumValue;

@end


@interface NSString (MSGraphDelegateMeetingMessageDeliveryOptions)

- (MSGraphDelegateMeetingMessageDeliveryOptions*) toMSGraphDelegateMeetingMessageDeliveryOptions;

@end
