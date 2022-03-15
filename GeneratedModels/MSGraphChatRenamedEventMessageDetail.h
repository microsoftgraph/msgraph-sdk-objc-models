// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphChatRenamedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setChatDisplayName:, getter=chatDisplayName) NSString* chatDisplayName;
@property (nullable, nonatomic, setter=setChatId:, getter=chatId) NSString* chatId;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;

@end
