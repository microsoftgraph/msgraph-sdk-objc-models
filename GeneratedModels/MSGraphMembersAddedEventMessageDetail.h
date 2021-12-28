// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet, MSGraphTeamworkUserIdentity; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphMembersAddedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
@property (nullable, nonatomic, setter=setVisibleHistoryStartDateTime:, getter=visibleHistoryStartDateTime) NSDate* visibleHistoryStartDateTime;

@end
