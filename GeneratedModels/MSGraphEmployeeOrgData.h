// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphEmployeeOrgData : MSObject

@property (nullable, nonatomic, setter=setCostCenter:, getter=costCenter) NSString* costCenter;
@property (nullable, nonatomic, setter=setDivision:, getter=division) NSString* division;

@end
