// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphComplianceManagementPartner()
{
    NSDate* _lastHeartbeatDateTime;
    MSGraphDeviceManagementPartnerTenantState* _partnerState;
    NSString* _displayName;
    BOOL _macOsOnboarded;
    BOOL _androidOnboarded;
    BOOL _iosOnboarded;
    NSArray* _macOsEnrollmentAssignments;
    NSArray* _androidEnrollmentAssignments;
    NSArray* _iosEnrollmentAssignments;
}
@end

@implementation MSGraphComplianceManagementPartner

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.complianceManagementPartner";
    }
    return self;
}
- (NSDate*) lastHeartbeatDateTime
{
    if(!_lastHeartbeatDateTime){
        _lastHeartbeatDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastHeartbeatDateTime"]];
    }
    return _lastHeartbeatDateTime;
}

- (void) setLastHeartbeatDateTime: (NSDate*) val
{
    _lastHeartbeatDateTime = val;
    self.dictionary[@"lastHeartbeatDateTime"] = [val ms_toString];
}

- (MSGraphDeviceManagementPartnerTenantState*) partnerState
{
    if(!_partnerState){
        _partnerState = [self.dictionary[@"partnerState"] toMSGraphDeviceManagementPartnerTenantState];
    }
    return _partnerState;
}

- (void) setPartnerState: (MSGraphDeviceManagementPartnerTenantState*) val
{
    _partnerState = val;
    self.dictionary[@"partnerState"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) macOsOnboarded
{
    _macOsOnboarded = [self.dictionary[@"macOsOnboarded"] boolValue];
    return _macOsOnboarded;
}

- (void) setMacOsOnboarded: (BOOL) val
{
    _macOsOnboarded = val;
    self.dictionary[@"macOsOnboarded"] = @(val);
}

- (BOOL) androidOnboarded
{
    _androidOnboarded = [self.dictionary[@"androidOnboarded"] boolValue];
    return _androidOnboarded;
}

- (void) setAndroidOnboarded: (BOOL) val
{
    _androidOnboarded = val;
    self.dictionary[@"androidOnboarded"] = @(val);
}

- (BOOL) iosOnboarded
{
    _iosOnboarded = [self.dictionary[@"iosOnboarded"] boolValue];
    return _iosOnboarded;
}

- (void) setIosOnboarded: (BOOL) val
{
    _iosOnboarded = val;
    self.dictionary[@"iosOnboarded"] = @(val);
}

- (NSArray*) macOsEnrollmentAssignments
{
    if(!_macOsEnrollmentAssignments){
        
    NSMutableArray *macOsEnrollmentAssignmentsResult = [NSMutableArray array];
    NSArray *macOsEnrollmentAssignments = self.dictionary[@"macOsEnrollmentAssignments"];

    if ([macOsEnrollmentAssignments isKindOfClass:[NSArray class]]){
        for (id tempComplianceManagementPartnerAssignment in macOsEnrollmentAssignments){
            [macOsEnrollmentAssignmentsResult addObject:tempComplianceManagementPartnerAssignment];
        }
    }

    _macOsEnrollmentAssignments = macOsEnrollmentAssignmentsResult;
        
    }
    return _macOsEnrollmentAssignments;
}

- (void) setMacOsEnrollmentAssignments: (NSArray*) val
{
    _macOsEnrollmentAssignments = val;
    self.dictionary[@"macOsEnrollmentAssignments"] = val;
}

- (NSArray*) androidEnrollmentAssignments
{
    if(!_androidEnrollmentAssignments){
        
    NSMutableArray *androidEnrollmentAssignmentsResult = [NSMutableArray array];
    NSArray *androidEnrollmentAssignments = self.dictionary[@"androidEnrollmentAssignments"];

    if ([androidEnrollmentAssignments isKindOfClass:[NSArray class]]){
        for (id tempComplianceManagementPartnerAssignment in androidEnrollmentAssignments){
            [androidEnrollmentAssignmentsResult addObject:tempComplianceManagementPartnerAssignment];
        }
    }

    _androidEnrollmentAssignments = androidEnrollmentAssignmentsResult;
        
    }
    return _androidEnrollmentAssignments;
}

- (void) setAndroidEnrollmentAssignments: (NSArray*) val
{
    _androidEnrollmentAssignments = val;
    self.dictionary[@"androidEnrollmentAssignments"] = val;
}

- (NSArray*) iosEnrollmentAssignments
{
    if(!_iosEnrollmentAssignments){
        
    NSMutableArray *iosEnrollmentAssignmentsResult = [NSMutableArray array];
    NSArray *iosEnrollmentAssignments = self.dictionary[@"iosEnrollmentAssignments"];

    if ([iosEnrollmentAssignments isKindOfClass:[NSArray class]]){
        for (id tempComplianceManagementPartnerAssignment in iosEnrollmentAssignments){
            [iosEnrollmentAssignmentsResult addObject:tempComplianceManagementPartnerAssignment];
        }
    }

    _iosEnrollmentAssignments = iosEnrollmentAssignmentsResult;
        
    }
    return _iosEnrollmentAssignments;
}

- (void) setIosEnrollmentAssignments: (NSArray*) val
{
    _iosEnrollmentAssignments = val;
    self.dictionary[@"iosEnrollmentAssignments"] = val;
}


@end
