// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphSubjectSet.h"

@interface MSGraphRequestorManager : MSGraphSubjectSet

@property (nonatomic, setter=setManagerLevel:, getter=managerLevel) int32_t managerLevel;

@end
