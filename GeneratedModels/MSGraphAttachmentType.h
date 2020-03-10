// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAttachmentTypeValue){

	MSGraphAttachmentTypeFile = 0,
	MSGraphAttachmentTypeItem = 1,
	MSGraphAttachmentTypeReference = 2,
    MSGraphAttachmentTypeEndOfEnum
};

@interface MSGraphAttachmentType : NSObject

+(MSGraphAttachmentType*) file;
+(MSGraphAttachmentType*) item;
+(MSGraphAttachmentType*) reference;

+(MSGraphAttachmentType*) UnknownEnumValue;

+(MSGraphAttachmentType*) attachmentTypeWithEnumValue:(MSGraphAttachmentTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAttachmentTypeValue enumValue;

@end


@interface NSString (MSGraphAttachmentType)

- (MSGraphAttachmentType*) toMSGraphAttachmentType;

@end
