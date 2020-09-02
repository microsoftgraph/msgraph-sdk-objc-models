// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeam()
{
    NSString* _classification;
    NSString* _teamDescription;
    NSString* _displayName;
    MSGraphTeamFunSettings* _funSettings;
    MSGraphTeamGuestSettings* _guestSettings;
    NSString* _internalId;
    BOOL _isArchived;
    MSGraphTeamMemberSettings* _memberSettings;
    MSGraphTeamMessagingSettings* _messagingSettings;
    MSGraphTeamSpecialization* _specialization;
    MSGraphTeamVisibilityType* _visibility;
    NSString* _webUrl;
    MSGraphSchedule* _schedule;
    NSArray* _channels;
    MSGraphGroup* _group;
    NSArray* _installedApps;
    NSArray* _members;
    NSArray* _teamOperations;
    MSGraphChannel* _primaryChannel;
    MSGraphTeamsTemplate* _template;
}
@end

@implementation MSGraphTeam

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.team";
    }
    return self;
}
- (NSString*) classification
{
    if([[NSNull null] isEqual:self.dictionary[@"classification"]])
    {
        return nil;
    }   
    return self.dictionary[@"classification"];
}

- (void) setClassification: (NSString*) val
{
    self.dictionary[@"classification"] = val;
}

- (NSString*) teamDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setTeamDescription: (NSString*) val
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

- (MSGraphTeamFunSettings*) funSettings
{
    if(!_funSettings){
        _funSettings = [[MSGraphTeamFunSettings alloc] initWithDictionary: self.dictionary[@"funSettings"]];
    }
    return _funSettings;
}

- (void) setFunSettings: (MSGraphTeamFunSettings*) val
{
    _funSettings = val;
    self.dictionary[@"funSettings"] = val;
}

- (MSGraphTeamGuestSettings*) guestSettings
{
    if(!_guestSettings){
        _guestSettings = [[MSGraphTeamGuestSettings alloc] initWithDictionary: self.dictionary[@"guestSettings"]];
    }
    return _guestSettings;
}

- (void) setGuestSettings: (MSGraphTeamGuestSettings*) val
{
    _guestSettings = val;
    self.dictionary[@"guestSettings"] = val;
}

- (NSString*) internalId
{
    if([[NSNull null] isEqual:self.dictionary[@"internalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"internalId"];
}

- (void) setInternalId: (NSString*) val
{
    self.dictionary[@"internalId"] = val;
}

- (BOOL) isArchived
{
    _isArchived = [self.dictionary[@"isArchived"] boolValue];
    return _isArchived;
}

- (void) setIsArchived: (BOOL) val
{
    _isArchived = val;
    self.dictionary[@"isArchived"] = @(val);
}

- (MSGraphTeamMemberSettings*) memberSettings
{
    if(!_memberSettings){
        _memberSettings = [[MSGraphTeamMemberSettings alloc] initWithDictionary: self.dictionary[@"memberSettings"]];
    }
    return _memberSettings;
}

- (void) setMemberSettings: (MSGraphTeamMemberSettings*) val
{
    _memberSettings = val;
    self.dictionary[@"memberSettings"] = val;
}

- (MSGraphTeamMessagingSettings*) messagingSettings
{
    if(!_messagingSettings){
        _messagingSettings = [[MSGraphTeamMessagingSettings alloc] initWithDictionary: self.dictionary[@"messagingSettings"]];
    }
    return _messagingSettings;
}

- (void) setMessagingSettings: (MSGraphTeamMessagingSettings*) val
{
    _messagingSettings = val;
    self.dictionary[@"messagingSettings"] = val;
}

- (MSGraphTeamSpecialization*) specialization
{
    if(!_specialization){
        _specialization = [self.dictionary[@"specialization"] toMSGraphTeamSpecialization];
    }
    return _specialization;
}

- (void) setSpecialization: (MSGraphTeamSpecialization*) val
{
    _specialization = val;
    self.dictionary[@"specialization"] = val;
}

- (MSGraphTeamVisibilityType*) visibility
{
    if(!_visibility){
        _visibility = [self.dictionary[@"visibility"] toMSGraphTeamVisibilityType];
    }
    return _visibility;
}

- (void) setVisibility: (MSGraphTeamVisibilityType*) val
{
    _visibility = val;
    self.dictionary[@"visibility"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

- (MSGraphSchedule*) schedule
{
    if(!_schedule){
        _schedule = [[MSGraphSchedule alloc] initWithDictionary: self.dictionary[@"schedule"]];
    }
    return _schedule;
}

- (void) setSchedule: (MSGraphSchedule*) val
{
    _schedule = val;
    self.dictionary[@"schedule"] = val;
}

- (NSArray*) channels
{
    if(!_channels){
        
    NSMutableArray *channelsResult = [NSMutableArray array];
    NSArray *channels = self.dictionary[@"channels"];

    if ([channels isKindOfClass:[NSArray class]]){
        for (id tempChannel in channels){
            [channelsResult addObject:tempChannel];
        }
    }

    _channels = channelsResult;
        
    }
    return _channels;
}

- (void) setChannels: (NSArray*) val
{
    _channels = val;
    self.dictionary[@"channels"] = val;
}

- (MSGraphGroup*) group
{
    if(!_group){
        _group = [[MSGraphGroup alloc] initWithDictionary: self.dictionary[@"group"]];
    }
    return _group;
}

- (void) setGroup: (MSGraphGroup*) val
{
    _group = val;
    self.dictionary[@"group"] = val;
}

- (NSArray*) installedApps
{
    if(!_installedApps){
        
    NSMutableArray *installedAppsResult = [NSMutableArray array];
    NSArray *installedApps = self.dictionary[@"installedApps"];

    if ([installedApps isKindOfClass:[NSArray class]]){
        for (id tempTeamsAppInstallation in installedApps){
            [installedAppsResult addObject:tempTeamsAppInstallation];
        }
    }

    _installedApps = installedAppsResult;
        
    }
    return _installedApps;
}

- (void) setInstalledApps: (NSArray*) val
{
    _installedApps = val;
    self.dictionary[@"installedApps"] = val;
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempConversationMember in members){
            [membersResult addObject:tempConversationMember];
        }
    }

    _members = membersResult;
        
    }
    return _members;
}

- (void) setMembers: (NSArray*) val
{
    _members = val;
    self.dictionary[@"members"] = val;
}

- (NSArray*) teamOperations
{
    if(!_teamOperations){
        
    NSMutableArray *teamOperationsResult = [NSMutableArray array];
    NSArray *teamOperations = self.dictionary[@"operations"];

    if ([teamOperations isKindOfClass:[NSArray class]]){
        for (id tempTeamsAsyncOperation in teamOperations){
            [teamOperationsResult addObject:tempTeamsAsyncOperation];
        }
    }

    _teamOperations = teamOperationsResult;
        
    }
    return _teamOperations;
}

- (void) setTeamOperations: (NSArray*) val
{
    _teamOperations = val;
    self.dictionary[@"operations"] = val;
}

- (MSGraphChannel*) primaryChannel
{
    if(!_primaryChannel){
        _primaryChannel = [[MSGraphChannel alloc] initWithDictionary: self.dictionary[@"primaryChannel"]];
    }
    return _primaryChannel;
}

- (void) setPrimaryChannel: (MSGraphChannel*) val
{
    _primaryChannel = val;
    self.dictionary[@"primaryChannel"] = val;
}

- (MSGraphTeamsTemplate*) template
{
    if(!_template){
        _template = [[MSGraphTeamsTemplate alloc] initWithDictionary: self.dictionary[@"template"]];
    }
    return _template;
}

- (void) setTemplate: (MSGraphTeamsTemplate*) val
{
    _template = val;
    self.dictionary[@"template"] = val;
}


@end
