// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSubjectRightsRequest()
{
    MSGraphIdentity* _assignedTo;
    NSDate* _closedDateTime;
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    MSGraphDataSubject* _dataSubject;
    MSGraphDataSubjectType* _dataSubjectType;
    NSString* _subjectRightsRequestDescription;
    NSString* _displayName;
    NSArray* _history;
    MSGraphSubjectRightsRequestDetail* _insight;
    NSDate* _internalDueDateTime;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    NSArray* _regulations;
    NSArray* _stages;
    MSGraphSubjectRightsRequestStatus* _status;
    MSGraphSubjectRightsRequestType* _type;
    NSArray* _notes;
    MSGraphTeam* _team;
}
@end

@implementation MSGraphSubjectRightsRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.subjectRightsRequest";
    }
    return self;
}
- (MSGraphIdentity*) assignedTo
{
    if(!_assignedTo){
        _assignedTo = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"assignedTo"]];
    }
    return _assignedTo;
}

- (void) setAssignedTo: (MSGraphIdentity*) val
{
    _assignedTo = val;
    self.dictionary[@"assignedTo"] = val;
}

- (NSDate*) closedDateTime
{
    if(!_closedDateTime){
        _closedDateTime = [NSDate ms_dateFromString: self.dictionary[@"closedDateTime"]];
    }
    return _closedDateTime;
}

- (void) setClosedDateTime: (NSDate*) val
{
    _closedDateTime = val;
    self.dictionary[@"closedDateTime"] = [val ms_toString];
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphDataSubject*) dataSubject
{
    if(!_dataSubject){
        _dataSubject = [[MSGraphDataSubject alloc] initWithDictionary: self.dictionary[@"dataSubject"]];
    }
    return _dataSubject;
}

- (void) setDataSubject: (MSGraphDataSubject*) val
{
    _dataSubject = val;
    self.dictionary[@"dataSubject"] = val;
}

- (MSGraphDataSubjectType*) dataSubjectType
{
    if(!_dataSubjectType){
        _dataSubjectType = [self.dictionary[@"dataSubjectType"] toMSGraphDataSubjectType];
    }
    return _dataSubjectType;
}

- (void) setDataSubjectType: (MSGraphDataSubjectType*) val
{
    _dataSubjectType = val;
    self.dictionary[@"dataSubjectType"] = val;
}

- (NSString*) subjectRightsRequestDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setSubjectRightsRequestDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSArray*) history
{
    if(!_history){
        
    NSMutableArray *historyResult = [NSMutableArray array];
    NSArray *history = self.dictionary[@"history"];

    if ([history isKindOfClass:[NSArray class]]){
        for (id tempSubjectRightsRequestHistory in history){
            [historyResult addObject:tempSubjectRightsRequestHistory];
        }
    }

    _history = historyResult;
        
    }
    return _history;
}

- (void) setHistory: (NSArray*) val
{
    _history = val;
    self.dictionary[@"history"] = val;
}

- (MSGraphSubjectRightsRequestDetail*) insight
{
    if(!_insight){
        _insight = [[MSGraphSubjectRightsRequestDetail alloc] initWithDictionary: self.dictionary[@"insight"]];
    }
    return _insight;
}

- (void) setInsight: (MSGraphSubjectRightsRequestDetail*) val
{
    _insight = val;
    self.dictionary[@"insight"] = val;
}

- (NSDate*) internalDueDateTime
{
    if(!_internalDueDateTime){
        _internalDueDateTime = [NSDate ms_dateFromString: self.dictionary[@"internalDueDateTime"]];
    }
    return _internalDueDateTime;
}

- (void) setInternalDueDateTime: (NSDate*) val
{
    _internalDueDateTime = val;
    self.dictionary[@"internalDueDateTime"] = [val ms_toString];
}

- (MSGraphIdentitySet*) lastModifiedBy
{
    if(!_lastModifiedBy){
        _lastModifiedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"lastModifiedBy"]];
    }
    return _lastModifiedBy;
}

- (void) setLastModifiedBy: (MSGraphIdentitySet*) val
{
    _lastModifiedBy = val;
    self.dictionary[@"lastModifiedBy"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSArray*) regulations
{
    if([[NSNull null] isEqual:self.dictionary[@"regulations"]])
    {
        return nil;
    }   
    return self.dictionary[@"regulations"];
}

- (void) setRegulations: (NSArray*) val
{
    self.dictionary[@"regulations"] = val;
}

- (NSArray*) stages
{
    if(!_stages){
        
    NSMutableArray *stagesResult = [NSMutableArray array];
    NSArray *stages = self.dictionary[@"stages"];

    if ([stages isKindOfClass:[NSArray class]]){
        for (id tempSubjectRightsRequestStageDetail in stages){
            [stagesResult addObject:tempSubjectRightsRequestStageDetail];
        }
    }

    _stages = stagesResult;
        
    }
    return _stages;
}

- (void) setStages: (NSArray*) val
{
    _stages = val;
    self.dictionary[@"stages"] = val;
}

- (MSGraphSubjectRightsRequestStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphSubjectRightsRequestStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphSubjectRightsRequestStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphSubjectRightsRequestType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphSubjectRightsRequestType];
    }
    return _type;
}

- (void) setType: (MSGraphSubjectRightsRequestType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (NSArray*) notes
{
    if(!_notes){
        
    NSMutableArray *notesResult = [NSMutableArray array];
    NSArray *notes = self.dictionary[@"notes"];

    if ([notes isKindOfClass:[NSArray class]]){
        for (id tempAuthoredNote in notes){
            [notesResult addObject:tempAuthoredNote];
        }
    }

    _notes = notesResult;
        
    }
    return _notes;
}

- (void) setNotes: (NSArray*) val
{
    _notes = val;
    self.dictionary[@"notes"] = val;
}

- (MSGraphTeam*) team
{
    if(!_team){
        _team = [[MSGraphTeam alloc] initWithDictionary: self.dictionary[@"team"]];
    }
    return _team;
}

- (void) setTeam: (MSGraphTeam*) val
{
    _team = val;
    self.dictionary[@"team"] = val;
}


@end
