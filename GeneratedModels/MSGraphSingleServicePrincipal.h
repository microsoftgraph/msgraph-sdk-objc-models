// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphSubjectSet.h"

@interface MSGraphSingleServicePrincipal : MSGraphSubjectSet

@property (nullable, nonatomic, setter=setSingleServicePrincipalDescription:, getter=singleServicePrincipalDescription) NSString* singleServicePrincipalDescription;
@property (nullable, nonatomic, setter=setServicePrincipalId:, getter=servicePrincipalId) NSString* servicePrincipalId;

@end
