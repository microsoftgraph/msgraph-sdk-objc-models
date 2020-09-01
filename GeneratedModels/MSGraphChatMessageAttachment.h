// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphChatMessageAttachment : MSObject

@property (nullable, nonatomic, setter=setContent:, getter=content) NSString* content;
@property (nullable, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
@property (nullable, nonatomic, setter=setContentUrl:, getter=contentUrl) NSString* contentUrl;
@property (nullable, nonatomic, setter=setChatMessageAttachmentId:, getter=chatMessageAttachmentId) NSString* chatMessageAttachmentId;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setThumbnailUrl:, getter=thumbnailUrl) NSString* thumbnailUrl;

@end
