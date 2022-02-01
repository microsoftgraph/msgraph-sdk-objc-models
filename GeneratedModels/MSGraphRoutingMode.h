// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoutingModeValue){

	MSGraphRoutingModeOneToOne = 0,
	MSGraphRoutingModeMulticast = 1,
	MSGraphRoutingModeUnknownFutureValue = 2,
    MSGraphRoutingModeEndOfEnum
};

@interface MSGraphRoutingMode : NSObject

+(MSGraphRoutingMode*) oneToOne;
+(MSGraphRoutingMode*) multicast;
+(MSGraphRoutingMode*) unknownFutureValue;

+(MSGraphRoutingMode*) UnknownEnumValue;

+(MSGraphRoutingMode*) routingModeWithEnumValue:(MSGraphRoutingModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoutingModeValue enumValue;

@end


@interface NSString (MSGraphRoutingMode)

- (MSGraphRoutingMode*) toMSGraphRoutingMode;

@end
