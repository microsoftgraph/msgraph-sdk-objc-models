// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPhysicalAddress, MSGraphBookingWorkHours, MSGraphBookingSchedulingPolicy, MSGraphBookingAppointment, MSGraphBookingCustomerBase, MSGraphBookingCustomQuestion, MSGraphBookingService, MSGraphBookingStaffMemberBase; 


#import "MSGraphEntity.h"

@interface MSGraphBookingBusiness : MSGraphEntity

  @property (nullable, nonatomic, setter=setAddress:, getter=address) MSGraphPhysicalAddress* address;
    @property (nullable, nonatomic, setter=setBusinessHours:, getter=businessHours) NSArray* businessHours;
    @property (nullable, nonatomic, setter=setBusinessType:, getter=businessType) NSString* businessType;
    @property (nullable, nonatomic, setter=setDefaultCurrencyIso:, getter=defaultCurrencyIso) NSString* defaultCurrencyIso;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nonatomic, setter=setIsPublished:, getter=isPublished) BOOL isPublished;
    @property (nullable, nonatomic, setter=setPhone:, getter=phone) NSString* phone;
    @property (nullable, nonatomic, setter=setPublicUrl:, getter=publicUrl) NSString* publicUrl;
    @property (nullable, nonatomic, setter=setSchedulingPolicy:, getter=schedulingPolicy) MSGraphBookingSchedulingPolicy* schedulingPolicy;
    @property (nullable, nonatomic, setter=setWebSiteUrl:, getter=webSiteUrl) NSString* webSiteUrl;
    @property (nullable, nonatomic, setter=setAppointments:, getter=appointments) NSArray* appointments;
    @property (nullable, nonatomic, setter=setCalendarView:, getter=calendarView) NSArray* calendarView;
    @property (nullable, nonatomic, setter=setCustomers:, getter=customers) NSArray* customers;
    @property (nullable, nonatomic, setter=setCustomQuestions:, getter=customQuestions) NSArray* customQuestions;
    @property (nullable, nonatomic, setter=setServices:, getter=services) NSArray* services;
    @property (nullable, nonatomic, setter=setStaffMembers:, getter=staffMembers) NSArray* staffMembers;
  
@end
