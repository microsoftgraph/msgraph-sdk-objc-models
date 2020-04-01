// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphScheduleChangeRequest.h"

@interface MSGraphOfferShiftRequest : MSGraphScheduleChangeRequest

  @property (nullable, nonatomic, setter=setRecipientActionMessage:, getter=recipientActionMessage) NSString* recipientActionMessage;
    @property (nullable, nonatomic, setter=setRecipientActionDateTime:, getter=recipientActionDateTime) NSDate* recipientActionDateTime;
    @property (nullable, nonatomic, setter=setSenderShiftId:, getter=senderShiftId) NSString* senderShiftId;
    @property (nullable, nonatomic, setter=setRecipientUserId:, getter=recipientUserId) NSString* recipientUserId;
  
@end
