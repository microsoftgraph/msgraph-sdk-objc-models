// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSettingSourceTypeValue){

	MSGraphSettingSourceTypeDeviceConfiguration = 0,
	MSGraphSettingSourceTypeDeviceIntent = 1,
    MSGraphSettingSourceTypeEndOfEnum
};

@interface MSGraphSettingSourceType : NSObject

+(MSGraphSettingSourceType*) deviceConfiguration;
+(MSGraphSettingSourceType*) deviceIntent;

+(MSGraphSettingSourceType*) UnknownEnumValue;

+(MSGraphSettingSourceType*) settingSourceTypeWithEnumValue:(MSGraphSettingSourceTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSettingSourceTypeValue enumValue;

@end


@interface NSString (MSGraphSettingSourceType)

- (MSGraphSettingSourceType*) toMSGraphSettingSourceType;

@end
