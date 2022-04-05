// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphTeamsAppInstalledEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nullable, nonatomic, setter=setTeamsAppDisplayName:, getter=teamsAppDisplayName) NSString* teamsAppDisplayName;
@property (nullable, nonatomic, setter=setTeamsAppId:, getter=teamsAppId) NSString* teamsAppId;

@end
