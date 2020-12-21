// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnenotePagePreview()
{
    MSGraphOnenotePagePreviewLinks* _links;
    NSString* _previewText;
}
@end

@implementation MSGraphOnenotePagePreview

- (MSGraphOnenotePagePreviewLinks*) links
{
    if(!_links){
        _links = [[MSGraphOnenotePagePreviewLinks alloc] initWithDictionary: self.dictionary[@"links"]];
    }
    return _links;
}

- (void) setLinks: (MSGraphOnenotePagePreviewLinks*) val
{
    _links = val;
    self.dictionary[@"links"] = val;
}

- (NSString*) previewText
{
    if([[NSNull null] isEqual:self.dictionary[@"previewText"]])
    {
        return nil;
    }   
    return self.dictionary[@"previewText"];
}

- (void) setPreviewText: (NSString*) val
{
    self.dictionary[@"previewText"] = val;
}

@end
