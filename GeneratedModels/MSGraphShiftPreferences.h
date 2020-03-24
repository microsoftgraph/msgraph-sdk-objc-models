// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphShiftAvailability; 


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphShiftPreferences : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setAvailability:, getter=availability) NSArray* availability;
  
@end
