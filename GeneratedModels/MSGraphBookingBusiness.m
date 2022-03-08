// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingBusiness()
{
    MSGraphPhysicalAddress* _address;
    NSArray* _businessHours;
    NSString* _businessType;
    NSString* _defaultCurrencyIso;
    NSString* _displayName;
    NSString* _email;
    BOOL _isPublished;
    NSString* _phone;
    NSString* _publicUrl;
    MSGraphBookingSchedulingPolicy* _schedulingPolicy;
    NSString* _webSiteUrl;
    NSArray* _appointments;
    NSArray* _calendarView;
    NSArray* _customers;
    NSArray* _customQuestions;
    NSArray* _services;
    NSArray* _staffMembers;
}
@end

@implementation MSGraphBookingBusiness

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingBusiness";
    }
    return self;
}
- (MSGraphPhysicalAddress*) address
{
    if(!_address){
        _address = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"address"]];
    }
    return _address;
}

- (void) setAddress: (MSGraphPhysicalAddress*) val
{
    _address = val;
    self.dictionary[@"address"] = val;
}

- (NSArray*) businessHours
{
    if(!_businessHours){
        
    NSMutableArray *businessHoursResult = [NSMutableArray array];
    NSArray *businessHours = self.dictionary[@"businessHours"];

    if ([businessHours isKindOfClass:[NSArray class]]){
        for (id tempBookingWorkHours in businessHours){
            [businessHoursResult addObject:tempBookingWorkHours];
        }
    }

    _businessHours = businessHoursResult;
        
    }
    return _businessHours;
}

- (void) setBusinessHours: (NSArray*) val
{
    _businessHours = val;
    self.dictionary[@"businessHours"] = val;
}

- (NSString*) businessType
{
    if([[NSNull null] isEqual:self.dictionary[@"businessType"]])
    {
        return nil;
    }   
    return self.dictionary[@"businessType"];
}

- (void) setBusinessType: (NSString*) val
{
    self.dictionary[@"businessType"] = val;
}

- (NSString*) defaultCurrencyIso
{
    if([[NSNull null] isEqual:self.dictionary[@"defaultCurrencyIso"]])
    {
        return nil;
    }   
    return self.dictionary[@"defaultCurrencyIso"];
}

- (void) setDefaultCurrencyIso: (NSString*) val
{
    self.dictionary[@"defaultCurrencyIso"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (BOOL) isPublished
{
    _isPublished = [self.dictionary[@"isPublished"] boolValue];
    return _isPublished;
}

- (void) setIsPublished: (BOOL) val
{
    _isPublished = val;
    self.dictionary[@"isPublished"] = @(val);
}

- (NSString*) phone
{
    if([[NSNull null] isEqual:self.dictionary[@"phone"]])
    {
        return nil;
    }   
    return self.dictionary[@"phone"];
}

- (void) setPhone: (NSString*) val
{
    self.dictionary[@"phone"] = val;
}

- (NSString*) publicUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"publicUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"publicUrl"];
}

- (void) setPublicUrl: (NSString*) val
{
    self.dictionary[@"publicUrl"] = val;
}

- (MSGraphBookingSchedulingPolicy*) schedulingPolicy
{
    if(!_schedulingPolicy){
        _schedulingPolicy = [[MSGraphBookingSchedulingPolicy alloc] initWithDictionary: self.dictionary[@"schedulingPolicy"]];
    }
    return _schedulingPolicy;
}

- (void) setSchedulingPolicy: (MSGraphBookingSchedulingPolicy*) val
{
    _schedulingPolicy = val;
    self.dictionary[@"schedulingPolicy"] = val;
}

- (NSString*) webSiteUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webSiteUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webSiteUrl"];
}

- (void) setWebSiteUrl: (NSString*) val
{
    self.dictionary[@"webSiteUrl"] = val;
}

- (NSArray*) appointments
{
    if(!_appointments){
        
    NSMutableArray *appointmentsResult = [NSMutableArray array];
    NSArray *appointments = self.dictionary[@"appointments"];

    if ([appointments isKindOfClass:[NSArray class]]){
        for (id tempBookingAppointment in appointments){
            [appointmentsResult addObject:tempBookingAppointment];
        }
    }

    _appointments = appointmentsResult;
        
    }
    return _appointments;
}

- (void) setAppointments: (NSArray*) val
{
    _appointments = val;
    self.dictionary[@"appointments"] = val;
}

- (NSArray*) calendarView
{
    if(!_calendarView){
        
    NSMutableArray *calendarViewResult = [NSMutableArray array];
    NSArray *calendarView = self.dictionary[@"calendarView"];

    if ([calendarView isKindOfClass:[NSArray class]]){
        for (id tempBookingAppointment in calendarView){
            [calendarViewResult addObject:tempBookingAppointment];
        }
    }

    _calendarView = calendarViewResult;
        
    }
    return _calendarView;
}

- (void) setCalendarView: (NSArray*) val
{
    _calendarView = val;
    self.dictionary[@"calendarView"] = val;
}

- (NSArray*) customers
{
    if(!_customers){
        
    NSMutableArray *customersResult = [NSMutableArray array];
    NSArray *customers = self.dictionary[@"customers"];

    if ([customers isKindOfClass:[NSArray class]]){
        for (id tempBookingCustomerBase in customers){
            [customersResult addObject:tempBookingCustomerBase];
        }
    }

    _customers = customersResult;
        
    }
    return _customers;
}

- (void) setCustomers: (NSArray*) val
{
    _customers = val;
    self.dictionary[@"customers"] = val;
}

- (NSArray*) customQuestions
{
    if(!_customQuestions){
        
    NSMutableArray *customQuestionsResult = [NSMutableArray array];
    NSArray *customQuestions = self.dictionary[@"customQuestions"];

    if ([customQuestions isKindOfClass:[NSArray class]]){
        for (id tempBookingCustomQuestion in customQuestions){
            [customQuestionsResult addObject:tempBookingCustomQuestion];
        }
    }

    _customQuestions = customQuestionsResult;
        
    }
    return _customQuestions;
}

- (void) setCustomQuestions: (NSArray*) val
{
    _customQuestions = val;
    self.dictionary[@"customQuestions"] = val;
}

- (NSArray*) services
{
    if(!_services){
        
    NSMutableArray *servicesResult = [NSMutableArray array];
    NSArray *services = self.dictionary[@"services"];

    if ([services isKindOfClass:[NSArray class]]){
        for (id tempBookingService in services){
            [servicesResult addObject:tempBookingService];
        }
    }

    _services = servicesResult;
        
    }
    return _services;
}

- (void) setServices: (NSArray*) val
{
    _services = val;
    self.dictionary[@"services"] = val;
}

- (NSArray*) staffMembers
{
    if(!_staffMembers){
        
    NSMutableArray *staffMembersResult = [NSMutableArray array];
    NSArray *staffMembers = self.dictionary[@"staffMembers"];

    if ([staffMembers isKindOfClass:[NSArray class]]){
        for (id tempBookingStaffMemberBase in staffMembers){
            [staffMembersResult addObject:tempBookingStaffMemberBase];
        }
    }

    _staffMembers = staffMembersResult;
        
    }
    return _staffMembers;
}

- (void) setStaffMembers: (NSArray*) val
{
    _staffMembers = val;
    self.dictionary[@"staffMembers"] = val;
}


@end
