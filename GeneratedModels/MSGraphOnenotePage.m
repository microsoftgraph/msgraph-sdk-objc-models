// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnenotePage()
{
    NSString* _contentUrl;
    NSString* _createdByAppId;
    NSDate* _lastModifiedDateTime;
    int32_t _level;
    MSGraphPageLinks* _links;
    int32_t _order;
    NSString* _title;
    NSArray* _userTags;
    MSGraphNotebook* _parentNotebook;
    MSGraphOnenoteSection* _parentSection;
}
@end

@implementation MSGraphOnenotePage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.onenotePage";
    }
    return self;
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

- (NSString*) createdByAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"createdByAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"createdByAppId"];
}

- (void) setCreatedByAppId: (NSString*) val
{
    self.dictionary[@"createdByAppId"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (int32_t) level
{
    _level = [self.dictionary[@"level"] intValue];
    return _level;
}

- (void) setLevel: (int32_t) val
{
    _level = val;
    self.dictionary[@"level"] = @(val);
}

- (MSGraphPageLinks*) links
{
    if(!_links){
        _links = [[MSGraphPageLinks alloc] initWithDictionary: self.dictionary[@"links"]];
    }
    return _links;
}

- (void) setLinks: (MSGraphPageLinks*) val
{
    _links = val;
    self.dictionary[@"links"] = val;
}

- (int32_t) order
{
    _order = [self.dictionary[@"order"] intValue];
    return _order;
}

- (void) setOrder: (int32_t) val
{
    _order = val;
    self.dictionary[@"order"] = @(val);
}

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSArray*) userTags
{
    if([[NSNull null] isEqual:self.dictionary[@"userTags"]])
    {
        return nil;
    }   
    return self.dictionary[@"userTags"];
}

- (void) setUserTags: (NSArray*) val
{
    self.dictionary[@"userTags"] = val;
}

- (MSGraphNotebook*) parentNotebook
{
    if(!_parentNotebook){
        _parentNotebook = [[MSGraphNotebook alloc] initWithDictionary: self.dictionary[@"parentNotebook"]];
    }
    return _parentNotebook;
}

- (void) setParentNotebook: (MSGraphNotebook*) val
{
    _parentNotebook = val;
    self.dictionary[@"parentNotebook"] = val;
}

- (MSGraphOnenoteSection*) parentSection
{
    if(!_parentSection){
        _parentSection = [[MSGraphOnenoteSection alloc] initWithDictionary: self.dictionary[@"parentSection"]];
    }
    return _parentSection;
}

- (void) setParentSection: (MSGraphOnenoteSection*) val
{
    _parentSection = val;
    self.dictionary[@"parentSection"] = val;
}


@end
