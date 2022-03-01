// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphBookingCurrency : MSGraphEntity

  @property (nonnull, nonatomic, setter=setSymbol:, getter=symbol) NSString* symbol;
  
@end
