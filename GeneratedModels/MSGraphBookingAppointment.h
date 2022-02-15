// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBookingCustomerInformationBase, MSDuration, MSGraphDateTimeTimeZone, MSGraphBookingReminder, MSGraphLocation; 
#import "MSGraphBookingPriceType.h"


#import "MSGraphEntity.h"

@interface MSGraphBookingAppointment : MSGraphEntity

  @property (nullable, nonatomic, setter=setAdditionalInformation:, getter=additionalInformation) NSString* additionalInformation;
    @property (nonnull, nonatomic, setter=setCustomers:, getter=customers) NSArray* customers;
    @property (nullable, nonatomic, setter=setCustomerTimeZone:, getter=customerTimeZone) NSString* customerTimeZone;
    @property (nonnull, nonatomic, setter=setDuration:, getter=duration) MSDuration* duration;
    @property (nonnull, nonatomic, setter=setEndDateTime:, getter=endDateTime) MSGraphDateTimeTimeZone* endDateTime;
    @property (nonatomic, setter=setFilledAttendeesCount:, getter=filledAttendeesCount) int32_t filledAttendeesCount;
    @property (nonatomic, setter=setIsLocationOnline:, getter=isLocationOnline) BOOL isLocationOnline;
    @property (nullable, nonatomic, setter=setJoinWebUrl:, getter=joinWebUrl) NSString* joinWebUrl;
    @property (nonatomic, setter=setMaximumAttendeesCount:, getter=maximumAttendeesCount) int32_t maximumAttendeesCount;
    @property (nonatomic, setter=setOptOutOfCustomerEmail:, getter=optOutOfCustomerEmail) BOOL optOutOfCustomerEmail;
    @property (nonnull, nonatomic, setter=setPostBuffer:, getter=postBuffer) MSDuration* postBuffer;
    @property (nonnull, nonatomic, setter=setPreBuffer:, getter=preBuffer) MSDuration* preBuffer;
    @property (nonatomic, setter=setPrice:, getter=price) double price;
    @property (nonnull, nonatomic, setter=setPriceType:, getter=priceType) MSGraphBookingPriceType* priceType;
    @property (nullable, nonatomic, setter=setReminders:, getter=reminders) NSArray* reminders;
    @property (nullable, nonatomic, setter=setSelfServiceAppointmentId:, getter=selfServiceAppointmentId) NSString* selfServiceAppointmentId;
    @property (nullable, nonatomic, setter=setServiceId:, getter=serviceId) NSString* serviceId;
    @property (nullable, nonatomic, setter=setServiceLocation:, getter=serviceLocation) MSGraphLocation* serviceLocation;
    @property (nonnull, nonatomic, setter=setServiceName:, getter=serviceName) NSString* serviceName;
    @property (nullable, nonatomic, setter=setServiceNotes:, getter=serviceNotes) NSString* serviceNotes;
    @property (nonatomic, setter=setSmsNotificationsEnabled:, getter=smsNotificationsEnabled) BOOL smsNotificationsEnabled;
    @property (nullable, nonatomic, setter=setStaffMemberIds:, getter=staffMemberIds) NSArray* staffMemberIds;
    @property (nonnull, nonatomic, setter=setStartDateTime:, getter=startDateTime) MSGraphDateTimeTimeZone* startDateTime;
  
@end
