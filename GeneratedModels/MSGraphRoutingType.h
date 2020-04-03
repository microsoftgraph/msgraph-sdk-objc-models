// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoutingTypeValue){

	MSGraphRoutingTypeForwarded = 0,
	MSGraphRoutingTypeLookup = 1,
	MSGraphRoutingTypeSelfFork = 2,
	MSGraphRoutingTypeUnknownFutureValue = 3,
    MSGraphRoutingTypeEndOfEnum
};

@interface MSGraphRoutingType : NSObject

+(MSGraphRoutingType*) forwarded;
+(MSGraphRoutingType*) lookup;
+(MSGraphRoutingType*) selfFork;
+(MSGraphRoutingType*) unknownFutureValue;

+(MSGraphRoutingType*) UnknownEnumValue;

+(MSGraphRoutingType*) routingTypeWithEnumValue:(MSGraphRoutingTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoutingTypeValue enumValue;

@end


@interface NSString (MSGraphRoutingType)

- (MSGraphRoutingType*) toMSGraphRoutingType;

@end
