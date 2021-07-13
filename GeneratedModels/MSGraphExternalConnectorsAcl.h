// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsAccessType.h"
#import "MSGraphExternalConnectorsAclType.h"


#import "MSObject.h"

@interface MSGraphExternalConnectorsAcl : MSObject

@property (nonnull, nonatomic, setter=setAccessType:, getter=accessType) MSGraphExternalConnectorsAccessType* accessType;
@property (nonnull, nonatomic, setter=setType:, getter=type) MSGraphExternalConnectorsAclType* type;
@property (nonnull, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
