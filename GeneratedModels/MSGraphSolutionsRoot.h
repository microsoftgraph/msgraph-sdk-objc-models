// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBookingBusiness, MSGraphBookingCurrency; 


#import "MSObject.h"

@interface MSGraphSolutionsRoot : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setBookingBusinesses:, getter=bookingBusinesses) NSArray* bookingBusinesses;
    @property (nullable, nonatomic, setter=setBookingCurrencies:, getter=bookingCurrencies) NSArray* bookingCurrencies;
  
@end
