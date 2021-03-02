// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphTeamworkBot; 
#import "MSGraphTeamsAppPublishingState.h"


#import "MSGraphEntity.h"

@interface MSGraphTeamsAppDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setTeamsAppDefinitionDescription:, getter=teamsAppDefinitionDescription) NSString* teamsAppDefinitionDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setPublishingState:, getter=publishingState) MSGraphTeamsAppPublishingState* publishingState;
    @property (nullable, nonatomic, setter=setShortDescription:, getter=shortDescription) NSString* shortDescription;
    @property (nullable, nonatomic, setter=setTeamsAppId:, getter=teamsAppId) NSString* teamsAppId;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
    @property (nullable, nonatomic, setter=setBot:, getter=bot) MSGraphTeamworkBot* bot;
  
@end
