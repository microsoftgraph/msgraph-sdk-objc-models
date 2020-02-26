// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEndpointTypeValue){

	MSGraphEndpointTypeDefault = 0,
	MSGraphEndpointTypeVoicemail = 1,
	MSGraphEndpointTypeSkypeForBusiness = 2,
	MSGraphEndpointTypeSkypeForBusinessVoipPhone = 3,
	MSGraphEndpointTypeUnknownFutureValue = 4,
    MSGraphEndpointTypeEndOfEnum
};

@interface MSGraphEndpointType : NSObject

+(MSGraphEndpointType*) default;
+(MSGraphEndpointType*) voicemail;
+(MSGraphEndpointType*) skypeForBusiness;
+(MSGraphEndpointType*) skypeForBusinessVoipPhone;
+(MSGraphEndpointType*) unknownFutureValue;

+(MSGraphEndpointType*) UnknownEnumValue;

+(MSGraphEndpointType*) endpointTypeWithEnumValue:(MSGraphEndpointTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEndpointTypeValue enumValue;

@end


@interface NSString (MSGraphEndpointType)

- (MSGraphEndpointType*) toMSGraphEndpointType;

@end
