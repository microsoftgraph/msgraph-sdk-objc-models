// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphScheduleChangeRequest.h"

@interface MSGraphOpenShiftChangeRequest : MSGraphScheduleChangeRequest

  @property (nullable, nonatomic, setter=setOpenShiftId:, getter=openShiftId) NSString* openShiftId;
  
@end
