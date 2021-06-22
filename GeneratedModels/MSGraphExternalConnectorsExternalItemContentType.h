// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsExternalItemContentTypeValue){

	MSGraphExternalConnectorsExternalItemContentTypeText = 1,
	MSGraphExternalConnectorsExternalItemContentTypeHtml = 2,
	MSGraphExternalConnectorsExternalItemContentTypeUnknownFutureValue = 3,
    MSGraphExternalConnectorsExternalItemContentTypeEndOfEnum
};

@interface MSGraphExternalConnectorsExternalItemContentType : NSObject

+(MSGraphExternalConnectorsExternalItemContentType*) text;
+(MSGraphExternalConnectorsExternalItemContentType*) html;
+(MSGraphExternalConnectorsExternalItemContentType*) unknownFutureValue;

+(MSGraphExternalConnectorsExternalItemContentType*) UnknownEnumValue;

+(MSGraphExternalConnectorsExternalItemContentType*) externalItemContentTypeWithEnumValue:(MSGraphExternalConnectorsExternalItemContentTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsExternalItemContentTypeValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsExternalItemContentType)

- (MSGraphExternalConnectorsExternalItemContentType*) toMSGraphExternalConnectorsExternalItemContentType;

@end
