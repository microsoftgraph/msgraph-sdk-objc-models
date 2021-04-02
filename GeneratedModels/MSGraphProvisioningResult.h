// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphProvisioningResultValue){

	MSGraphProvisioningResultSuccess = 0,
	MSGraphProvisioningResultFailure = 1,
	MSGraphProvisioningResultSkipped = 2,
	MSGraphProvisioningResultWarning = 3,
	MSGraphProvisioningResultUnknownFutureValue = 4,
    MSGraphProvisioningResultEndOfEnum
};

@interface MSGraphProvisioningResult : NSObject

+(MSGraphProvisioningResult*) success;
+(MSGraphProvisioningResult*) failure;
+(MSGraphProvisioningResult*) skipped;
+(MSGraphProvisioningResult*) warning;
+(MSGraphProvisioningResult*) unknownFutureValue;

+(MSGraphProvisioningResult*) UnknownEnumValue;

+(MSGraphProvisioningResult*) provisioningResultWithEnumValue:(MSGraphProvisioningResultValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphProvisioningResultValue enumValue;

@end


@interface NSString (MSGraphProvisioningResult)

- (MSGraphProvisioningResult*) toMSGraphProvisioningResult;

@end
