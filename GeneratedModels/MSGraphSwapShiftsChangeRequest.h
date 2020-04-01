// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphOfferShiftRequest.h"

@interface MSGraphSwapShiftsChangeRequest : MSGraphOfferShiftRequest

  @property (nullable, nonatomic, setter=setRecipientShiftId:, getter=recipientShiftId) NSString* recipientShiftId;
  
@end
