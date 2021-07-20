// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsLabelValue){

	MSGraphExternalConnectorsLabelTitle = 0,
	MSGraphExternalConnectorsLabelUrl = 1,
	MSGraphExternalConnectorsLabelCreatedBy = 2,
	MSGraphExternalConnectorsLabelLastModifiedBy = 3,
	MSGraphExternalConnectorsLabelAuthors = 4,
	MSGraphExternalConnectorsLabelCreatedDateTime = 5,
	MSGraphExternalConnectorsLabelLastModifiedDateTime = 6,
	MSGraphExternalConnectorsLabelFileName = 7,
	MSGraphExternalConnectorsLabelFileExtension = 8,
	MSGraphExternalConnectorsLabelUnknownFutureValue = 9,
    MSGraphExternalConnectorsLabelEndOfEnum
};

@interface MSGraphExternalConnectorsLabel : NSObject

+(MSGraphExternalConnectorsLabel*) title;
+(MSGraphExternalConnectorsLabel*) url;
+(MSGraphExternalConnectorsLabel*) createdBy;
+(MSGraphExternalConnectorsLabel*) lastModifiedBy;
+(MSGraphExternalConnectorsLabel*) authors;
+(MSGraphExternalConnectorsLabel*) createdDateTime;
+(MSGraphExternalConnectorsLabel*) lastModifiedDateTime;
+(MSGraphExternalConnectorsLabel*) fileName;
+(MSGraphExternalConnectorsLabel*) fileExtension;
+(MSGraphExternalConnectorsLabel*) unknownFutureValue;

+(MSGraphExternalConnectorsLabel*) UnknownEnumValue;

+(MSGraphExternalConnectorsLabel*) labelWithEnumValue:(MSGraphExternalConnectorsLabelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsLabelValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsLabel)

- (MSGraphExternalConnectorsLabel*) toMSGraphExternalConnectorsLabel;

@end
