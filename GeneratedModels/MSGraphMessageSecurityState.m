// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMessageSecurityState()
{
    NSString* _connectingIP;
    NSString* _deliveryAction;
    NSString* _deliveryLocation;
    NSString* _directionality;
    NSString* _internetMessageId;
    NSString* _messageFingerprint;
    NSDate* _messageReceivedDateTime;
    NSString* _messageSubject;
    NSString* _networkMessageId;
}
@end

@implementation MSGraphMessageSecurityState

- (NSString*) connectingIP
{
    if([[NSNull null] isEqual:self.dictionary[@"connectingIP"]])
    {
        return nil;
    }   
    return self.dictionary[@"connectingIP"];
}

- (void) setConnectingIP: (NSString*) val
{
    self.dictionary[@"connectingIP"] = val;
}

- (NSString*) deliveryAction
{
    if([[NSNull null] isEqual:self.dictionary[@"deliveryAction"]])
    {
        return nil;
    }   
    return self.dictionary[@"deliveryAction"];
}

- (void) setDeliveryAction: (NSString*) val
{
    self.dictionary[@"deliveryAction"] = val;
}

- (NSString*) deliveryLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"deliveryLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"deliveryLocation"];
}

- (void) setDeliveryLocation: (NSString*) val
{
    self.dictionary[@"deliveryLocation"] = val;
}

- (NSString*) directionality
{
    if([[NSNull null] isEqual:self.dictionary[@"directionality"]])
    {
        return nil;
    }   
    return self.dictionary[@"directionality"];
}

- (void) setDirectionality: (NSString*) val
{
    self.dictionary[@"directionality"] = val;
}

- (NSString*) internetMessageId
{
    if([[NSNull null] isEqual:self.dictionary[@"internetMessageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"internetMessageId"];
}

- (void) setInternetMessageId: (NSString*) val
{
    self.dictionary[@"internetMessageId"] = val;
}

- (NSString*) messageFingerprint
{
    if([[NSNull null] isEqual:self.dictionary[@"messageFingerprint"]])
    {
        return nil;
    }   
    return self.dictionary[@"messageFingerprint"];
}

- (void) setMessageFingerprint: (NSString*) val
{
    self.dictionary[@"messageFingerprint"] = val;
}

- (NSDate*) messageReceivedDateTime
{
    if(!_messageReceivedDateTime){
        _messageReceivedDateTime = [NSDate ms_dateFromString: self.dictionary[@"messageReceivedDateTime"]];
    }
    return _messageReceivedDateTime;
}

- (void) setMessageReceivedDateTime: (NSDate*) val
{
    _messageReceivedDateTime = val;
    self.dictionary[@"messageReceivedDateTime"] = [val ms_toString];
}

- (NSString*) messageSubject
{
    if([[NSNull null] isEqual:self.dictionary[@"messageSubject"]])
    {
        return nil;
    }   
    return self.dictionary[@"messageSubject"];
}

- (void) setMessageSubject: (NSString*) val
{
    self.dictionary[@"messageSubject"] = val;
}

- (NSString*) networkMessageId
{
    if([[NSNull null] isEqual:self.dictionary[@"networkMessageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"networkMessageId"];
}

- (void) setNetworkMessageId: (NSString*) val
{
    self.dictionary[@"networkMessageId"] = val;
}

@end
