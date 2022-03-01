// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementExportJobLocalizationType.h"

@interface MSGraphDeviceManagementExportJobLocalizationType () {
    MSGraphDeviceManagementExportJobLocalizationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementExportJobLocalizationTypeValue enumValue;
@end

@implementation MSGraphDeviceManagementExportJobLocalizationType

+ (MSGraphDeviceManagementExportJobLocalizationType*) localizedValuesAsAdditionalColumn {
    static MSGraphDeviceManagementExportJobLocalizationType *_localizedValuesAsAdditionalColumn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localizedValuesAsAdditionalColumn = [[MSGraphDeviceManagementExportJobLocalizationType alloc] init];
        _localizedValuesAsAdditionalColumn.enumValue = MSGraphDeviceManagementExportJobLocalizationTypeLocalizedValuesAsAdditionalColumn;
    });
    return _localizedValuesAsAdditionalColumn;
}
+ (MSGraphDeviceManagementExportJobLocalizationType*) replaceLocalizableValues {
    static MSGraphDeviceManagementExportJobLocalizationType *_replaceLocalizableValues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _replaceLocalizableValues = [[MSGraphDeviceManagementExportJobLocalizationType alloc] init];
        _replaceLocalizableValues.enumValue = MSGraphDeviceManagementExportJobLocalizationTypeReplaceLocalizableValues;
    });
    return _replaceLocalizableValues;
}

+ (MSGraphDeviceManagementExportJobLocalizationType*) UnknownEnumValue {
    static MSGraphDeviceManagementExportJobLocalizationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementExportJobLocalizationType alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementExportJobLocalizationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementExportJobLocalizationType*) deviceManagementExportJobLocalizationTypeWithEnumValue:(MSGraphDeviceManagementExportJobLocalizationTypeValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementExportJobLocalizationTypeLocalizedValuesAsAdditionalColumn:
            return [MSGraphDeviceManagementExportJobLocalizationType localizedValuesAsAdditionalColumn];
        case MSGraphDeviceManagementExportJobLocalizationTypeReplaceLocalizableValues:
            return [MSGraphDeviceManagementExportJobLocalizationType replaceLocalizableValues];
        case MSGraphDeviceManagementExportJobLocalizationTypeEndOfEnum:
        default:
            return [MSGraphDeviceManagementExportJobLocalizationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementExportJobLocalizationTypeLocalizedValuesAsAdditionalColumn:
            return @"localizedValuesAsAdditionalColumn";
        case MSGraphDeviceManagementExportJobLocalizationTypeReplaceLocalizableValues:
            return @"replaceLocalizableValues";
        case MSGraphDeviceManagementExportJobLocalizationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementExportJobLocalizationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementExportJobLocalizationType)

- (MSGraphDeviceManagementExportJobLocalizationType*) toMSGraphDeviceManagementExportJobLocalizationType{

    if([self isEqualToString:@"localizedValuesAsAdditionalColumn"])
    {
          return [MSGraphDeviceManagementExportJobLocalizationType localizedValuesAsAdditionalColumn];
    }
    else if([self isEqualToString:@"replaceLocalizableValues"])
    {
          return [MSGraphDeviceManagementExportJobLocalizationType replaceLocalizableValues];
    }
    else {
        return [MSGraphDeviceManagementExportJobLocalizationType UnknownEnumValue];
    }
}

@end
