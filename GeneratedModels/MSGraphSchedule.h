// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphOfferShiftRequest, MSGraphOpenShiftChangeRequest, MSGraphOpenShift, MSGraphSchedulingGroup, MSGraphShift, MSGraphSwapShiftsChangeRequest, MSGraphTimeOffReason, MSGraphTimeOffRequest, MSGraphTimeOff; 
#import "MSGraphOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphSchedule : MSGraphEntity

  @property (nonatomic, setter=setEnabled:, getter=enabled) BOOL enabled;
    @property (nonatomic, setter=setOfferShiftRequestsEnabled:, getter=offerShiftRequestsEnabled) BOOL offerShiftRequestsEnabled;
    @property (nonatomic, setter=setOpenShiftsEnabled:, getter=openShiftsEnabled) BOOL openShiftsEnabled;
    @property (nullable, nonatomic, setter=setProvisionStatus:, getter=provisionStatus) MSGraphOperationStatus* provisionStatus;
    @property (nullable, nonatomic, setter=setProvisionStatusCode:, getter=provisionStatusCode) NSString* provisionStatusCode;
    @property (nonatomic, setter=setSwapShiftsRequestsEnabled:, getter=swapShiftsRequestsEnabled) BOOL swapShiftsRequestsEnabled;
    @property (nonatomic, setter=setTimeClockEnabled:, getter=timeClockEnabled) BOOL timeClockEnabled;
    @property (nonatomic, setter=setTimeOffRequestsEnabled:, getter=timeOffRequestsEnabled) BOOL timeOffRequestsEnabled;
    @property (nullable, nonatomic, setter=setTimeZone:, getter=timeZone) NSString* timeZone;
    @property (nullable, nonatomic, setter=setWorkforceIntegrationIds:, getter=workforceIntegrationIds) NSArray* workforceIntegrationIds;
    @property (nullable, nonatomic, setter=setOfferShiftRequests:, getter=offerShiftRequests) NSArray* offerShiftRequests;
    @property (nullable, nonatomic, setter=setOpenShiftChangeRequests:, getter=openShiftChangeRequests) NSArray* openShiftChangeRequests;
    @property (nullable, nonatomic, setter=setOpenShifts:, getter=openShifts) NSArray* openShifts;
    @property (nullable, nonatomic, setter=setSchedulingGroups:, getter=schedulingGroups) NSArray* schedulingGroups;
    @property (nullable, nonatomic, setter=setShifts:, getter=shifts) NSArray* shifts;
    @property (nullable, nonatomic, setter=setSwapShiftsChangeRequests:, getter=swapShiftsChangeRequests) NSArray* swapShiftsChangeRequests;
    @property (nullable, nonatomic, setter=setTimeOffReasons:, getter=timeOffReasons) NSArray* timeOffReasons;
    @property (nullable, nonatomic, setter=setTimeOffRequests:, getter=timeOffRequests) NSArray* timeOffRequests;
    @property (nullable, nonatomic, setter=setTimesOff:, getter=timesOff) NSArray* timesOff;
  
@end
