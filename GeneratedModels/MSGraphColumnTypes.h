// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphColumnTypesValue){

	MSGraphColumnTypesNote = 0,
	MSGraphColumnTypesText = 1,
	MSGraphColumnTypesChoice = 2,
	MSGraphColumnTypesMultichoice = 3,
	MSGraphColumnTypesNumber = 4,
	MSGraphColumnTypesCurrency = 5,
	MSGraphColumnTypesDateTime = 6,
	MSGraphColumnTypesLookup = 7,
	MSGraphColumnTypesBoolean = 8,
	MSGraphColumnTypesUser = 9,
	MSGraphColumnTypesUrl = 10,
	MSGraphColumnTypesCalculated = 11,
	MSGraphColumnTypesLocation = 12,
	MSGraphColumnTypesGeolocation = 13,
	MSGraphColumnTypesTerm = 14,
	MSGraphColumnTypesMultiterm = 15,
	MSGraphColumnTypesThumbnail = 16,
	MSGraphColumnTypesApprovalStatus = 17,
	MSGraphColumnTypesUnknownFutureValue = 18,
    MSGraphColumnTypesEndOfEnum
};

@interface MSGraphColumnTypes : NSObject

+(MSGraphColumnTypes*) note;
+(MSGraphColumnTypes*) text;
+(MSGraphColumnTypes*) choice;
+(MSGraphColumnTypes*) multichoice;
+(MSGraphColumnTypes*) number;
+(MSGraphColumnTypes*) currency;
+(MSGraphColumnTypes*) dateTime;
+(MSGraphColumnTypes*) lookup;
+(MSGraphColumnTypes*) boolean;
+(MSGraphColumnTypes*) user;
+(MSGraphColumnTypes*) url;
+(MSGraphColumnTypes*) calculated;
+(MSGraphColumnTypes*) location;
+(MSGraphColumnTypes*) geolocation;
+(MSGraphColumnTypes*) term;
+(MSGraphColumnTypes*) multiterm;
+(MSGraphColumnTypes*) thumbnail;
+(MSGraphColumnTypes*) approvalStatus;
+(MSGraphColumnTypes*) unknownFutureValue;

+(MSGraphColumnTypes*) UnknownEnumValue;

+(MSGraphColumnTypes*) columnTypesWithEnumValue:(MSGraphColumnTypesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphColumnTypesValue enumValue;

@end


@interface NSString (MSGraphColumnTypes)

- (MSGraphColumnTypes*) toMSGraphColumnTypes;

@end
