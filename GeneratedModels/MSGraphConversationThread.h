// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRecipient, MSGraphPost; 


#import "MSGraphEntity.h"

@interface MSGraphConversationThread : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCcRecipients:, getter=ccRecipients) NSArray* ccRecipients;
    @property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
    @property (nonatomic, setter=setIsLocked:, getter=isLocked) BOOL isLocked;
    @property (nonnull, nonatomic, setter=setLastDeliveredDateTime:, getter=lastDeliveredDateTime) NSDate* lastDeliveredDateTime;
    @property (nonnull, nonatomic, setter=setPreview:, getter=preview) NSString* preview;
    @property (nonnull, nonatomic, setter=setTopic:, getter=topic) NSString* topic;
    @property (nonnull, nonatomic, setter=setToRecipients:, getter=toRecipients) NSArray* toRecipients;
    @property (nonnull, nonatomic, setter=setUniqueSenders:, getter=uniqueSenders) NSArray* uniqueSenders;
    @property (nullable, nonatomic, setter=setPosts:, getter=posts) NSArray* posts;
  
@end
