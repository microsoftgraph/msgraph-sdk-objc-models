// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsPropertyTypeValue){

	MSGraphExternalConnectorsPropertyTypeString = 0,
	MSGraphExternalConnectorsPropertyTypeInt64 = 1,
	MSGraphExternalConnectorsPropertyTypeDouble = 2,
	MSGraphExternalConnectorsPropertyTypeDateTime = 3,
	MSGraphExternalConnectorsPropertyTypeBoolean = 4,
	MSGraphExternalConnectorsPropertyTypeStringCollection = 5,
	MSGraphExternalConnectorsPropertyTypeInt64Collection = 6,
	MSGraphExternalConnectorsPropertyTypeDoubleCollection = 7,
	MSGraphExternalConnectorsPropertyTypeDateTimeCollection = 8,
	MSGraphExternalConnectorsPropertyTypeUnknownFutureValue = 9,
    MSGraphExternalConnectorsPropertyTypeEndOfEnum
};

@interface MSGraphExternalConnectorsPropertyType : NSObject

+(MSGraphExternalConnectorsPropertyType*) string;
+(MSGraphExternalConnectorsPropertyType*) int64;
+(MSGraphExternalConnectorsPropertyType*) double;
+(MSGraphExternalConnectorsPropertyType*) dateTime;
+(MSGraphExternalConnectorsPropertyType*) boolean;
+(MSGraphExternalConnectorsPropertyType*) stringCollection;
+(MSGraphExternalConnectorsPropertyType*) int64Collection;
+(MSGraphExternalConnectorsPropertyType*) doubleCollection;
+(MSGraphExternalConnectorsPropertyType*) dateTimeCollection;
+(MSGraphExternalConnectorsPropertyType*) unknownFutureValue;

+(MSGraphExternalConnectorsPropertyType*) UnknownEnumValue;

+(MSGraphExternalConnectorsPropertyType*) propertyTypeWithEnumValue:(MSGraphExternalConnectorsPropertyTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsPropertyTypeValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsPropertyType)

- (MSGraphExternalConnectorsPropertyType*) toMSGraphExternalConnectorsPropertyType;

@end
