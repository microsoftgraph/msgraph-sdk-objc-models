// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphSubjectSet.h"

@interface MSGraphConnectedOrganizationMembers : MSGraphSubjectSet

@property (nullable, nonatomic, setter=setConnectedOrganizationId:, getter=connectedOrganizationId) NSString* connectedOrganizationId;
@property (nullable, nonatomic, setter=setConnectedOrganizationMembersDescription:, getter=connectedOrganizationMembersDescription) NSString* connectedOrganizationMembersDescription;

@end
