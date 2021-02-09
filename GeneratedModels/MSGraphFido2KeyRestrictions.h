// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFido2RestrictionEnforcementType.h"


#import "MSObject.h"

@interface MSGraphFido2KeyRestrictions : MSObject

@property (nullable, nonatomic, setter=setAaGuids:, getter=aaGuids) NSArray* aaGuids;
@property (nullable, nonatomic, setter=setEnforcementType:, getter=enforcementType) MSGraphFido2RestrictionEnforcementType* enforcementType;
@property (nonatomic, setter=setIsEnforced:, getter=isEnforced) BOOL isEnforced;

@end
