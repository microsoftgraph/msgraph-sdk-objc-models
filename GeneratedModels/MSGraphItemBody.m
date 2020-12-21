// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemBody()
{
    NSString* _content;
    MSGraphBodyType* _contentType;
}
@end

@implementation MSGraphItemBody

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

- (MSGraphBodyType*) contentType
{
    if(!_contentType){
        _contentType = [self.dictionary[@"contentType"] toMSGraphBodyType];
    }
    return _contentType;
}

- (void) setContentType: (MSGraphBodyType*) val
{
    _contentType = val;
    self.dictionary[@"contentType"] = val;
}

@end
