// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAttendanceInterval, MSGraphIdentity; 


#import "MSGraphEntity.h"

@interface MSGraphAttendanceRecord : MSGraphEntity

  @property (nullable, nonatomic, setter=setAttendanceIntervals:, getter=attendanceIntervals) NSArray* attendanceIntervals;
    @property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
    @property (nullable, nonatomic, setter=setIdentity:, getter=identity) MSGraphIdentity* identity;
    @property (nullable, nonatomic, setter=setRole:, getter=role) NSString* role;
    @property (nonatomic, setter=setTotalAttendanceInSeconds:, getter=totalAttendanceInSeconds) int32_t totalAttendanceInSeconds;
  
@end
