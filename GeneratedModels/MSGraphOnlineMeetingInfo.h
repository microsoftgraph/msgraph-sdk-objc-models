// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPhone; 


#import "MSObject.h"

@interface MSGraphOnlineMeetingInfo : MSObject

@property (nullable, nonatomic, setter=setConferenceId:, getter=conferenceId) NSString* conferenceId;
@property (nullable, nonatomic, setter=setJoinUrl:, getter=joinUrl) NSString* joinUrl;
@property (nullable, nonatomic, setter=setPhones:, getter=phones) NSArray* phones;
@property (nullable, nonatomic, setter=setQuickDial:, getter=quickDial) NSString* quickDial;
@property (nullable, nonatomic, setter=setTollFreeNumbers:, getter=tollFreeNumbers) NSArray* tollFreeNumbers;
@property (nullable, nonatomic, setter=setTollNumber:, getter=tollNumber) NSString* tollNumber;

@end
