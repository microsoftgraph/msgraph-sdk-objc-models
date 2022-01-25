// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementReportFileFormatValue){

	MSGraphDeviceManagementReportFileFormatCsv = 0,
	MSGraphDeviceManagementReportFileFormatPdf = 1,
    MSGraphDeviceManagementReportFileFormatEndOfEnum
};

@interface MSGraphDeviceManagementReportFileFormat : NSObject

+(MSGraphDeviceManagementReportFileFormat*) csv;
+(MSGraphDeviceManagementReportFileFormat*) pdf;

+(MSGraphDeviceManagementReportFileFormat*) UnknownEnumValue;

+(MSGraphDeviceManagementReportFileFormat*) deviceManagementReportFileFormatWithEnumValue:(MSGraphDeviceManagementReportFileFormatValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementReportFileFormatValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementReportFileFormat)

- (MSGraphDeviceManagementReportFileFormat*) toMSGraphDeviceManagementReportFileFormat;

@end
