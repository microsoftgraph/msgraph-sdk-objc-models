// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTimeSlot; 
#import "MSGraphResponseType.h"


#import "MSGraphEventMessage.h"

@interface MSGraphEventMessageResponse : MSGraphEventMessage

  @property (nullable, nonatomic, setter=setProposedNewTime:, getter=proposedNewTime) MSGraphTimeSlot* proposedNewTime;
    @property (nullable, nonatomic, setter=setResponseType:, getter=responseType) MSGraphResponseType* responseType;
  
@end
