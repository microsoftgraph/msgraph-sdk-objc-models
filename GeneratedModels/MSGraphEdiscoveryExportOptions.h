// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryExportOptionsValue){

	MSGraphEdiscoveryExportOptionsOriginalFiles = 1,
	MSGraphEdiscoveryExportOptionsText = 2,
	MSGraphEdiscoveryExportOptionsPdfReplacement = 4,
	MSGraphEdiscoveryExportOptionsFileInfo = 8,
	MSGraphEdiscoveryExportOptionsTags = 16,
	MSGraphEdiscoveryExportOptionsUnknownFutureValue = 32,
    MSGraphEdiscoveryExportOptionsEndOfEnum
};

@interface MSGraphEdiscoveryExportOptions : NSObject

+(MSGraphEdiscoveryExportOptions*) originalFiles;
+(MSGraphEdiscoveryExportOptions*) text;
+(MSGraphEdiscoveryExportOptions*) pdfReplacement;
+(MSGraphEdiscoveryExportOptions*) fileInfo;
+(MSGraphEdiscoveryExportOptions*) tags;
+(MSGraphEdiscoveryExportOptions*) unknownFutureValue;

+(MSGraphEdiscoveryExportOptions*) UnknownEnumValue;

+(MSGraphEdiscoveryExportOptions*) exportOptionsWithEnumValue:(MSGraphEdiscoveryExportOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryExportOptionsValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryExportOptions)

- (MSGraphEdiscoveryExportOptions*) toMSGraphEdiscoveryExportOptions;

@end
