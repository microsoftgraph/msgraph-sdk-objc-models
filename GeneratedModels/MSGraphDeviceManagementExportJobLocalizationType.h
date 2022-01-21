// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementExportJobLocalizationTypeValue){

	MSGraphDeviceManagementExportJobLocalizationTypeLocalizedValuesAsAdditionalColumn = 0,
	MSGraphDeviceManagementExportJobLocalizationTypeReplaceLocalizableValues = 1,
    MSGraphDeviceManagementExportJobLocalizationTypeEndOfEnum
};

@interface MSGraphDeviceManagementExportJobLocalizationType : NSObject

+(MSGraphDeviceManagementExportJobLocalizationType*) localizedValuesAsAdditionalColumn;
+(MSGraphDeviceManagementExportJobLocalizationType*) replaceLocalizableValues;

+(MSGraphDeviceManagementExportJobLocalizationType*) UnknownEnumValue;

+(MSGraphDeviceManagementExportJobLocalizationType*) deviceManagementExportJobLocalizationTypeWithEnumValue:(MSGraphDeviceManagementExportJobLocalizationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementExportJobLocalizationTypeValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementExportJobLocalizationType)

- (MSGraphDeviceManagementExportJobLocalizationType*) toMSGraphDeviceManagementExportJobLocalizationType;

@end
