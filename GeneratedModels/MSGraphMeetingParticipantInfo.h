// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 
#import "MSGraphOnlineMeetingRole.h"


#import "MSObject.h"

@interface MSGraphMeetingParticipantInfo : MSObject

@property (nullable, nonatomic, setter=setIdentity:, getter=identity) MSGraphIdentitySet* identity;
@property (nullable, nonatomic, setter=setRole:, getter=role) MSGraphOnlineMeetingRole* role;
@property (nullable, nonatomic, setter=setUpn:, getter=upn) NSString* upn;

@end
