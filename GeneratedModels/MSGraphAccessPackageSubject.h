// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphConnectedOrganization; 
#import "MSGraphAccessPackageSubjectType.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessPackageSubject : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nullable, nonatomic, setter=setObjectId:, getter=objectId) NSString* objectId;
    @property (nullable, nonatomic, setter=setOnPremisesSecurityIdentifier:, getter=onPremisesSecurityIdentifier) NSString* onPremisesSecurityIdentifier;
    @property (nullable, nonatomic, setter=setPrincipalName:, getter=principalName) NSString* principalName;
    @property (nullable, nonatomic, setter=setSubjectType:, getter=subjectType) MSGraphAccessPackageSubjectType* subjectType;
    @property (nullable, nonatomic, setter=setConnectedOrganization:, getter=connectedOrganization) MSGraphConnectedOrganization* connectedOrganization;
  
@end
