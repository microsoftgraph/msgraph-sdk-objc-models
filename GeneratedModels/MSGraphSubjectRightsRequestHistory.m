// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSubjectRightsRequestHistory()
{
    MSGraphIdentitySet* _changedBy;
    NSDate* _eventDateTime;
    MSGraphSubjectRightsRequestStage* _stage;
    MSGraphSubjectRightsRequestStageStatus* _stageStatus;
    NSString* _type;
}
@end

@implementation MSGraphSubjectRightsRequestHistory

- (MSGraphIdentitySet*) changedBy
{
    if(!_changedBy){
        _changedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"changedBy"]];
    }
    return _changedBy;
}

- (void) setChangedBy: (MSGraphIdentitySet*) val
{
    _changedBy = val;
    self.dictionary[@"changedBy"] = val;
}

- (NSDate*) eventDateTime
{
    if(!_eventDateTime){
        _eventDateTime = [NSDate ms_dateFromString: self.dictionary[@"eventDateTime"]];
    }
    return _eventDateTime;
}

- (void) setEventDateTime: (NSDate*) val
{
    _eventDateTime = val;
    self.dictionary[@"eventDateTime"] = [val ms_toString];
}

- (MSGraphSubjectRightsRequestStage*) stage
{
    if(!_stage){
        _stage = [self.dictionary[@"stage"] toMSGraphSubjectRightsRequestStage];
    }
    return _stage;
}

- (void) setStage: (MSGraphSubjectRightsRequestStage*) val
{
    _stage = val;
    self.dictionary[@"stage"] = val;
}

- (MSGraphSubjectRightsRequestStageStatus*) stageStatus
{
    if(!_stageStatus){
        _stageStatus = [self.dictionary[@"stageStatus"] toMSGraphSubjectRightsRequestStageStatus];
    }
    return _stageStatus;
}

- (void) setStageStatus: (MSGraphSubjectRightsRequestStageStatus*) val
{
    _stageStatus = val;
    self.dictionary[@"stageStatus"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

@end
