// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSchedule()
{
    BOOL _enabled;
    NSString* _timeZone;
    MSGraphOperationStatus* _provisionStatus;
    NSString* _provisionStatusCode;
    NSArray* _workforceIntegrationIds;
    BOOL _timeClockEnabled;
    BOOL _openShiftsEnabled;
    BOOL _swapShiftsRequestsEnabled;
    BOOL _offerShiftRequestsEnabled;
    BOOL _timeOffRequestsEnabled;
    NSArray* _shifts;
    NSArray* _openShifts;
    NSArray* _timesOff;
    NSArray* _timeOffReasons;
    NSArray* _schedulingGroups;
    NSArray* _swapShiftsChangeRequests;
    NSArray* _openShiftChangeRequests;
    NSArray* _offerShiftRequests;
    NSArray* _timeOffRequests;
}
@end

@implementation MSGraphSchedule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.schedule";
    }
    return self;
}
- (BOOL) enabled
{
    _enabled = [self.dictionary[@"enabled"] boolValue];
    return _enabled;
}

- (void) setEnabled: (BOOL) val
{
    _enabled = val;
    self.dictionary[@"enabled"] = @(val);
}

- (NSString*) timeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"timeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeZone"];
}

- (void) setTimeZone: (NSString*) val
{
    self.dictionary[@"timeZone"] = val;
}

- (MSGraphOperationStatus*) provisionStatus
{
    if(!_provisionStatus){
        _provisionStatus = [self.dictionary[@"provisionStatus"] toMSGraphOperationStatus];
    }
    return _provisionStatus;
}

- (void) setProvisionStatus: (MSGraphOperationStatus*) val
{
    _provisionStatus = val;
    self.dictionary[@"provisionStatus"] = val;
}

- (NSString*) provisionStatusCode
{
    if([[NSNull null] isEqual:self.dictionary[@"provisionStatusCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"provisionStatusCode"];
}

- (void) setProvisionStatusCode: (NSString*) val
{
    self.dictionary[@"provisionStatusCode"] = val;
}

- (NSArray*) workforceIntegrationIds
{
    if([[NSNull null] isEqual:self.dictionary[@"workforceIntegrationIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"workforceIntegrationIds"];
}

- (void) setWorkforceIntegrationIds: (NSArray*) val
{
    self.dictionary[@"workforceIntegrationIds"] = val;
}

- (BOOL) timeClockEnabled
{
    _timeClockEnabled = [self.dictionary[@"timeClockEnabled"] boolValue];
    return _timeClockEnabled;
}

- (void) setTimeClockEnabled: (BOOL) val
{
    _timeClockEnabled = val;
    self.dictionary[@"timeClockEnabled"] = @(val);
}

- (BOOL) openShiftsEnabled
{
    _openShiftsEnabled = [self.dictionary[@"openShiftsEnabled"] boolValue];
    return _openShiftsEnabled;
}

- (void) setOpenShiftsEnabled: (BOOL) val
{
    _openShiftsEnabled = val;
    self.dictionary[@"openShiftsEnabled"] = @(val);
}

- (BOOL) swapShiftsRequestsEnabled
{
    _swapShiftsRequestsEnabled = [self.dictionary[@"swapShiftsRequestsEnabled"] boolValue];
    return _swapShiftsRequestsEnabled;
}

- (void) setSwapShiftsRequestsEnabled: (BOOL) val
{
    _swapShiftsRequestsEnabled = val;
    self.dictionary[@"swapShiftsRequestsEnabled"] = @(val);
}

- (BOOL) offerShiftRequestsEnabled
{
    _offerShiftRequestsEnabled = [self.dictionary[@"offerShiftRequestsEnabled"] boolValue];
    return _offerShiftRequestsEnabled;
}

- (void) setOfferShiftRequestsEnabled: (BOOL) val
{
    _offerShiftRequestsEnabled = val;
    self.dictionary[@"offerShiftRequestsEnabled"] = @(val);
}

- (BOOL) timeOffRequestsEnabled
{
    _timeOffRequestsEnabled = [self.dictionary[@"timeOffRequestsEnabled"] boolValue];
    return _timeOffRequestsEnabled;
}

- (void) setTimeOffRequestsEnabled: (BOOL) val
{
    _timeOffRequestsEnabled = val;
    self.dictionary[@"timeOffRequestsEnabled"] = @(val);
}

- (NSArray*) shifts
{
    if(!_shifts){
        
    NSMutableArray *shiftsResult = [NSMutableArray array];
    NSArray *shifts = self.dictionary[@"shifts"];

    if ([shifts isKindOfClass:[NSArray class]]){
        for (id tempShift in shifts){
            [shiftsResult addObject:tempShift];
        }
    }

    _shifts = shiftsResult;
        
    }
    return _shifts;
}

- (void) setShifts: (NSArray*) val
{
    _shifts = val;
    self.dictionary[@"shifts"] = val;
}

- (NSArray*) openShifts
{
    if(!_openShifts){
        
    NSMutableArray *openShiftsResult = [NSMutableArray array];
    NSArray *openShifts = self.dictionary[@"openShifts"];

    if ([openShifts isKindOfClass:[NSArray class]]){
        for (id tempOpenShift in openShifts){
            [openShiftsResult addObject:tempOpenShift];
        }
    }

    _openShifts = openShiftsResult;
        
    }
    return _openShifts;
}

- (void) setOpenShifts: (NSArray*) val
{
    _openShifts = val;
    self.dictionary[@"openShifts"] = val;
}

- (NSArray*) timesOff
{
    if(!_timesOff){
        
    NSMutableArray *timesOffResult = [NSMutableArray array];
    NSArray *timesOff = self.dictionary[@"timesOff"];

    if ([timesOff isKindOfClass:[NSArray class]]){
        for (id tempTimeOff in timesOff){
            [timesOffResult addObject:tempTimeOff];
        }
    }

    _timesOff = timesOffResult;
        
    }
    return _timesOff;
}

- (void) setTimesOff: (NSArray*) val
{
    _timesOff = val;
    self.dictionary[@"timesOff"] = val;
}

- (NSArray*) timeOffReasons
{
    if(!_timeOffReasons){
        
    NSMutableArray *timeOffReasonsResult = [NSMutableArray array];
    NSArray *timeOffReasons = self.dictionary[@"timeOffReasons"];

    if ([timeOffReasons isKindOfClass:[NSArray class]]){
        for (id tempTimeOffReason in timeOffReasons){
            [timeOffReasonsResult addObject:tempTimeOffReason];
        }
    }

    _timeOffReasons = timeOffReasonsResult;
        
    }
    return _timeOffReasons;
}

- (void) setTimeOffReasons: (NSArray*) val
{
    _timeOffReasons = val;
    self.dictionary[@"timeOffReasons"] = val;
}

- (NSArray*) schedulingGroups
{
    if(!_schedulingGroups){
        
    NSMutableArray *schedulingGroupsResult = [NSMutableArray array];
    NSArray *schedulingGroups = self.dictionary[@"schedulingGroups"];

    if ([schedulingGroups isKindOfClass:[NSArray class]]){
        for (id tempSchedulingGroup in schedulingGroups){
            [schedulingGroupsResult addObject:tempSchedulingGroup];
        }
    }

    _schedulingGroups = schedulingGroupsResult;
        
    }
    return _schedulingGroups;
}

- (void) setSchedulingGroups: (NSArray*) val
{
    _schedulingGroups = val;
    self.dictionary[@"schedulingGroups"] = val;
}

- (NSArray*) swapShiftsChangeRequests
{
    if(!_swapShiftsChangeRequests){
        
    NSMutableArray *swapShiftsChangeRequestsResult = [NSMutableArray array];
    NSArray *swapShiftsChangeRequests = self.dictionary[@"swapShiftsChangeRequests"];

    if ([swapShiftsChangeRequests isKindOfClass:[NSArray class]]){
        for (id tempSwapShiftsChangeRequest in swapShiftsChangeRequests){
            [swapShiftsChangeRequestsResult addObject:tempSwapShiftsChangeRequest];
        }
    }

    _swapShiftsChangeRequests = swapShiftsChangeRequestsResult;
        
    }
    return _swapShiftsChangeRequests;
}

- (void) setSwapShiftsChangeRequests: (NSArray*) val
{
    _swapShiftsChangeRequests = val;
    self.dictionary[@"swapShiftsChangeRequests"] = val;
}

- (NSArray*) openShiftChangeRequests
{
    if(!_openShiftChangeRequests){
        
    NSMutableArray *openShiftChangeRequestsResult = [NSMutableArray array];
    NSArray *openShiftChangeRequests = self.dictionary[@"openShiftChangeRequests"];

    if ([openShiftChangeRequests isKindOfClass:[NSArray class]]){
        for (id tempOpenShiftChangeRequest in openShiftChangeRequests){
            [openShiftChangeRequestsResult addObject:tempOpenShiftChangeRequest];
        }
    }

    _openShiftChangeRequests = openShiftChangeRequestsResult;
        
    }
    return _openShiftChangeRequests;
}

- (void) setOpenShiftChangeRequests: (NSArray*) val
{
    _openShiftChangeRequests = val;
    self.dictionary[@"openShiftChangeRequests"] = val;
}

- (NSArray*) offerShiftRequests
{
    if(!_offerShiftRequests){
        
    NSMutableArray *offerShiftRequestsResult = [NSMutableArray array];
    NSArray *offerShiftRequests = self.dictionary[@"offerShiftRequests"];

    if ([offerShiftRequests isKindOfClass:[NSArray class]]){
        for (id tempOfferShiftRequest in offerShiftRequests){
            [offerShiftRequestsResult addObject:tempOfferShiftRequest];
        }
    }

    _offerShiftRequests = offerShiftRequestsResult;
        
    }
    return _offerShiftRequests;
}

- (void) setOfferShiftRequests: (NSArray*) val
{
    _offerShiftRequests = val;
    self.dictionary[@"offerShiftRequests"] = val;
}

- (NSArray*) timeOffRequests
{
    if(!_timeOffRequests){
        
    NSMutableArray *timeOffRequestsResult = [NSMutableArray array];
    NSArray *timeOffRequests = self.dictionary[@"timeOffRequests"];

    if ([timeOffRequests isKindOfClass:[NSArray class]]){
        for (id tempTimeOffRequest in timeOffRequests){
            [timeOffRequestsResult addObject:tempTimeOffRequest];
        }
    }

    _timeOffRequests = timeOffRequestsResult;
        
    }
    return _timeOffRequests;
}

- (void) setTimeOffRequests: (NSArray*) val
{
    _timeOffRequests = val;
    self.dictionary[@"timeOffRequests"] = val;
}


@end
