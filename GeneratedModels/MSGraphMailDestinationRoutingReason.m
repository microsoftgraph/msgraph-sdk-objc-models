// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMailDestinationRoutingReason.h"

@interface MSGraphMailDestinationRoutingReason () {
    MSGraphMailDestinationRoutingReasonValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMailDestinationRoutingReasonValue enumValue;
@end

@implementation MSGraphMailDestinationRoutingReason

+ (MSGraphMailDestinationRoutingReason*) none {
    static MSGraphMailDestinationRoutingReason *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphMailDestinationRoutingReason alloc] init];
        _none.enumValue = MSGraphMailDestinationRoutingReasonNone;
    });
    return _none;
}
+ (MSGraphMailDestinationRoutingReason*) mailFlowRule {
    static MSGraphMailDestinationRoutingReason *_mailFlowRule;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mailFlowRule = [[MSGraphMailDestinationRoutingReason alloc] init];
        _mailFlowRule.enumValue = MSGraphMailDestinationRoutingReasonMailFlowRule;
    });
    return _mailFlowRule;
}
+ (MSGraphMailDestinationRoutingReason*) safeSender {
    static MSGraphMailDestinationRoutingReason *_safeSender;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _safeSender = [[MSGraphMailDestinationRoutingReason alloc] init];
        _safeSender.enumValue = MSGraphMailDestinationRoutingReasonSafeSender;
    });
    return _safeSender;
}
+ (MSGraphMailDestinationRoutingReason*) blockedSender {
    static MSGraphMailDestinationRoutingReason *_blockedSender;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockedSender = [[MSGraphMailDestinationRoutingReason alloc] init];
        _blockedSender.enumValue = MSGraphMailDestinationRoutingReasonBlockedSender;
    });
    return _blockedSender;
}
+ (MSGraphMailDestinationRoutingReason*) advancedSpamFiltering {
    static MSGraphMailDestinationRoutingReason *_advancedSpamFiltering;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _advancedSpamFiltering = [[MSGraphMailDestinationRoutingReason alloc] init];
        _advancedSpamFiltering.enumValue = MSGraphMailDestinationRoutingReasonAdvancedSpamFiltering;
    });
    return _advancedSpamFiltering;
}
+ (MSGraphMailDestinationRoutingReason*) domainAllowList {
    static MSGraphMailDestinationRoutingReason *_domainAllowList;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _domainAllowList = [[MSGraphMailDestinationRoutingReason alloc] init];
        _domainAllowList.enumValue = MSGraphMailDestinationRoutingReasonDomainAllowList;
    });
    return _domainAllowList;
}
+ (MSGraphMailDestinationRoutingReason*) domainBlockList {
    static MSGraphMailDestinationRoutingReason *_domainBlockList;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _domainBlockList = [[MSGraphMailDestinationRoutingReason alloc] init];
        _domainBlockList.enumValue = MSGraphMailDestinationRoutingReasonDomainBlockList;
    });
    return _domainBlockList;
}
+ (MSGraphMailDestinationRoutingReason*) notInAddressBook {
    static MSGraphMailDestinationRoutingReason *_notInAddressBook;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notInAddressBook = [[MSGraphMailDestinationRoutingReason alloc] init];
        _notInAddressBook.enumValue = MSGraphMailDestinationRoutingReasonNotInAddressBook;
    });
    return _notInAddressBook;
}
+ (MSGraphMailDestinationRoutingReason*) firstTimeSender {
    static MSGraphMailDestinationRoutingReason *_firstTimeSender;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _firstTimeSender = [[MSGraphMailDestinationRoutingReason alloc] init];
        _firstTimeSender.enumValue = MSGraphMailDestinationRoutingReasonFirstTimeSender;
    });
    return _firstTimeSender;
}
+ (MSGraphMailDestinationRoutingReason*) autoPurgeToInbox {
    static MSGraphMailDestinationRoutingReason *_autoPurgeToInbox;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoPurgeToInbox = [[MSGraphMailDestinationRoutingReason alloc] init];
        _autoPurgeToInbox.enumValue = MSGraphMailDestinationRoutingReasonAutoPurgeToInbox;
    });
    return _autoPurgeToInbox;
}
+ (MSGraphMailDestinationRoutingReason*) autoPurgeToJunk {
    static MSGraphMailDestinationRoutingReason *_autoPurgeToJunk;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoPurgeToJunk = [[MSGraphMailDestinationRoutingReason alloc] init];
        _autoPurgeToJunk.enumValue = MSGraphMailDestinationRoutingReasonAutoPurgeToJunk;
    });
    return _autoPurgeToJunk;
}
+ (MSGraphMailDestinationRoutingReason*) autoPurgeToDeleted {
    static MSGraphMailDestinationRoutingReason *_autoPurgeToDeleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoPurgeToDeleted = [[MSGraphMailDestinationRoutingReason alloc] init];
        _autoPurgeToDeleted.enumValue = MSGraphMailDestinationRoutingReasonAutoPurgeToDeleted;
    });
    return _autoPurgeToDeleted;
}
+ (MSGraphMailDestinationRoutingReason*) outbound {
    static MSGraphMailDestinationRoutingReason *_outbound;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outbound = [[MSGraphMailDestinationRoutingReason alloc] init];
        _outbound.enumValue = MSGraphMailDestinationRoutingReasonOutbound;
    });
    return _outbound;
}
+ (MSGraphMailDestinationRoutingReason*) notJunk {
    static MSGraphMailDestinationRoutingReason *_notJunk;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notJunk = [[MSGraphMailDestinationRoutingReason alloc] init];
        _notJunk.enumValue = MSGraphMailDestinationRoutingReasonNotJunk;
    });
    return _notJunk;
}
+ (MSGraphMailDestinationRoutingReason*) junk {
    static MSGraphMailDestinationRoutingReason *_junk;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _junk = [[MSGraphMailDestinationRoutingReason alloc] init];
        _junk.enumValue = MSGraphMailDestinationRoutingReasonJunk;
    });
    return _junk;
}
+ (MSGraphMailDestinationRoutingReason*) unknownFutureValue {
    static MSGraphMailDestinationRoutingReason *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphMailDestinationRoutingReason alloc] init];
        _unknownFutureValue.enumValue = MSGraphMailDestinationRoutingReasonUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphMailDestinationRoutingReason*) UnknownEnumValue {
    static MSGraphMailDestinationRoutingReason *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMailDestinationRoutingReason alloc] init];
        _unknownValue.enumValue = MSGraphMailDestinationRoutingReasonEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMailDestinationRoutingReason*) mailDestinationRoutingReasonWithEnumValue:(MSGraphMailDestinationRoutingReasonValue)val {

    switch(val)
    {
        case MSGraphMailDestinationRoutingReasonNone:
            return [MSGraphMailDestinationRoutingReason none];
        case MSGraphMailDestinationRoutingReasonMailFlowRule:
            return [MSGraphMailDestinationRoutingReason mailFlowRule];
        case MSGraphMailDestinationRoutingReasonSafeSender:
            return [MSGraphMailDestinationRoutingReason safeSender];
        case MSGraphMailDestinationRoutingReasonBlockedSender:
            return [MSGraphMailDestinationRoutingReason blockedSender];
        case MSGraphMailDestinationRoutingReasonAdvancedSpamFiltering:
            return [MSGraphMailDestinationRoutingReason advancedSpamFiltering];
        case MSGraphMailDestinationRoutingReasonDomainAllowList:
            return [MSGraphMailDestinationRoutingReason domainAllowList];
        case MSGraphMailDestinationRoutingReasonDomainBlockList:
            return [MSGraphMailDestinationRoutingReason domainBlockList];
        case MSGraphMailDestinationRoutingReasonNotInAddressBook:
            return [MSGraphMailDestinationRoutingReason notInAddressBook];
        case MSGraphMailDestinationRoutingReasonFirstTimeSender:
            return [MSGraphMailDestinationRoutingReason firstTimeSender];
        case MSGraphMailDestinationRoutingReasonAutoPurgeToInbox:
            return [MSGraphMailDestinationRoutingReason autoPurgeToInbox];
        case MSGraphMailDestinationRoutingReasonAutoPurgeToJunk:
            return [MSGraphMailDestinationRoutingReason autoPurgeToJunk];
        case MSGraphMailDestinationRoutingReasonAutoPurgeToDeleted:
            return [MSGraphMailDestinationRoutingReason autoPurgeToDeleted];
        case MSGraphMailDestinationRoutingReasonOutbound:
            return [MSGraphMailDestinationRoutingReason outbound];
        case MSGraphMailDestinationRoutingReasonNotJunk:
            return [MSGraphMailDestinationRoutingReason notJunk];
        case MSGraphMailDestinationRoutingReasonJunk:
            return [MSGraphMailDestinationRoutingReason junk];
        case MSGraphMailDestinationRoutingReasonUnknownFutureValue:
            return [MSGraphMailDestinationRoutingReason unknownFutureValue];
        case MSGraphMailDestinationRoutingReasonEndOfEnum:
        default:
            return [MSGraphMailDestinationRoutingReason UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMailDestinationRoutingReasonNone:
            return @"none";
        case MSGraphMailDestinationRoutingReasonMailFlowRule:
            return @"mailFlowRule";
        case MSGraphMailDestinationRoutingReasonSafeSender:
            return @"safeSender";
        case MSGraphMailDestinationRoutingReasonBlockedSender:
            return @"blockedSender";
        case MSGraphMailDestinationRoutingReasonAdvancedSpamFiltering:
            return @"advancedSpamFiltering";
        case MSGraphMailDestinationRoutingReasonDomainAllowList:
            return @"domainAllowList";
        case MSGraphMailDestinationRoutingReasonDomainBlockList:
            return @"domainBlockList";
        case MSGraphMailDestinationRoutingReasonNotInAddressBook:
            return @"notInAddressBook";
        case MSGraphMailDestinationRoutingReasonFirstTimeSender:
            return @"firstTimeSender";
        case MSGraphMailDestinationRoutingReasonAutoPurgeToInbox:
            return @"autoPurgeToInbox";
        case MSGraphMailDestinationRoutingReasonAutoPurgeToJunk:
            return @"autoPurgeToJunk";
        case MSGraphMailDestinationRoutingReasonAutoPurgeToDeleted:
            return @"autoPurgeToDeleted";
        case MSGraphMailDestinationRoutingReasonOutbound:
            return @"outbound";
        case MSGraphMailDestinationRoutingReasonNotJunk:
            return @"notJunk";
        case MSGraphMailDestinationRoutingReasonJunk:
            return @"junk";
        case MSGraphMailDestinationRoutingReasonUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphMailDestinationRoutingReasonEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMailDestinationRoutingReasonValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMailDestinationRoutingReason)

- (MSGraphMailDestinationRoutingReason*) toMSGraphMailDestinationRoutingReason{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphMailDestinationRoutingReason none];
    }
    else if([self isEqualToString:@"mailFlowRule"])
    {
          return [MSGraphMailDestinationRoutingReason mailFlowRule];
    }
    else if([self isEqualToString:@"safeSender"])
    {
          return [MSGraphMailDestinationRoutingReason safeSender];
    }
    else if([self isEqualToString:@"blockedSender"])
    {
          return [MSGraphMailDestinationRoutingReason blockedSender];
    }
    else if([self isEqualToString:@"advancedSpamFiltering"])
    {
          return [MSGraphMailDestinationRoutingReason advancedSpamFiltering];
    }
    else if([self isEqualToString:@"domainAllowList"])
    {
          return [MSGraphMailDestinationRoutingReason domainAllowList];
    }
    else if([self isEqualToString:@"domainBlockList"])
    {
          return [MSGraphMailDestinationRoutingReason domainBlockList];
    }
    else if([self isEqualToString:@"notInAddressBook"])
    {
          return [MSGraphMailDestinationRoutingReason notInAddressBook];
    }
    else if([self isEqualToString:@"firstTimeSender"])
    {
          return [MSGraphMailDestinationRoutingReason firstTimeSender];
    }
    else if([self isEqualToString:@"autoPurgeToInbox"])
    {
          return [MSGraphMailDestinationRoutingReason autoPurgeToInbox];
    }
    else if([self isEqualToString:@"autoPurgeToJunk"])
    {
          return [MSGraphMailDestinationRoutingReason autoPurgeToJunk];
    }
    else if([self isEqualToString:@"autoPurgeToDeleted"])
    {
          return [MSGraphMailDestinationRoutingReason autoPurgeToDeleted];
    }
    else if([self isEqualToString:@"outbound"])
    {
          return [MSGraphMailDestinationRoutingReason outbound];
    }
    else if([self isEqualToString:@"notJunk"])
    {
          return [MSGraphMailDestinationRoutingReason notJunk];
    }
    else if([self isEqualToString:@"junk"])
    {
          return [MSGraphMailDestinationRoutingReason junk];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphMailDestinationRoutingReason unknownFutureValue];
    }
    else {
        return [MSGraphMailDestinationRoutingReason UnknownEnumValue];
    }
}

@end
