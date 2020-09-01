// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChannelMembershipTypeValue){

	MSGraphChannelMembershipTypeStandard = 0,
	MSGraphChannelMembershipTypePrivate = 1,
	MSGraphChannelMembershipTypeUnknownFutureValue = 2,
    MSGraphChannelMembershipTypeEndOfEnum
};

@interface MSGraphChannelMembershipType : NSObject

+(MSGraphChannelMembershipType*) standard;
+(MSGraphChannelMembershipType*) private;
+(MSGraphChannelMembershipType*) unknownFutureValue;

+(MSGraphChannelMembershipType*) UnknownEnumValue;

+(MSGraphChannelMembershipType*) channelMembershipTypeWithEnumValue:(MSGraphChannelMembershipTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChannelMembershipTypeValue enumValue;

@end


@interface NSString (MSGraphChannelMembershipType)

- (MSGraphChannelMembershipType*) toMSGraphChannelMembershipType;

@end
