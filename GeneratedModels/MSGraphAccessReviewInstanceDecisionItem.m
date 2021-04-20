// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewInstanceDecisionItem()
{
    NSString* _accessReviewId;
    MSGraphUserIdentity* _appliedBy;
    NSDate* _appliedDateTime;
    NSString* _applyResult;
    NSString* _decision;
    NSString* _justification;
    MSGraphIdentity* _principal;
    NSString* _principalLink;
    NSString* _recommendation;
    MSGraphAccessReviewInstanceDecisionItemResource* _resource;
    NSString* _resourceLink;
    MSGraphUserIdentity* _reviewedBy;
    NSDate* _reviewedDateTime;
}
@end

@implementation MSGraphAccessReviewInstanceDecisionItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessReviewInstanceDecisionItem";
    }
    return self;
}
- (NSString*) accessReviewId
{
    return self.dictionary[@"accessReviewId"];
}

- (void) setAccessReviewId: (NSString*) val
{
    self.dictionary[@"accessReviewId"] = val;
}

- (MSGraphUserIdentity*) appliedBy
{
    if(!_appliedBy){
        _appliedBy = [[MSGraphUserIdentity alloc] initWithDictionary: self.dictionary[@"appliedBy"]];
    }
    return _appliedBy;
}

- (void) setAppliedBy: (MSGraphUserIdentity*) val
{
    _appliedBy = val;
    self.dictionary[@"appliedBy"] = val;
}

- (NSDate*) appliedDateTime
{
    if(!_appliedDateTime){
        _appliedDateTime = [NSDate ms_dateFromString: self.dictionary[@"appliedDateTime"]];
    }
    return _appliedDateTime;
}

- (void) setAppliedDateTime: (NSDate*) val
{
    _appliedDateTime = val;
    self.dictionary[@"appliedDateTime"] = [val ms_toString];
}

- (NSString*) applyResult
{
    if([[NSNull null] isEqual:self.dictionary[@"applyResult"]])
    {
        return nil;
    }   
    return self.dictionary[@"applyResult"];
}

- (void) setApplyResult: (NSString*) val
{
    self.dictionary[@"applyResult"] = val;
}

- (NSString*) decision
{
    if([[NSNull null] isEqual:self.dictionary[@"decision"]])
    {
        return nil;
    }   
    return self.dictionary[@"decision"];
}

- (void) setDecision: (NSString*) val
{
    self.dictionary[@"decision"] = val;
}

- (NSString*) justification
{
    if([[NSNull null] isEqual:self.dictionary[@"justification"]])
    {
        return nil;
    }   
    return self.dictionary[@"justification"];
}

- (void) setJustification: (NSString*) val
{
    self.dictionary[@"justification"] = val;
}

- (MSGraphIdentity*) principal
{
    if(!_principal){
        _principal = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"principal"]];
    }
    return _principal;
}

- (void) setPrincipal: (MSGraphIdentity*) val
{
    _principal = val;
    self.dictionary[@"principal"] = val;
}

- (NSString*) principalLink
{
    if([[NSNull null] isEqual:self.dictionary[@"principalLink"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalLink"];
}

- (void) setPrincipalLink: (NSString*) val
{
    self.dictionary[@"principalLink"] = val;
}

- (NSString*) recommendation
{
    if([[NSNull null] isEqual:self.dictionary[@"recommendation"]])
    {
        return nil;
    }   
    return self.dictionary[@"recommendation"];
}

- (void) setRecommendation: (NSString*) val
{
    self.dictionary[@"recommendation"] = val;
}

- (MSGraphAccessReviewInstanceDecisionItemResource*) resource
{
    if(!_resource){
        _resource = [[MSGraphAccessReviewInstanceDecisionItemResource alloc] initWithDictionary: self.dictionary[@"resource"]];
    }
    return _resource;
}

- (void) setResource: (MSGraphAccessReviewInstanceDecisionItemResource*) val
{
    _resource = val;
    self.dictionary[@"resource"] = val;
}

- (NSString*) resourceLink
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceLink"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceLink"];
}

- (void) setResourceLink: (NSString*) val
{
    self.dictionary[@"resourceLink"] = val;
}

- (MSGraphUserIdentity*) reviewedBy
{
    if(!_reviewedBy){
        _reviewedBy = [[MSGraphUserIdentity alloc] initWithDictionary: self.dictionary[@"reviewedBy"]];
    }
    return _reviewedBy;
}

- (void) setReviewedBy: (MSGraphUserIdentity*) val
{
    _reviewedBy = val;
    self.dictionary[@"reviewedBy"] = val;
}

- (NSDate*) reviewedDateTime
{
    if(!_reviewedDateTime){
        _reviewedDateTime = [NSDate ms_dateFromString: self.dictionary[@"reviewedDateTime"]];
    }
    return _reviewedDateTime;
}

- (void) setReviewedDateTime: (NSDate*) val
{
    _reviewedDateTime = val;
    self.dictionary[@"reviewedDateTime"] = [val ms_toString];
}


@end
