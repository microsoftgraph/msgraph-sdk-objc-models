// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBookingQuestionAssignment, MSDuration, MSGraphLocation, MSGraphBookingReminder, MSGraphBookingSchedulingPolicy; 
#import "MSGraphBookingPriceType.h"


#import "MSGraphEntity.h"

@interface MSGraphBookingService : MSGraphEntity

  @property (nullable, nonatomic, setter=setAdditionalInformation:, getter=additionalInformation) NSString* additionalInformation;
    @property (nullable, nonatomic, setter=setCustomQuestions:, getter=customQuestions) NSArray* customQuestions;
    @property (nonnull, nonatomic, setter=setDefaultDuration:, getter=defaultDuration) MSDuration* defaultDuration;
    @property (nullable, nonatomic, setter=setDefaultLocation:, getter=defaultLocation) MSGraphLocation* defaultLocation;
    @property (nonatomic, setter=setDefaultPrice:, getter=defaultPrice) double defaultPrice;
    @property (nonnull, nonatomic, setter=setDefaultPriceType:, getter=defaultPriceType) MSGraphBookingPriceType* defaultPriceType;
    @property (nullable, nonatomic, setter=setDefaultReminders:, getter=defaultReminders) NSArray* defaultReminders;
    @property (nullable, nonatomic, setter=setBookingServiceDescription:, getter=bookingServiceDescription) NSString* bookingServiceDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsHiddenFromCustomers:, getter=isHiddenFromCustomers) BOOL isHiddenFromCustomers;
    @property (nonatomic, setter=setIsLocationOnline:, getter=isLocationOnline) BOOL isLocationOnline;
    @property (nonatomic, setter=setMaximumAttendeesCount:, getter=maximumAttendeesCount) int32_t maximumAttendeesCount;
    @property (nullable, nonatomic, setter=setNotes:, getter=notes) NSString* notes;
    @property (nonnull, nonatomic, setter=setPostBuffer:, getter=postBuffer) MSDuration* postBuffer;
    @property (nonnull, nonatomic, setter=setPreBuffer:, getter=preBuffer) MSDuration* preBuffer;
    @property (nullable, nonatomic, setter=setSchedulingPolicy:, getter=schedulingPolicy) MSGraphBookingSchedulingPolicy* schedulingPolicy;
    @property (nonatomic, setter=setSmsNotificationsEnabled:, getter=smsNotificationsEnabled) BOOL smsNotificationsEnabled;
    @property (nullable, nonatomic, setter=setStaffMemberIds:, getter=staffMemberIds) NSArray* staffMemberIds;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
  
@end
