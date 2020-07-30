// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCloudAppSecuritySessionControlTypeValue){

	MSGraphCloudAppSecuritySessionControlTypeMcasConfigured = 0,
	MSGraphCloudAppSecuritySessionControlTypeMonitorOnly = 1,
	MSGraphCloudAppSecuritySessionControlTypeBlockDownloads = 2,
	MSGraphCloudAppSecuritySessionControlTypeUnknownFutureValue = 3,
    MSGraphCloudAppSecuritySessionControlTypeEndOfEnum
};

@interface MSGraphCloudAppSecuritySessionControlType : NSObject

+(MSGraphCloudAppSecuritySessionControlType*) mcasConfigured;
+(MSGraphCloudAppSecuritySessionControlType*) monitorOnly;
+(MSGraphCloudAppSecuritySessionControlType*) blockDownloads;
+(MSGraphCloudAppSecuritySessionControlType*) unknownFutureValue;

+(MSGraphCloudAppSecuritySessionControlType*) UnknownEnumValue;

+(MSGraphCloudAppSecuritySessionControlType*) cloudAppSecuritySessionControlTypeWithEnumValue:(MSGraphCloudAppSecuritySessionControlTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCloudAppSecuritySessionControlTypeValue enumValue;

@end


@interface NSString (MSGraphCloudAppSecuritySessionControlType)

- (MSGraphCloudAppSecuritySessionControlType*) toMSGraphCloudAppSecuritySessionControlType;

@end
