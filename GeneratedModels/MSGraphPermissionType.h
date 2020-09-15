// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPermissionTypeValue){

	MSGraphPermissionTypeDelegatedUserConsentable = 1,
	MSGraphPermissionTypeDelegated = 2,
	MSGraphPermissionTypeApplication = 3,
    MSGraphPermissionTypeEndOfEnum
};

@interface MSGraphPermissionType : NSObject

+(MSGraphPermissionType*) delegatedUserConsentable;
+(MSGraphPermissionType*) delegated;
+(MSGraphPermissionType*) application;

+(MSGraphPermissionType*) UnknownEnumValue;

+(MSGraphPermissionType*) permissionTypeWithEnumValue:(MSGraphPermissionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPermissionTypeValue enumValue;

@end


@interface NSString (MSGraphPermissionType)

- (MSGraphPermissionType*) toMSGraphPermissionType;

@end
