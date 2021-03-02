// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsAppDefinition()
{
    MSGraphIdentitySet* _createdBy;
    NSString* _teamsAppDefinitionDescription;
    NSString* _displayName;
    NSDate* _lastModifiedDateTime;
    MSGraphTeamsAppPublishingState* _publishingState;
    NSString* _shortDescription;
    NSString* _teamsAppId;
    NSString* _version;
    MSGraphTeamworkBot* _bot;
}
@end

@implementation MSGraphTeamsAppDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamsAppDefinition";
    }
    return self;
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

- (NSString*) teamsAppDefinitionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setTeamsAppDefinitionDescription: (NSString*) val
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

- (MSGraphTeamsAppPublishingState*) publishingState
{
    if(!_publishingState){
        _publishingState = [self.dictionary[@"publishingState"] toMSGraphTeamsAppPublishingState];
    }
    return _publishingState;
}

- (void) setPublishingState: (MSGraphTeamsAppPublishingState*) val
{
    _publishingState = val;
    self.dictionary[@"publishingState"] = val;
}

- (NSString*) shortDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"shortDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"shortDescription"];
}

- (void) setShortDescription: (NSString*) val
{
    self.dictionary[@"shortDescription"] = val;
}

- (NSString*) teamsAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"teamsAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"teamsAppId"];
}

- (void) setTeamsAppId: (NSString*) val
{
    self.dictionary[@"teamsAppId"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}

- (MSGraphTeamworkBot*) bot
{
    if(!_bot){
        _bot = [[MSGraphTeamworkBot alloc] initWithDictionary: self.dictionary[@"bot"]];
    }
    return _bot;
}

- (void) setBot: (MSGraphTeamworkBot*) val
{
    _bot = val;
    self.dictionary[@"bot"] = val;
}


@end
