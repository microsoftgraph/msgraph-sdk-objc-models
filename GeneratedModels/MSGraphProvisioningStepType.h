// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphProvisioningStepTypeValue){

	MSGraphProvisioningStepTypeImport = 0,
	MSGraphProvisioningStepTypeScoping = 1,
	MSGraphProvisioningStepTypeMatching = 2,
	MSGraphProvisioningStepTypeProcessing = 3,
	MSGraphProvisioningStepTypeReferenceResolution = 4,
	MSGraphProvisioningStepTypeExport = 5,
	MSGraphProvisioningStepTypeUnknownFutureValue = 6,
    MSGraphProvisioningStepTypeEndOfEnum
};

@interface MSGraphProvisioningStepType : NSObject

+(MSGraphProvisioningStepType*) import;
+(MSGraphProvisioningStepType*) scoping;
+(MSGraphProvisioningStepType*) matching;
+(MSGraphProvisioningStepType*) processing;
+(MSGraphProvisioningStepType*) referenceResolution;
+(MSGraphProvisioningStepType*) export;
+(MSGraphProvisioningStepType*) unknownFutureValue;

+(MSGraphProvisioningStepType*) UnknownEnumValue;

+(MSGraphProvisioningStepType*) provisioningStepTypeWithEnumValue:(MSGraphProvisioningStepTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphProvisioningStepTypeValue enumValue;

@end


@interface NSString (MSGraphProvisioningStepType)

- (MSGraphProvisioningStepType*) toMSGraphProvisioningStepType;

@end
