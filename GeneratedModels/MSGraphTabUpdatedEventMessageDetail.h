// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphTabUpdatedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nullable, nonatomic, setter=setTabId:, getter=tabId) NSString* tabId;

@end
