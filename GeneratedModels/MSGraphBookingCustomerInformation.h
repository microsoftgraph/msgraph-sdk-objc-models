// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphBookingQuestionAnswer, MSGraphLocation; 


#import "MSGraphBookingCustomerInformationBase.h"

@interface MSGraphBookingCustomerInformation : MSGraphBookingCustomerInformationBase

@property (nullable, nonatomic, setter=setCustomerId:, getter=customerId) NSString* customerId;
@property (nullable, nonatomic, setter=setCustomQuestionAnswers:, getter=customQuestionAnswers) NSArray* customQuestionAnswers;
@property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
@property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphLocation* location;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setNotes:, getter=notes) NSString* notes;
@property (nullable, nonatomic, setter=setPhone:, getter=phone) NSString* phone;
@property (nullable, nonatomic, setter=setTimeZone:, getter=timeZone) NSString* timeZone;

@end
