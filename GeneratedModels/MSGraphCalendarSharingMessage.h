// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCalendarSharingMessageAction; 


#import "MSGraphMessage.h"

@interface MSGraphCalendarSharingMessage : MSGraphMessage

  @property (nonatomic, setter=setCanAccept:, getter=canAccept) BOOL canAccept;
    @property (nullable, nonatomic, setter=setSuggestedCalendarName:, getter=suggestedCalendarName) NSString* suggestedCalendarName;
    @property (nullable, nonatomic, setter=setSharingMessageAction:, getter=sharingMessageAction) MSGraphCalendarSharingMessageAction* sharingMessageAction;
    @property (nullable, nonatomic, setter=setSharingMessageActions:, getter=sharingMessageActions) NSArray* sharingMessageActions;
  
@end
