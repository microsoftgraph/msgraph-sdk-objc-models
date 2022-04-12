// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSubjectRightsRequestStageDetail()
{
    MSGraphPublicError* _error;
    MSGraphSubjectRightsRequestStage* _stage;
    MSGraphSubjectRightsRequestStageStatus* _status;
}
@end

@implementation MSGraphSubjectRightsRequestStageDetail

- (MSGraphPublicError*) error
{
    if(!_error){
        _error = [[MSGraphPublicError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphPublicError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
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

- (MSGraphSubjectRightsRequestStageStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphSubjectRightsRequestStageStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphSubjectRightsRequestStageStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

@end
