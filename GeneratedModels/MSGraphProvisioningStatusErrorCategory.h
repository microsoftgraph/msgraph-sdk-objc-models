// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphProvisioningStatusErrorCategoryValue){

	MSGraphProvisioningStatusErrorCategoryFailure = 0,
	MSGraphProvisioningStatusErrorCategoryNonServiceFailure = 1,
	MSGraphProvisioningStatusErrorCategorySuccess = 2,
	MSGraphProvisioningStatusErrorCategoryUnknownFutureValue = 3,
    MSGraphProvisioningStatusErrorCategoryEndOfEnum
};

@interface MSGraphProvisioningStatusErrorCategory : NSObject

+(MSGraphProvisioningStatusErrorCategory*) failure;
+(MSGraphProvisioningStatusErrorCategory*) nonServiceFailure;
+(MSGraphProvisioningStatusErrorCategory*) success;
+(MSGraphProvisioningStatusErrorCategory*) unknownFutureValue;

+(MSGraphProvisioningStatusErrorCategory*) UnknownEnumValue;

+(MSGraphProvisioningStatusErrorCategory*) provisioningStatusErrorCategoryWithEnumValue:(MSGraphProvisioningStatusErrorCategoryValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphProvisioningStatusErrorCategoryValue enumValue;

@end


@interface NSString (MSGraphProvisioningStatusErrorCategory)

- (MSGraphProvisioningStatusErrorCategory*) toMSGraphProvisioningStatusErrorCategory;

@end
