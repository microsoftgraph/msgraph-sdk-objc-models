// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignmentReviewSettings()
{
    MSGraphAccessReviewExpirationBehavior* _expirationBehavior;
    NSArray* _fallbackReviewers;
    BOOL _isEnabled;
    BOOL _isRecommendationEnabled;
    BOOL _isReviewerJustificationRequired;
    BOOL _isSelfReview;
    NSArray* _primaryReviewers;
    MSGraphEntitlementManagementSchedule* _schedule;
}
@end

@implementation MSGraphAccessPackageAssignmentReviewSettings

- (MSGraphAccessReviewExpirationBehavior*) expirationBehavior
{
    if(!_expirationBehavior){
        _expirationBehavior = [self.dictionary[@"expirationBehavior"] toMSGraphAccessReviewExpirationBehavior];
    }
    return _expirationBehavior;
}

- (void) setExpirationBehavior: (MSGraphAccessReviewExpirationBehavior*) val
{
    _expirationBehavior = val;
    self.dictionary[@"expirationBehavior"] = val;
}

- (NSArray*) fallbackReviewers
{
    if(!_fallbackReviewers){
        
    NSMutableArray *fallbackReviewersResult = [NSMutableArray array];
    NSArray *fallbackReviewers = self.dictionary[@"fallbackReviewers"];

    if ([fallbackReviewers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in fallbackReviewers){
            [fallbackReviewersResult addObject:tempSubjectSet];
        }
    }

    _fallbackReviewers = fallbackReviewersResult;
        
    }
    return _fallbackReviewers;
}

- (void) setFallbackReviewers: (NSArray*) val
{
    _fallbackReviewers = val;
    self.dictionary[@"fallbackReviewers"] = val;
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

- (BOOL) isRecommendationEnabled
{
    _isRecommendationEnabled = [self.dictionary[@"isRecommendationEnabled"] boolValue];
    return _isRecommendationEnabled;
}

- (void) setIsRecommendationEnabled: (BOOL) val
{
    _isRecommendationEnabled = val;
    self.dictionary[@"isRecommendationEnabled"] = @(val);
}

- (BOOL) isReviewerJustificationRequired
{
    _isReviewerJustificationRequired = [self.dictionary[@"isReviewerJustificationRequired"] boolValue];
    return _isReviewerJustificationRequired;
}

- (void) setIsReviewerJustificationRequired: (BOOL) val
{
    _isReviewerJustificationRequired = val;
    self.dictionary[@"isReviewerJustificationRequired"] = @(val);
}

- (BOOL) isSelfReview
{
    _isSelfReview = [self.dictionary[@"isSelfReview"] boolValue];
    return _isSelfReview;
}

- (void) setIsSelfReview: (BOOL) val
{
    _isSelfReview = val;
    self.dictionary[@"isSelfReview"] = @(val);
}

- (NSArray*) primaryReviewers
{
    if(!_primaryReviewers){
        
    NSMutableArray *primaryReviewersResult = [NSMutableArray array];
    NSArray *primaryReviewers = self.dictionary[@"primaryReviewers"];

    if ([primaryReviewers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in primaryReviewers){
            [primaryReviewersResult addObject:tempSubjectSet];
        }
    }

    _primaryReviewers = primaryReviewersResult;
        
    }
    return _primaryReviewers;
}

- (void) setPrimaryReviewers: (NSArray*) val
{
    _primaryReviewers = val;
    self.dictionary[@"primaryReviewers"] = val;
}

- (MSGraphEntitlementManagementSchedule*) schedule
{
    if(!_schedule){
        _schedule = [[MSGraphEntitlementManagementSchedule alloc] initWithDictionary: self.dictionary[@"schedule"]];
    }
    return _schedule;
}

- (void) setSchedule: (MSGraphEntitlementManagementSchedule*) val
{
    _schedule = val;
    self.dictionary[@"schedule"] = val;
}

@end
