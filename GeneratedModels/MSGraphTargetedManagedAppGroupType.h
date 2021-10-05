// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTargetedManagedAppGroupTypeValue){

	MSGraphTargetedManagedAppGroupTypeSelectedPublicApps = 0,
	MSGraphTargetedManagedAppGroupTypeAllCoreMicrosoftApps = 1,
	MSGraphTargetedManagedAppGroupTypeAllMicrosoftApps = 2,
	MSGraphTargetedManagedAppGroupTypeAllApps = 4,
    MSGraphTargetedManagedAppGroupTypeEndOfEnum
};

@interface MSGraphTargetedManagedAppGroupType : NSObject

+(MSGraphTargetedManagedAppGroupType*) selectedPublicApps;
+(MSGraphTargetedManagedAppGroupType*) allCoreMicrosoftApps;
+(MSGraphTargetedManagedAppGroupType*) allMicrosoftApps;
+(MSGraphTargetedManagedAppGroupType*) allApps;

+(MSGraphTargetedManagedAppGroupType*) UnknownEnumValue;

+(MSGraphTargetedManagedAppGroupType*) targetedManagedAppGroupTypeWithEnumValue:(MSGraphTargetedManagedAppGroupTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTargetedManagedAppGroupTypeValue enumValue;

@end


@interface NSString (MSGraphTargetedManagedAppGroupType)

- (MSGraphTargetedManagedAppGroupType*) toMSGraphTargetedManagedAppGroupType;

@end
