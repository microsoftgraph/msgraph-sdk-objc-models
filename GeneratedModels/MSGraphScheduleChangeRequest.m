// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphScheduleChangeRequest()
{
    MSGraphScheduleChangeRequestActor* _assignedTo;
    NSDate* _managerActionDateTime;
    NSString* _managerActionMessage;
    NSString* _managerUserId;
    NSDate* _senderDateTime;
    NSString* _senderMessage;
    NSString* _senderUserId;
    MSGraphScheduleChangeState* _state;
}
@end

@implementation MSGraphScheduleChangeRequest

- (MSGraphScheduleChangeRequestActor*) assignedTo
{
    if(!_assignedTo){
        _assignedTo = [self.dictionary[@"assignedTo"] toMSGraphScheduleChangeRequestActor];
    }
    return _assignedTo;
}

- (void) setAssignedTo: (MSGraphScheduleChangeRequestActor*) val
{
    _assignedTo = val;
    self.dictionary[@"assignedTo"] = val;
}

- (NSDate*) managerActionDateTime
{
    if(!_managerActionDateTime){
        _managerActionDateTime = [NSDate ms_dateFromString: self.dictionary[@"managerActionDateTime"]];
    }
    return _managerActionDateTime;
}

- (void) setManagerActionDateTime: (NSDate*) val
{
    _managerActionDateTime = val;
    self.dictionary[@"managerActionDateTime"] = [val ms_toString];
}

- (NSString*) managerActionMessage
{
    if([[NSNull null] isEqual:self.dictionary[@"managerActionMessage"]])
    {
        return nil;
    }   
    return self.dictionary[@"managerActionMessage"];
}

- (void) setManagerActionMessage: (NSString*) val
{
    self.dictionary[@"managerActionMessage"] = val;
}

- (NSString*) managerUserId
{
    if([[NSNull null] isEqual:self.dictionary[@"managerUserId"]])
    {
        return nil;
    }   
    return self.dictionary[@"managerUserId"];
}

- (void) setManagerUserId: (NSString*) val
{
    self.dictionary[@"managerUserId"] = val;
}

- (NSDate*) senderDateTime
{
    if(!_senderDateTime){
        _senderDateTime = [NSDate ms_dateFromString: self.dictionary[@"senderDateTime"]];
    }
    return _senderDateTime;
}

- (void) setSenderDateTime: (NSDate*) val
{
    _senderDateTime = val;
    self.dictionary[@"senderDateTime"] = [val ms_toString];
}

- (NSString*) senderMessage
{
    if([[NSNull null] isEqual:self.dictionary[@"senderMessage"]])
    {
        return nil;
    }   
    return self.dictionary[@"senderMessage"];
}

- (void) setSenderMessage: (NSString*) val
{
    self.dictionary[@"senderMessage"] = val;
}

- (NSString*) senderUserId
{
    if([[NSNull null] isEqual:self.dictionary[@"senderUserId"]])
    {
        return nil;
    }   
    return self.dictionary[@"senderUserId"];
}

- (void) setSenderUserId: (NSString*) val
{
    self.dictionary[@"senderUserId"] = val;
}

- (MSGraphScheduleChangeState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphScheduleChangeState];
    }
    return _state;
}

- (void) setState: (MSGraphScheduleChangeState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}


@end
