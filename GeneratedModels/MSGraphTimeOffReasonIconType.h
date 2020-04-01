// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTimeOffReasonIconTypeValue){

	MSGraphTimeOffReasonIconTypeNone = 0,
	MSGraphTimeOffReasonIconTypeCar = 1,
	MSGraphTimeOffReasonIconTypeCalendar = 2,
	MSGraphTimeOffReasonIconTypeRunning = 3,
	MSGraphTimeOffReasonIconTypePlane = 4,
	MSGraphTimeOffReasonIconTypeFirstAid = 5,
	MSGraphTimeOffReasonIconTypeDoctor = 6,
	MSGraphTimeOffReasonIconTypeNotWorking = 7,
	MSGraphTimeOffReasonIconTypeClock = 8,
	MSGraphTimeOffReasonIconTypeJuryDuty = 9,
	MSGraphTimeOffReasonIconTypeGlobe = 10,
	MSGraphTimeOffReasonIconTypeCup = 11,
	MSGraphTimeOffReasonIconTypePhone = 12,
	MSGraphTimeOffReasonIconTypeWeather = 13,
	MSGraphTimeOffReasonIconTypeUmbrella = 14,
	MSGraphTimeOffReasonIconTypePiggyBank = 15,
	MSGraphTimeOffReasonIconTypeDog = 16,
	MSGraphTimeOffReasonIconTypeCake = 17,
	MSGraphTimeOffReasonIconTypeTrafficCone = 18,
	MSGraphTimeOffReasonIconTypePin = 19,
	MSGraphTimeOffReasonIconTypeSunny = 20,
	MSGraphTimeOffReasonIconTypeUnknownFutureValue = 21,
    MSGraphTimeOffReasonIconTypeEndOfEnum
};

@interface MSGraphTimeOffReasonIconType : NSObject

+(MSGraphTimeOffReasonIconType*) none;
+(MSGraphTimeOffReasonIconType*) car;
+(MSGraphTimeOffReasonIconType*) calendar;
+(MSGraphTimeOffReasonIconType*) running;
+(MSGraphTimeOffReasonIconType*) plane;
+(MSGraphTimeOffReasonIconType*) firstAid;
+(MSGraphTimeOffReasonIconType*) doctor;
+(MSGraphTimeOffReasonIconType*) notWorking;
+(MSGraphTimeOffReasonIconType*) clock;
+(MSGraphTimeOffReasonIconType*) juryDuty;
+(MSGraphTimeOffReasonIconType*) globe;
+(MSGraphTimeOffReasonIconType*) cup;
+(MSGraphTimeOffReasonIconType*) phone;
+(MSGraphTimeOffReasonIconType*) weather;
+(MSGraphTimeOffReasonIconType*) umbrella;
+(MSGraphTimeOffReasonIconType*) piggyBank;
+(MSGraphTimeOffReasonIconType*) dog;
+(MSGraphTimeOffReasonIconType*) cake;
+(MSGraphTimeOffReasonIconType*) trafficCone;
+(MSGraphTimeOffReasonIconType*) pin;
+(MSGraphTimeOffReasonIconType*) sunny;
+(MSGraphTimeOffReasonIconType*) unknownFutureValue;

+(MSGraphTimeOffReasonIconType*) UnknownEnumValue;

+(MSGraphTimeOffReasonIconType*) timeOffReasonIconTypeWithEnumValue:(MSGraphTimeOffReasonIconTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTimeOffReasonIconTypeValue enumValue;

@end


@interface NSString (MSGraphTimeOffReasonIconType)

- (MSGraphTimeOffReasonIconType*) toMSGraphTimeOffReasonIconType;

@end
