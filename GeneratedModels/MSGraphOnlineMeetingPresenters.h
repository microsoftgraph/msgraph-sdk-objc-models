// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnlineMeetingPresentersValue){

	MSGraphOnlineMeetingPresentersEveryone = 0,
	MSGraphOnlineMeetingPresentersOrganization = 1,
	MSGraphOnlineMeetingPresentersRoleIsPresenter = 2,
	MSGraphOnlineMeetingPresentersOrganizer = 3,
	MSGraphOnlineMeetingPresentersUnknownFutureValue = 4,
    MSGraphOnlineMeetingPresentersEndOfEnum
};

@interface MSGraphOnlineMeetingPresenters : NSObject

+(MSGraphOnlineMeetingPresenters*) everyone;
+(MSGraphOnlineMeetingPresenters*) organization;
+(MSGraphOnlineMeetingPresenters*) roleIsPresenter;
+(MSGraphOnlineMeetingPresenters*) organizer;
+(MSGraphOnlineMeetingPresenters*) unknownFutureValue;

+(MSGraphOnlineMeetingPresenters*) UnknownEnumValue;

+(MSGraphOnlineMeetingPresenters*) onlineMeetingPresentersWithEnumValue:(MSGraphOnlineMeetingPresentersValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnlineMeetingPresentersValue enumValue;

@end


@interface NSString (MSGraphOnlineMeetingPresenters)

- (MSGraphOnlineMeetingPresenters*) toMSGraphOnlineMeetingPresenters;

@end
