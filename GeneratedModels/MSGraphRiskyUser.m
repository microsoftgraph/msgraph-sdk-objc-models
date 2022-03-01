// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRiskyUser()
{
    BOOL _isDeleted;
    BOOL _isProcessing;
    MSGraphRiskDetail* _riskDetail;
    NSDate* _riskLastUpdatedDateTime;
    MSGraphRiskLevel* _riskLevel;
    MSGraphRiskState* _riskState;
    NSString* _userDisplayName;
    NSString* _userPrincipalName;
    NSArray* _history;
}
@end

@implementation MSGraphRiskyUser

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.riskyUser";
    }
    return self;
}
- (BOOL) isDeleted
{
    _isDeleted = [self.dictionary[@"isDeleted"] boolValue];
    return _isDeleted;
}

- (void) setIsDeleted: (BOOL) val
{
    _isDeleted = val;
    self.dictionary[@"isDeleted"] = @(val);
}

- (BOOL) isProcessing
{
    _isProcessing = [self.dictionary[@"isProcessing"] boolValue];
    return _isProcessing;
}

- (void) setIsProcessing: (BOOL) val
{
    _isProcessing = val;
    self.dictionary[@"isProcessing"] = @(val);
}

- (MSGraphRiskDetail*) riskDetail
{
    if(!_riskDetail){
        _riskDetail = [self.dictionary[@"riskDetail"] toMSGraphRiskDetail];
    }
    return _riskDetail;
}

- (void) setRiskDetail: (MSGraphRiskDetail*) val
{
    _riskDetail = val;
    self.dictionary[@"riskDetail"] = val;
}

- (NSDate*) riskLastUpdatedDateTime
{
    if(!_riskLastUpdatedDateTime){
        _riskLastUpdatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"riskLastUpdatedDateTime"]];
    }
    return _riskLastUpdatedDateTime;
}

- (void) setRiskLastUpdatedDateTime: (NSDate*) val
{
    _riskLastUpdatedDateTime = val;
    self.dictionary[@"riskLastUpdatedDateTime"] = [val ms_toString];
}

- (MSGraphRiskLevel*) riskLevel
{
    if(!_riskLevel){
        _riskLevel = [self.dictionary[@"riskLevel"] toMSGraphRiskLevel];
    }
    return _riskLevel;
}

- (void) setRiskLevel: (MSGraphRiskLevel*) val
{
    _riskLevel = val;
    self.dictionary[@"riskLevel"] = val;
}

- (MSGraphRiskState*) riskState
{
    if(!_riskState){
        _riskState = [self.dictionary[@"riskState"] toMSGraphRiskState];
    }
    return _riskState;
}

- (void) setRiskState: (MSGraphRiskState*) val
{
    _riskState = val;
    self.dictionary[@"riskState"] = val;
}

- (NSString*) userDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userDisplayName"];
}

- (void) setUserDisplayName: (NSString*) val
{
    self.dictionary[@"userDisplayName"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (NSArray*) history
{
    if(!_history){
        
    NSMutableArray *historyResult = [NSMutableArray array];
    NSArray *history = self.dictionary[@"history"];

    if ([history isKindOfClass:[NSArray class]]){
        for (id tempRiskyUserHistoryItem in history){
            [historyResult addObject:tempRiskyUserHistoryItem];
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


@end
