// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnlineMeetingProviderTypeValue){

	MSGraphOnlineMeetingProviderTypeUnknown = 0,
	MSGraphOnlineMeetingProviderTypeSkypeForBusiness = 1,
	MSGraphOnlineMeetingProviderTypeSkypeForConsumer = 2,
	MSGraphOnlineMeetingProviderTypeTeamsForBusiness = 3,
    MSGraphOnlineMeetingProviderTypeEndOfEnum
};

@interface MSGraphOnlineMeetingProviderType : NSObject

+(MSGraphOnlineMeetingProviderType*) unknown;
+(MSGraphOnlineMeetingProviderType*) skypeForBusiness;
+(MSGraphOnlineMeetingProviderType*) skypeForConsumer;
+(MSGraphOnlineMeetingProviderType*) teamsForBusiness;

+(MSGraphOnlineMeetingProviderType*) UnknownEnumValue;

+(MSGraphOnlineMeetingProviderType*) onlineMeetingProviderTypeWithEnumValue:(MSGraphOnlineMeetingProviderTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnlineMeetingProviderTypeValue enumValue;

@end


@interface NSString (MSGraphOnlineMeetingProviderType)

- (MSGraphOnlineMeetingProviderType*) toMSGraphOnlineMeetingProviderType;

@end
