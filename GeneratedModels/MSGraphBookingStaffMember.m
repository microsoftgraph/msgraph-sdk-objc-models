// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingStaffMember()
{
    BOOL _availabilityIsAffectedByPersonalCalendar;
    NSString* _displayName;
    NSString* _emailAddress;
    MSGraphBookingStaffRole* _role;
    NSString* _timeZone;
    BOOL _useBusinessHours;
    NSArray* _workingHours;
}
@end

@implementation MSGraphBookingStaffMember

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingStaffMember";
    }
    return self;
}
- (BOOL) availabilityIsAffectedByPersonalCalendar
{
    _availabilityIsAffectedByPersonalCalendar = [self.dictionary[@"availabilityIsAffectedByPersonalCalendar"] boolValue];
    return _availabilityIsAffectedByPersonalCalendar;
}

- (void) setAvailabilityIsAffectedByPersonalCalendar: (BOOL) val
{
    _availabilityIsAffectedByPersonalCalendar = val;
    self.dictionary[@"availabilityIsAffectedByPersonalCalendar"] = @(val);
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (MSGraphBookingStaffRole*) role
{
    if(!_role){
        _role = [self.dictionary[@"role"] toMSGraphBookingStaffRole];
    }
    return _role;
}

- (void) setRole: (MSGraphBookingStaffRole*) val
{
    _role = val;
    self.dictionary[@"role"] = val;
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

- (BOOL) useBusinessHours
{
    _useBusinessHours = [self.dictionary[@"useBusinessHours"] boolValue];
    return _useBusinessHours;
}

- (void) setUseBusinessHours: (BOOL) val
{
    _useBusinessHours = val;
    self.dictionary[@"useBusinessHours"] = @(val);
}

- (NSArray*) workingHours
{
    if(!_workingHours){
        
    NSMutableArray *workingHoursResult = [NSMutableArray array];
    NSArray *workingHours = self.dictionary[@"workingHours"];

    if ([workingHours isKindOfClass:[NSArray class]]){
        for (id tempBookingWorkHours in workingHours){
            [workingHoursResult addObject:tempBookingWorkHours];
        }
    }

    _workingHours = workingHoursResult;
        
    }
    return _workingHours;
}

- (void) setWorkingHours: (NSArray*) val
{
    _workingHours = val;
    self.dictionary[@"workingHours"] = val;
}


@end
