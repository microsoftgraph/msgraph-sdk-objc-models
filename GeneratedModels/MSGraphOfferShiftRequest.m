// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOfferShiftRequest()
{
    NSDate* _recipientActionDateTime;
    NSString* _recipientActionMessage;
    NSString* _recipientUserId;
    NSString* _senderShiftId;
}
@end

@implementation MSGraphOfferShiftRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.offerShiftRequest";
    }
    return self;
}
- (NSDate*) recipientActionDateTime
{
    if(!_recipientActionDateTime){
        _recipientActionDateTime = [NSDate ms_dateFromString: self.dictionary[@"recipientActionDateTime"]];
    }
    return _recipientActionDateTime;
}

- (void) setRecipientActionDateTime: (NSDate*) val
{
    _recipientActionDateTime = val;
    self.dictionary[@"recipientActionDateTime"] = [val ms_toString];
}

- (NSString*) recipientActionMessage
{
    if([[NSNull null] isEqual:self.dictionary[@"recipientActionMessage"]])
    {
        return nil;
    }   
    return self.dictionary[@"recipientActionMessage"];
}

- (void) setRecipientActionMessage: (NSString*) val
{
    self.dictionary[@"recipientActionMessage"] = val;
}

- (NSString*) recipientUserId
{
    if([[NSNull null] isEqual:self.dictionary[@"recipientUserId"]])
    {
        return nil;
    }   
    return self.dictionary[@"recipientUserId"];
}

- (void) setRecipientUserId: (NSString*) val
{
    self.dictionary[@"recipientUserId"] = val;
}

- (NSString*) senderShiftId
{
    if([[NSNull null] isEqual:self.dictionary[@"senderShiftId"]])
    {
        return nil;
    }   
    return self.dictionary[@"senderShiftId"];
}

- (void) setSenderShiftId: (NSString*) val
{
    self.dictionary[@"senderShiftId"] = val;
}


@end
