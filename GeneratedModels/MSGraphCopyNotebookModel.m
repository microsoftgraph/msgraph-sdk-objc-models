// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCopyNotebookModel()
{
    NSString* _createdBy;
    MSGraphIdentitySet* _createdByIdentity;
    NSDate* _createdTime;
    NSString* _copyNotebookModelId;
    BOOL _isDefault;
    BOOL _isShared;
    NSString* _lastModifiedBy;
    MSGraphIdentitySet* _lastModifiedByIdentity;
    NSDate* _lastModifiedTime;
    MSGraphNotebookLinks* _links;
    NSString* _name;
    NSString* _sectionGroupsUrl;
    NSString* _sectionsUrl;
    NSString* _copyNotebookModelSelf;
    MSGraphOnenoteUserRole* _userRole;
}
@end

@implementation MSGraphCopyNotebookModel

- (NSString*) createdBy
{
    if([[NSNull null] isEqual:self.dictionary[@"createdBy"]])
    {
        return nil;
    }   
    return self.dictionary[@"createdBy"];
}

- (void) setCreatedBy: (NSString*) val
{
    self.dictionary[@"createdBy"] = val;
}

- (MSGraphIdentitySet*) createdByIdentity
{
    if(!_createdByIdentity){
        _createdByIdentity = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdByIdentity"]];
    }
    return _createdByIdentity;
}

- (void) setCreatedByIdentity: (MSGraphIdentitySet*) val
{
    _createdByIdentity = val;
    self.dictionary[@"createdByIdentity"] = val;
}

- (NSDate*) createdTime
{
    if(!_createdTime){
        _createdTime = [NSDate ms_dateFromString: self.dictionary[@"createdTime"]];
    }
    return _createdTime;
}

- (void) setCreatedTime: (NSDate*) val
{
    _createdTime = val;
    self.dictionary[@"createdTime"] = [val ms_toString];
}

- (NSString*) getCopyNotebookModelId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setCopyNotebookModelId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (BOOL) isDefault
{
    _isDefault = [self.dictionary[@"isDefault"] boolValue];
    return _isDefault;
}

- (void) setIsDefault: (BOOL) val
{
    _isDefault = val;
    self.dictionary[@"isDefault"] = @(val);
}

- (BOOL) isShared
{
    _isShared = [self.dictionary[@"isShared"] boolValue];
    return _isShared;
}

- (void) setIsShared: (BOOL) val
{
    _isShared = val;
    self.dictionary[@"isShared"] = @(val);
}

- (NSString*) lastModifiedBy
{
    if([[NSNull null] isEqual:self.dictionary[@"lastModifiedBy"]])
    {
        return nil;
    }   
    return self.dictionary[@"lastModifiedBy"];
}

- (void) setLastModifiedBy: (NSString*) val
{
    self.dictionary[@"lastModifiedBy"] = val;
}

- (MSGraphIdentitySet*) lastModifiedByIdentity
{
    if(!_lastModifiedByIdentity){
        _lastModifiedByIdentity = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"lastModifiedByIdentity"]];
    }
    return _lastModifiedByIdentity;
}

- (void) setLastModifiedByIdentity: (MSGraphIdentitySet*) val
{
    _lastModifiedByIdentity = val;
    self.dictionary[@"lastModifiedByIdentity"] = val;
}

- (NSDate*) lastModifiedTime
{
    if(!_lastModifiedTime){
        _lastModifiedTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedTime"]];
    }
    return _lastModifiedTime;
}

- (void) setLastModifiedTime: (NSDate*) val
{
    _lastModifiedTime = val;
    self.dictionary[@"lastModifiedTime"] = [val ms_toString];
}

- (MSGraphNotebookLinks*) links
{
    if(!_links){
        _links = [[MSGraphNotebookLinks alloc] initWithDictionary: self.dictionary[@"links"]];
    }
    return _links;
}

- (void) setLinks: (MSGraphNotebookLinks*) val
{
    _links = val;
    self.dictionary[@"links"] = val;
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

- (NSString*) sectionGroupsUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"sectionGroupsUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"sectionGroupsUrl"];
}

- (void) setSectionGroupsUrl: (NSString*) val
{
    self.dictionary[@"sectionGroupsUrl"] = val;
}

- (NSString*) sectionsUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"sectionsUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"sectionsUrl"];
}

- (void) setSectionsUrl: (NSString*) val
{
    self.dictionary[@"sectionsUrl"] = val;
}

- (NSString*) getCopyNotebookModelSelf
{
    if([[NSNull null] isEqual:self.dictionary[@"self"]])
    {
        return nil;
    }   
    return self.dictionary[@"self"];
}

- (void) setCopyNotebookModelSelf: (NSString*) val
{
    self.dictionary[@"self"] = val;
}

- (MSGraphOnenoteUserRole*) userRole
{
    if(!_userRole){
        _userRole = [self.dictionary[@"userRole"] toMSGraphOnenoteUserRole];
    }
    return _userRole;
}

- (void) setUserRole: (MSGraphOnenoteUserRole*) val
{
    _userRole = val;
    self.dictionary[@"userRole"] = val;
}

@end
