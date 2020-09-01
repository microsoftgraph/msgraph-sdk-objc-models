// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAttachmentType.h"


#import "MSObject.h"

@interface MSGraphAttachmentItem : MSObject

@property (nullable, nonatomic, setter=setAttachmentType:, getter=attachmentType) MSGraphAttachmentType* attachmentType;
@property (nullable, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
@property (nonatomic, setter=setIsInline:, getter=isInline) BOOL isInline;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nonatomic, setter=setSize:, getter=size) int64_t size;

@end
