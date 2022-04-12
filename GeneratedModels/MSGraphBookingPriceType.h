// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBookingPriceTypeValue){

	MSGraphBookingPriceTypeUndefined = 0,
	MSGraphBookingPriceTypeFixedPrice = 1,
	MSGraphBookingPriceTypeStartingAt = 2,
	MSGraphBookingPriceTypeHourly = 3,
	MSGraphBookingPriceTypeFree = 4,
	MSGraphBookingPriceTypePriceVaries = 5,
	MSGraphBookingPriceTypeCallUs = 6,
	MSGraphBookingPriceTypeNotSet = 7,
	MSGraphBookingPriceTypeUnknownFutureValue = 8,
    MSGraphBookingPriceTypeEndOfEnum
};

@interface MSGraphBookingPriceType : NSObject

+(MSGraphBookingPriceType*) undefined;
+(MSGraphBookingPriceType*) fixedPrice;
+(MSGraphBookingPriceType*) startingAt;
+(MSGraphBookingPriceType*) hourly;
+(MSGraphBookingPriceType*) free;
+(MSGraphBookingPriceType*) priceVaries;
+(MSGraphBookingPriceType*) callUs;
+(MSGraphBookingPriceType*) notSet;
+(MSGraphBookingPriceType*) unknownFutureValue;

+(MSGraphBookingPriceType*) UnknownEnumValue;

+(MSGraphBookingPriceType*) bookingPriceTypeWithEnumValue:(MSGraphBookingPriceTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBookingPriceTypeValue enumValue;

@end


@interface NSString (MSGraphBookingPriceType)

- (MSGraphBookingPriceType*) toMSGraphBookingPriceType;

@end
