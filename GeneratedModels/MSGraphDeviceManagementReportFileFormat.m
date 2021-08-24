// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementReportFileFormat.h"

@interface MSGraphDeviceManagementReportFileFormat () {
    MSGraphDeviceManagementReportFileFormatValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementReportFileFormatValue enumValue;
@end

@implementation MSGraphDeviceManagementReportFileFormat

+ (MSGraphDeviceManagementReportFileFormat*) csv {
    static MSGraphDeviceManagementReportFileFormat *_csv;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _csv = [[MSGraphDeviceManagementReportFileFormat alloc] init];
        _csv.enumValue = MSGraphDeviceManagementReportFileFormatCsv;
    });
    return _csv;
}
+ (MSGraphDeviceManagementReportFileFormat*) pdf {
    static MSGraphDeviceManagementReportFileFormat *_pdf;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pdf = [[MSGraphDeviceManagementReportFileFormat alloc] init];
        _pdf.enumValue = MSGraphDeviceManagementReportFileFormatPdf;
    });
    return _pdf;
}

+ (MSGraphDeviceManagementReportFileFormat*) UnknownEnumValue {
    static MSGraphDeviceManagementReportFileFormat *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementReportFileFormat alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementReportFileFormatEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementReportFileFormat*) deviceManagementReportFileFormatWithEnumValue:(MSGraphDeviceManagementReportFileFormatValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementReportFileFormatCsv:
            return [MSGraphDeviceManagementReportFileFormat csv];
        case MSGraphDeviceManagementReportFileFormatPdf:
            return [MSGraphDeviceManagementReportFileFormat pdf];
        case MSGraphDeviceManagementReportFileFormatEndOfEnum:
        default:
            return [MSGraphDeviceManagementReportFileFormat UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementReportFileFormatCsv:
            return @"csv";
        case MSGraphDeviceManagementReportFileFormatPdf:
            return @"pdf";
        case MSGraphDeviceManagementReportFileFormatEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementReportFileFormatValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementReportFileFormat)

- (MSGraphDeviceManagementReportFileFormat*) toMSGraphDeviceManagementReportFileFormat{

    if([self isEqualToString:@"csv"])
    {
          return [MSGraphDeviceManagementReportFileFormat csv];
    }
    else if([self isEqualToString:@"pdf"])
    {
          return [MSGraphDeviceManagementReportFileFormat pdf];
    }
    else {
        return [MSGraphDeviceManagementReportFileFormat UnknownEnumValue];
    }
}

@end
