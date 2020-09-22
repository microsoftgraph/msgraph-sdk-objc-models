// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphLifecycleEventTypeValue){

	MSGraphLifecycleEventTypeMissed = 0,
	MSGraphLifecycleEventTypeSubscriptionRemoved = 1,
	MSGraphLifecycleEventTypeReauthorizationRequired = 2,
    MSGraphLifecycleEventTypeEndOfEnum
};

@interface MSGraphLifecycleEventType : NSObject

+(MSGraphLifecycleEventType*) missed;
+(MSGraphLifecycleEventType*) subscriptionRemoved;
+(MSGraphLifecycleEventType*) reauthorizationRequired;

+(MSGraphLifecycleEventType*) UnknownEnumValue;

+(MSGraphLifecycleEventType*) lifecycleEventTypeWithEnumValue:(MSGraphLifecycleEventTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphLifecycleEventTypeValue enumValue;

@end


@interface NSString (MSGraphLifecycleEventType)

- (MSGraphLifecycleEventType*) toMSGraphLifecycleEventType;

@end
