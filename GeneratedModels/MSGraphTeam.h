// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamFunSettings, MSGraphTeamGuestSettings, MSGraphTeamMemberSettings, MSGraphTeamMessagingSettings, MSGraphSchedule, MSGraphChannel, MSGraphGroup, MSGraphTeamsAppInstallation, MSGraphConversationMember, MSGraphTeamsAsyncOperation, MSGraphTeamsTemplate; 
#import "MSGraphTeamSpecialization.h"
#import "MSGraphTeamVisibilityType.h"


#import "MSGraphEntity.h"

@interface MSGraphTeam : MSGraphEntity

  @property (nullable, nonatomic, setter=setClassification:, getter=classification) NSString* classification;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setTeamDescription:, getter=teamDescription) NSString* teamDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setFunSettings:, getter=funSettings) MSGraphTeamFunSettings* funSettings;
    @property (nullable, nonatomic, setter=setGuestSettings:, getter=guestSettings) MSGraphTeamGuestSettings* guestSettings;
    @property (nullable, nonatomic, setter=setInternalId:, getter=internalId) NSString* internalId;
    @property (nonatomic, setter=setIsArchived:, getter=isArchived) BOOL isArchived;
    @property (nullable, nonatomic, setter=setMemberSettings:, getter=memberSettings) MSGraphTeamMemberSettings* memberSettings;
    @property (nullable, nonatomic, setter=setMessagingSettings:, getter=messagingSettings) MSGraphTeamMessagingSettings* messagingSettings;
    @property (nullable, nonatomic, setter=setSpecialization:, getter=specialization) MSGraphTeamSpecialization* specialization;
    @property (nullable, nonatomic, setter=setVisibility:, getter=visibility) MSGraphTeamVisibilityType* visibility;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setSchedule:, getter=schedule) MSGraphSchedule* schedule;
    @property (nullable, nonatomic, setter=setChannels:, getter=channels) NSArray* channels;
    @property (nullable, nonatomic, setter=setGroup:, getter=group) MSGraphGroup* group;
    @property (nullable, nonatomic, setter=setInstalledApps:, getter=installedApps) NSArray* installedApps;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
    @property (nullable, nonatomic, setter=setTeamOperations:, getter=teamOperations) NSArray* teamOperations;
    @property (nullable, nonatomic, setter=setPrimaryChannel:, getter=primaryChannel) MSGraphChannel* primaryChannel;
    @property (nullable, nonatomic, setter=setTemplate:, getter=template) MSGraphTeamsTemplate* template;
  
@end
