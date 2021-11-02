// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryTag()
{
    MSGraphEdiscoveryChildSelectability* _childSelectability;
    MSGraphIdentitySet* _createdBy;
    NSString* _tagDescription;
    NSString* _displayName;
    NSDate* _lastModifiedDateTime;
    NSArray* _childTags;
    MSGraphEdiscoveryTag* _parent;
}
@end

@implementation MSGraphEdiscoveryTag

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.tag";
    }
    return self;
}
- (MSGraphEdiscoveryChildSelectability*) childSelectability
{
    if(!_childSelectability){
        _childSelectability = [self.dictionary[@"childSelectability"] toMSGraphEdiscoveryChildSelectability];
    }
    return _childSelectability;
}

- (void) setChildSelectability: (MSGraphEdiscoveryChildSelectability*) val
{
    _childSelectability = val;
    self.dictionary[@"childSelectability"] = val;
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSString*) tagDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setTagDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
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

- (NSArray*) childTags
{
    if(!_childTags){
        
    NSMutableArray *childTagsResult = [NSMutableArray array];
    NSArray *childTags = self.dictionary[@"childTags"];

    if ([childTags isKindOfClass:[NSArray class]]){
        for (id tempTag in childTags){
            [childTagsResult addObject:tempTag];
        }
    }

    _childTags = childTagsResult;
        
    }
    return _childTags;
}

- (void) setChildTags: (NSArray*) val
{
    _childTags = val;
    self.dictionary[@"childTags"] = val;
}

- (MSGraphEdiscoveryTag*) parent
{
    if(!_parent){
        _parent = [[MSGraphEdiscoveryTag alloc] initWithDictionary: self.dictionary[@"parent"]];
    }
    return _parent;
}

- (void) setParent: (MSGraphEdiscoveryTag*) val
{
    _parent = val;
    self.dictionary[@"parent"] = val;
}


@end
