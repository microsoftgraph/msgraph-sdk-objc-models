// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphSubjectSet.h"

@interface MSGraphGroupMembers : MSGraphSubjectSet

@property (nullable, nonatomic, setter=setGroupMembersDescription:, getter=groupMembersDescription) NSString* groupMembersDescription;
@property (nullable, nonatomic, setter=setGroupId:, getter=groupId) NSString* groupId;

@end
