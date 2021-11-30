// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphTeamCreatedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nullable, nonatomic, setter=setTeamDescription:, getter=teamDescription) NSString* teamDescription;
@property (nullable, nonatomic, setter=setTeamDisplayName:, getter=teamDisplayName) NSString* teamDisplayName;
@property (nullable, nonatomic, setter=setTeamId:, getter=teamId) NSString* teamId;

@end
