// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMailDestinationRoutingReasonValue){

	MSGraphMailDestinationRoutingReasonNone = 0,
	MSGraphMailDestinationRoutingReasonMailFlowRule = 1,
	MSGraphMailDestinationRoutingReasonSafeSender = 2,
	MSGraphMailDestinationRoutingReasonBlockedSender = 3,
	MSGraphMailDestinationRoutingReasonAdvancedSpamFiltering = 4,
	MSGraphMailDestinationRoutingReasonDomainAllowList = 5,
	MSGraphMailDestinationRoutingReasonDomainBlockList = 6,
	MSGraphMailDestinationRoutingReasonNotInAddressBook = 7,
	MSGraphMailDestinationRoutingReasonFirstTimeSender = 8,
	MSGraphMailDestinationRoutingReasonAutoPurgeToInbox = 9,
	MSGraphMailDestinationRoutingReasonAutoPurgeToJunk = 10,
	MSGraphMailDestinationRoutingReasonAutoPurgeToDeleted = 11,
	MSGraphMailDestinationRoutingReasonOutbound = 12,
	MSGraphMailDestinationRoutingReasonNotJunk = 13,
	MSGraphMailDestinationRoutingReasonJunk = 14,
	MSGraphMailDestinationRoutingReasonUnknownFutureValue = 15,
    MSGraphMailDestinationRoutingReasonEndOfEnum
};

@interface MSGraphMailDestinationRoutingReason : NSObject

+(MSGraphMailDestinationRoutingReason*) none;
+(MSGraphMailDestinationRoutingReason*) mailFlowRule;
+(MSGraphMailDestinationRoutingReason*) safeSender;
+(MSGraphMailDestinationRoutingReason*) blockedSender;
+(MSGraphMailDestinationRoutingReason*) advancedSpamFiltering;
+(MSGraphMailDestinationRoutingReason*) domainAllowList;
+(MSGraphMailDestinationRoutingReason*) domainBlockList;
+(MSGraphMailDestinationRoutingReason*) notInAddressBook;
+(MSGraphMailDestinationRoutingReason*) firstTimeSender;
+(MSGraphMailDestinationRoutingReason*) autoPurgeToInbox;
+(MSGraphMailDestinationRoutingReason*) autoPurgeToJunk;
+(MSGraphMailDestinationRoutingReason*) autoPurgeToDeleted;
+(MSGraphMailDestinationRoutingReason*) outbound;
+(MSGraphMailDestinationRoutingReason*) notJunk;
+(MSGraphMailDestinationRoutingReason*) junk;
+(MSGraphMailDestinationRoutingReason*) unknownFutureValue;

+(MSGraphMailDestinationRoutingReason*) UnknownEnumValue;

+(MSGraphMailDestinationRoutingReason*) mailDestinationRoutingReasonWithEnumValue:(MSGraphMailDestinationRoutingReasonValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMailDestinationRoutingReasonValue enumValue;

@end


@interface NSString (MSGraphMailDestinationRoutingReason)

- (MSGraphMailDestinationRoutingReason*) toMSGraphMailDestinationRoutingReason;

@end
