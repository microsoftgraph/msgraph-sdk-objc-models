// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPhysicalAddress, MSGraphPhone; 


#import "MSGraphBookingCustomerBase.h"

@interface MSGraphBookingCustomer : MSGraphBookingCustomerBase

  @property (nullable, nonatomic, setter=setAddresses:, getter=addresses) NSArray* addresses;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
    @property (nullable, nonatomic, setter=setPhones:, getter=phones) NSArray* phones;
  
@end
