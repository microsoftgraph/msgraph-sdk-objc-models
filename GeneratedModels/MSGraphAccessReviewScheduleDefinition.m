// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewScheduleDefinition()
{
    MSGraphUserIdentity* _createdBy;
    NSDate* _createdDateTime;
    NSString* _descriptionForAdmins;
    NSString* _descriptionForReviewers;
    NSString* _displayName;
    NSArray* _fallbackReviewers;
    MSGraphAccessReviewScope* _instanceEnumerationScope;
    NSDate* _lastModifiedDateTime;
    NSArray* _reviewers;
    MSGraphAccessReviewScope* _scope;
    MSGraphAccessReviewScheduleSettings* _settings;
    NSString* _status;
    NSArray* _instances;
}
@end

@implementation MSGraphAccessReviewScheduleDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessReviewScheduleDefinition";
    }
    return self;
}
- (MSGraphUserIdentity*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphUserIdentity alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphUserIdentity*) val
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

- (NSString*) descriptionForAdmins
{
    if([[NSNull null] isEqual:self.dictionary[@"descriptionForAdmins"]])
    {
        return nil;
    }   
    return self.dictionary[@"descriptionForAdmins"];
}

- (void) setDescriptionForAdmins: (NSString*) val
{
    self.dictionary[@"descriptionForAdmins"] = val;
}

- (NSString*) descriptionForReviewers
{
    if([[NSNull null] isEqual:self.dictionary[@"descriptionForReviewers"]])
    {
        return nil;
    }   
    return self.dictionary[@"descriptionForReviewers"];
}

- (void) setDescriptionForReviewers: (NSString*) val
{
    self.dictionary[@"descriptionForReviewers"] = val;
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

- (NSArray*) fallbackReviewers
{
    if(!_fallbackReviewers){
        
    NSMutableArray *fallbackReviewersResult = [NSMutableArray array];
    NSArray *fallbackReviewers = self.dictionary[@"fallbackReviewers"];

    if ([fallbackReviewers isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewReviewerScope in fallbackReviewers){
            [fallbackReviewersResult addObject:tempAccessReviewReviewerScope];
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

- (MSGraphAccessReviewScope*) instanceEnumerationScope
{
    if(!_instanceEnumerationScope){
        _instanceEnumerationScope = [[MSGraphAccessReviewScope alloc] initWithDictionary: self.dictionary[@"instanceEnumerationScope"]];
    }
    return _instanceEnumerationScope;
}

- (void) setInstanceEnumerationScope: (MSGraphAccessReviewScope*) val
{
    _instanceEnumerationScope = val;
    self.dictionary[@"instanceEnumerationScope"] = val;
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

- (MSGraphAccessReviewScope*) scope
{
    if(!_scope){
        _scope = [[MSGraphAccessReviewScope alloc] initWithDictionary: self.dictionary[@"scope"]];
    }
    return _scope;
}

- (void) setScope: (MSGraphAccessReviewScope*) val
{
    _scope = val;
    self.dictionary[@"scope"] = val;
}

- (MSGraphAccessReviewScheduleSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphAccessReviewScheduleSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphAccessReviewScheduleSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}

- (NSString*) status
{
    if([[NSNull null] isEqual:self.dictionary[@"status"]])
    {
        return nil;
    }   
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}

- (NSArray*) instances
{
    if(!_instances){
        
    NSMutableArray *instancesResult = [NSMutableArray array];
    NSArray *instances = self.dictionary[@"instances"];

    if ([instances isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewInstance in instances){
            [instancesResult addObject:tempAccessReviewInstance];
        }
    }

    _instances = instancesResult;
        
    }
    return _instances;
}

- (void) setInstances: (NSArray*) val
{
    _instances = val;
    self.dictionary[@"instances"] = val;
}


@end
