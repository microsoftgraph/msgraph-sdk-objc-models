// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileApp()
{
    NSDate* _createdDateTime;
    NSString* _mobileAppDescription;
    NSString* _developer;
    NSString* _displayName;
    NSString* _informationUrl;
    BOOL _isFeatured;
    MSGraphMimeContent* _largeIcon;
    NSDate* _lastModifiedDateTime;
    NSString* _notes;
    NSString* _owner;
    NSString* _privacyInformationUrl;
    NSString* _publisher;
    MSGraphMobileAppPublishingState* _publishingState;
    NSArray* _assignments;
    NSArray* _categories;
}
@end

@implementation MSGraphMobileApp

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) mobileAppDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setMobileAppDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) developer
{
    if([[NSNull null] isEqual:self.dictionary[@"developer"]])
    {
        return nil;
    }   
    return self.dictionary[@"developer"];
}

- (void) setDeveloper: (NSString*) val
{
    self.dictionary[@"developer"] = val;
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

- (NSString*) informationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"informationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"informationUrl"];
}

- (void) setInformationUrl: (NSString*) val
{
    self.dictionary[@"informationUrl"] = val;
}

- (BOOL) isFeatured
{
    _isFeatured = [self.dictionary[@"isFeatured"] boolValue];
    return _isFeatured;
}

- (void) setIsFeatured: (BOOL) val
{
    _isFeatured = val;
    self.dictionary[@"isFeatured"] = @(val);
}

- (MSGraphMimeContent*) largeIcon
{
    if(!_largeIcon){
        _largeIcon = [[MSGraphMimeContent alloc] initWithDictionary: self.dictionary[@"largeIcon"]];
    }
    return _largeIcon;
}

- (void) setLargeIcon: (MSGraphMimeContent*) val
{
    _largeIcon = val;
    self.dictionary[@"largeIcon"] = val;
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

- (NSString*) notes
{
    if([[NSNull null] isEqual:self.dictionary[@"notes"]])
    {
        return nil;
    }   
    return self.dictionary[@"notes"];
}

- (void) setNotes: (NSString*) val
{
    self.dictionary[@"notes"] = val;
}

- (NSString*) owner
{
    if([[NSNull null] isEqual:self.dictionary[@"owner"]])
    {
        return nil;
    }   
    return self.dictionary[@"owner"];
}

- (void) setOwner: (NSString*) val
{
    self.dictionary[@"owner"] = val;
}

- (NSString*) privacyInformationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"privacyInformationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"privacyInformationUrl"];
}

- (void) setPrivacyInformationUrl: (NSString*) val
{
    self.dictionary[@"privacyInformationUrl"] = val;
}

- (NSString*) publisher
{
    if([[NSNull null] isEqual:self.dictionary[@"publisher"]])
    {
        return nil;
    }   
    return self.dictionary[@"publisher"];
}

- (void) setPublisher: (NSString*) val
{
    self.dictionary[@"publisher"] = val;
}

- (MSGraphMobileAppPublishingState*) publishingState
{
    if(!_publishingState){
        _publishingState = [self.dictionary[@"publishingState"] toMSGraphMobileAppPublishingState];
    }
    return _publishingState;
}

- (void) setPublishingState: (MSGraphMobileAppPublishingState*) val
{
    _publishingState = val;
    self.dictionary[@"publishingState"] = val;
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempMobileAppAssignment in assignments){
            [assignmentsResult addObject:tempMobileAppAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}

- (NSArray*) categories
{
    if(!_categories){
        
    NSMutableArray *categoriesResult = [NSMutableArray array];
    NSArray *categories = self.dictionary[@"categories"];

    if ([categories isKindOfClass:[NSArray class]]){
        for (id tempMobileAppCategory in categories){
            [categoriesResult addObject:tempMobileAppCategory];
        }
    }

    _categories = categoriesResult;
        
    }
    return _categories;
}

- (void) setCategories: (NSArray*) val
{
    _categories = val;
    self.dictionary[@"categories"] = val;
}


@end
