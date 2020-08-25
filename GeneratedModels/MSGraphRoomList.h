// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRoom; 


#import "MSGraphPlace.h"

@interface MSGraphRoomList : MSGraphPlace

  @property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
    @property (nullable, nonatomic, setter=setRooms:, getter=rooms) NSArray* rooms;
  
@end
