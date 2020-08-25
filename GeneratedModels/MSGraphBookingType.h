// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBookingTypeValue){

	MSGraphBookingTypeUnknown = 0,
	MSGraphBookingTypeStandard = 1,
	MSGraphBookingTypeReserved = 2,
    MSGraphBookingTypeEndOfEnum
};

@interface MSGraphBookingType : NSObject

+(MSGraphBookingType*) unknown;
+(MSGraphBookingType*) standard;
+(MSGraphBookingType*) reserved;

+(MSGraphBookingType*) UnknownEnumValue;

+(MSGraphBookingType*) bookingTypeWithEnumValue:(MSGraphBookingTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBookingTypeValue enumValue;

@end


@interface NSString (MSGraphBookingType)

- (MSGraphBookingType*) toMSGraphBookingType;

@end
