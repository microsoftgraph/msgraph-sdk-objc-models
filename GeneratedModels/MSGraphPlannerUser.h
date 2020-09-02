// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPlannerPlan, MSGraphPlannerTask; 


#import "MSGraphEntity.h"

@interface MSGraphPlannerUser : MSGraphEntity

  @property (nullable, nonatomic, setter=setPlans:, getter=plans) NSArray* plans;
    @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
  
@end
