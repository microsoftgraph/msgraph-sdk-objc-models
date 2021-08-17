// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceHealthIssue()
{
    MSGraphServiceHealthClassificationType* _classification;
    NSString* _feature;
    NSString* _featureGroup;
    NSString* _impactDescription;
    BOOL _isResolved;
    MSGraphServiceHealthOrigin* _origin;
    NSArray* _posts;
    NSString* _service;
    MSGraphServiceHealthStatus* _status;
}
@end

@implementation MSGraphServiceHealthIssue

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.serviceHealthIssue";
    }
    return self;
}
- (MSGraphServiceHealthClassificationType*) classification
{
    if(!_classification){
        _classification = [self.dictionary[@"classification"] toMSGraphServiceHealthClassificationType];
    }
    return _classification;
}

- (void) setClassification: (MSGraphServiceHealthClassificationType*) val
{
    _classification = val;
    self.dictionary[@"classification"] = val;
}

- (NSString*) feature
{
    if([[NSNull null] isEqual:self.dictionary[@"feature"]])
    {
        return nil;
    }   
    return self.dictionary[@"feature"];
}

- (void) setFeature: (NSString*) val
{
    self.dictionary[@"feature"] = val;
}

- (NSString*) featureGroup
{
    if([[NSNull null] isEqual:self.dictionary[@"featureGroup"]])
    {
        return nil;
    }   
    return self.dictionary[@"featureGroup"];
}

- (void) setFeatureGroup: (NSString*) val
{
    self.dictionary[@"featureGroup"] = val;
}

- (NSString*) impactDescription
{
    return self.dictionary[@"impactDescription"];
}

- (void) setImpactDescription: (NSString*) val
{
    self.dictionary[@"impactDescription"] = val;
}

- (BOOL) isResolved
{
    _isResolved = [self.dictionary[@"isResolved"] boolValue];
    return _isResolved;
}

- (void) setIsResolved: (BOOL) val
{
    _isResolved = val;
    self.dictionary[@"isResolved"] = @(val);
}

- (MSGraphServiceHealthOrigin*) origin
{
    if(!_origin){
        _origin = [self.dictionary[@"origin"] toMSGraphServiceHealthOrigin];
    }
    return _origin;
}

- (void) setOrigin: (MSGraphServiceHealthOrigin*) val
{
    _origin = val;
    self.dictionary[@"origin"] = val;
}

- (NSArray*) posts
{
    if(!_posts){
        
    NSMutableArray *postsResult = [NSMutableArray array];
    NSArray *posts = self.dictionary[@"posts"];

    if ([posts isKindOfClass:[NSArray class]]){
        for (id tempServiceHealthIssuePost in posts){
            [postsResult addObject:tempServiceHealthIssuePost];
        }
    }

    _posts = postsResult;
        
    }
    return _posts;
}

- (void) setPosts: (NSArray*) val
{
    _posts = val;
    self.dictionary[@"posts"] = val;
}

- (NSString*) service
{
    return self.dictionary[@"service"];
}

- (void) setService: (NSString*) val
{
    self.dictionary[@"service"] = val;
}

- (MSGraphServiceHealthStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphServiceHealthStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphServiceHealthStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}


@end
