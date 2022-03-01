// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewHistoryInstance()
{
    NSString* _downloadUri;
    NSDate* _expirationDateTime;
    NSDate* _fulfilledDateTime;
    NSDate* _reviewHistoryPeriodEndDateTime;
    NSDate* _reviewHistoryPeriodStartDateTime;
    NSDate* _runDateTime;
    MSGraphAccessReviewHistoryStatus* _status;
}
@end

@implementation MSGraphAccessReviewHistoryInstance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessReviewHistoryInstance";
    }
    return self;
}
- (NSString*) downloadUri
{
    if([[NSNull null] isEqual:self.dictionary[@"downloadUri"]])
    {
        return nil;
    }   
    return self.dictionary[@"downloadUri"];
}

- (void) setDownloadUri: (NSString*) val
{
    self.dictionary[@"downloadUri"] = val;
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSDate*) fulfilledDateTime
{
    if(!_fulfilledDateTime){
        _fulfilledDateTime = [NSDate ms_dateFromString: self.dictionary[@"fulfilledDateTime"]];
    }
    return _fulfilledDateTime;
}

- (void) setFulfilledDateTime: (NSDate*) val
{
    _fulfilledDateTime = val;
    self.dictionary[@"fulfilledDateTime"] = [val ms_toString];
}

- (NSDate*) reviewHistoryPeriodEndDateTime
{
    if(!_reviewHistoryPeriodEndDateTime){
        _reviewHistoryPeriodEndDateTime = [NSDate ms_dateFromString: self.dictionary[@"reviewHistoryPeriodEndDateTime"]];
    }
    return _reviewHistoryPeriodEndDateTime;
}

- (void) setReviewHistoryPeriodEndDateTime: (NSDate*) val
{
    _reviewHistoryPeriodEndDateTime = val;
    self.dictionary[@"reviewHistoryPeriodEndDateTime"] = [val ms_toString];
}

- (NSDate*) reviewHistoryPeriodStartDateTime
{
    if(!_reviewHistoryPeriodStartDateTime){
        _reviewHistoryPeriodStartDateTime = [NSDate ms_dateFromString: self.dictionary[@"reviewHistoryPeriodStartDateTime"]];
    }
    return _reviewHistoryPeriodStartDateTime;
}

- (void) setReviewHistoryPeriodStartDateTime: (NSDate*) val
{
    _reviewHistoryPeriodStartDateTime = val;
    self.dictionary[@"reviewHistoryPeriodStartDateTime"] = [val ms_toString];
}

- (NSDate*) runDateTime
{
    if(!_runDateTime){
        _runDateTime = [NSDate ms_dateFromString: self.dictionary[@"runDateTime"]];
    }
    return _runDateTime;
}

- (void) setRunDateTime: (NSDate*) val
{
    _runDateTime = val;
    self.dictionary[@"runDateTime"] = [val ms_toString];
}

- (MSGraphAccessReviewHistoryStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphAccessReviewHistoryStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphAccessReviewHistoryStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}


@end
