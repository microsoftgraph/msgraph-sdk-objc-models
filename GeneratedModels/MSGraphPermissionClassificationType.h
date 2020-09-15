// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPermissionClassificationTypeValue){

	MSGraphPermissionClassificationTypeLow = 1,
	MSGraphPermissionClassificationTypeMedium = 2,
	MSGraphPermissionClassificationTypeHigh = 3,
	MSGraphPermissionClassificationTypeUnknownFutureValue = 4,
    MSGraphPermissionClassificationTypeEndOfEnum
};

@interface MSGraphPermissionClassificationType : NSObject

+(MSGraphPermissionClassificationType*) low;
+(MSGraphPermissionClassificationType*) medium;
+(MSGraphPermissionClassificationType*) high;
+(MSGraphPermissionClassificationType*) unknownFutureValue;

+(MSGraphPermissionClassificationType*) UnknownEnumValue;

+(MSGraphPermissionClassificationType*) permissionClassificationTypeWithEnumValue:(MSGraphPermissionClassificationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPermissionClassificationTypeValue enumValue;

@end


@interface NSString (MSGraphPermissionClassificationType)

- (MSGraphPermissionClassificationType*) toMSGraphPermissionClassificationType;

@end
