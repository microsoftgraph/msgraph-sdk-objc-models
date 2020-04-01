// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWorkforceIntegrationSupportedEntitiesValue){

	MSGraphWorkforceIntegrationSupportedEntitiesNone = 0,
	MSGraphWorkforceIntegrationSupportedEntitiesShift = 1,
	MSGraphWorkforceIntegrationSupportedEntitiesSwapRequest = 2,
	MSGraphWorkforceIntegrationSupportedEntitiesUserShiftPreferences = 8,
	MSGraphWorkforceIntegrationSupportedEntitiesOpenShift = 16,
	MSGraphWorkforceIntegrationSupportedEntitiesOpenShiftRequest = 32,
	MSGraphWorkforceIntegrationSupportedEntitiesOfferShiftRequest = 64,
	MSGraphWorkforceIntegrationSupportedEntitiesUnknownFutureValue = 1024,
    MSGraphWorkforceIntegrationSupportedEntitiesEndOfEnum
};

@interface MSGraphWorkforceIntegrationSupportedEntities : NSObject

+(MSGraphWorkforceIntegrationSupportedEntities*) none;
+(MSGraphWorkforceIntegrationSupportedEntities*) shift;
+(MSGraphWorkforceIntegrationSupportedEntities*) swapRequest;
+(MSGraphWorkforceIntegrationSupportedEntities*) userShiftPreferences;
+(MSGraphWorkforceIntegrationSupportedEntities*) openShift;
+(MSGraphWorkforceIntegrationSupportedEntities*) openShiftRequest;
+(MSGraphWorkforceIntegrationSupportedEntities*) offerShiftRequest;
+(MSGraphWorkforceIntegrationSupportedEntities*) unknownFutureValue;

+(MSGraphWorkforceIntegrationSupportedEntities*) UnknownEnumValue;

+(MSGraphWorkforceIntegrationSupportedEntities*) workforceIntegrationSupportedEntitiesWithEnumValue:(MSGraphWorkforceIntegrationSupportedEntitiesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWorkforceIntegrationSupportedEntitiesValue enumValue;

@end


@interface NSString (MSGraphWorkforceIntegrationSupportedEntities)

- (MSGraphWorkforceIntegrationSupportedEntities*) toMSGraphWorkforceIntegrationSupportedEntities;

@end
