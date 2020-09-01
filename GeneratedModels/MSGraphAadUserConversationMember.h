// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUser; 


#import "MSGraphConversationMember.h"

@interface MSGraphAadUserConversationMember : MSGraphConversationMember

  @property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setUser:, getter=user) MSGraphUser* user;
  
@end
