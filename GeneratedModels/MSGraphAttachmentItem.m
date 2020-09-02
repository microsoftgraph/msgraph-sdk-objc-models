// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttachmentItem()
{
    MSGraphAttachmentType* _attachmentType;
    NSString* _contentType;
    BOOL _isInline;
    NSString* _name;
    int64_t _size;
}
@end

@implementation MSGraphAttachmentItem

- (MSGraphAttachmentType*) attachmentType
{
    if(!_attachmentType){
        _attachmentType = [self.dictionary[@"attachmentType"] toMSGraphAttachmentType];
    }
    return _attachmentType;
}

- (void) setAttachmentType: (MSGraphAttachmentType*) val
{
    _attachmentType = val;
    self.dictionary[@"attachmentType"] = val;
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

- (BOOL) isInline
{
    _isInline = [self.dictionary[@"isInline"] boolValue];
    return _isInline;
}

- (void) setIsInline: (BOOL) val
{
    _isInline = val;
    self.dictionary[@"isInline"] = @(val);
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

- (int64_t) size
{
    _size = [self.dictionary[@"size"] longLongValue];
    return _size;
}

- (void) setSize: (int64_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

@end
