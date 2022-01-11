// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphStagedFeatureNameValue){

	MSGraphStagedFeatureNamePassthroughAuthentication = 0,
	MSGraphStagedFeatureNameSeamlessSso = 1,
	MSGraphStagedFeatureNamePasswordHashSync = 2,
	MSGraphStagedFeatureNameEmailAsAlternateId = 3,
	MSGraphStagedFeatureNameUnknownFutureValue = 4,
	MSGraphStagedFeatureNameCertificateBasedAuthentication = 5,
    MSGraphStagedFeatureNameEndOfEnum
};

@interface MSGraphStagedFeatureName : NSObject

+(MSGraphStagedFeatureName*) passthroughAuthentication;
+(MSGraphStagedFeatureName*) seamlessSso;
+(MSGraphStagedFeatureName*) passwordHashSync;
+(MSGraphStagedFeatureName*) emailAsAlternateId;
+(MSGraphStagedFeatureName*) unknownFutureValue;
+(MSGraphStagedFeatureName*) certificateBasedAuthentication;

+(MSGraphStagedFeatureName*) UnknownEnumValue;

+(MSGraphStagedFeatureName*) stagedFeatureNameWithEnumValue:(MSGraphStagedFeatureNameValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphStagedFeatureNameValue enumValue;

@end


@interface NSString (MSGraphStagedFeatureName)

- (MSGraphStagedFeatureName*) toMSGraphStagedFeatureName;

@end
