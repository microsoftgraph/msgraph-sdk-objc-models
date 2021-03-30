// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAdminConsentRequestPolicy()
{
    BOOL _isEnabled;
    BOOL _notifyReviewers;
    BOOL _remindersEnabled;
    int32_t _requestDurationInDays;
    NSArray* _reviewers;
    int32_t _version;
}
@end

@implementation MSGraphAdminConsentRequestPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.adminConsentRequestPolicy";
    }
    return self;
}
- (BOOL) isEnabled
{
    _isEnabled = [self.dictionary[@"isEnabled"] boolValue];
    return _isEnabled;
}

- (void) setIsEnabled: (BOOL) val
{
    _isEnabled = val;
    self.dictionary[@"isEnabled"] = @(val);
}

- (BOOL) notifyReviewers
{
    _notifyReviewers = [self.dictionary[@"notifyReviewers"] boolValue];
    return _notifyReviewers;
}

- (void) setNotifyReviewers: (BOOL) val
{
    _notifyReviewers = val;
    self.dictionary[@"notifyReviewers"] = @(val);
}

- (BOOL) remindersEnabled
{
    _remindersEnabled = [self.dictionary[@"remindersEnabled"] boolValue];
    return _remindersEnabled;
}

- (void) setRemindersEnabled: (BOOL) val
{
    _remindersEnabled = val;
    self.dictionary[@"remindersEnabled"] = @(val);
}

- (int32_t) requestDurationInDays
{
    _requestDurationInDays = [self.dictionary[@"requestDurationInDays"] intValue];
    return _requestDurationInDays;
}

- (void) setRequestDurationInDays: (int32_t) val
{
    _requestDurationInDays = val;
    self.dictionary[@"requestDurationInDays"] = @(val);
}

- (NSArray*) reviewers
{
    if(!_reviewers){
        
    NSMutableArray *reviewersResult = [NSMutableArray array];
    NSArray *reviewers = self.dictionary[@"reviewers"];

    if ([reviewers isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewReviewerScope in reviewers){
            [reviewersResult addObject:tempAccessReviewReviewerScope];
        }
    }

    _reviewers = reviewersResult;
        
    }
    return _reviewers;
}

- (void) setReviewers: (NSArray*) val
{
    _reviewers = val;
    self.dictionary[@"reviewers"] = val;
}

- (int32_t) version
{
    _version = [self.dictionary[@"version"] intValue];
    return _version;
}

- (void) setVersion: (int32_t) val
{
    _version = val;
    self.dictionary[@"version"] = @(val);
}


@end
