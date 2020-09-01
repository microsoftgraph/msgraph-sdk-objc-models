// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessageAttachment()
{
    NSString* _content;
    NSString* _contentType;
    NSString* _contentUrl;
    NSString* _chatMessageAttachmentId;
    NSString* _name;
    NSString* _thumbnailUrl;
}
@end

@implementation MSGraphChatMessageAttachment

- (NSString*) content
{
    if([[NSNull null] isEqual:self.dictionary[@"content"]])
    {
        return nil;
    }   
    return self.dictionary[@"content"];
}

- (void) setContent: (NSString*) val
{
    self.dictionary[@"content"] = val;
}

- (NSString*) contentType
{
    if([[NSNull null] isEqual:self.dictionary[@"contentType"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentType"];
}

- (void) setContentType: (NSString*) val
{
    self.dictionary[@"contentType"] = val;
}

- (NSString*) contentUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"contentUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentUrl"];
}

- (void) setContentUrl: (NSString*) val
{
    self.dictionary[@"contentUrl"] = val;
}

- (NSString*) chatMessageAttachmentId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setChatMessageAttachmentId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) thumbnailUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"thumbnailUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"thumbnailUrl"];
}

- (void) setThumbnailUrl: (NSString*) val
{
    self.dictionary[@"thumbnailUrl"] = val;
}

@end
