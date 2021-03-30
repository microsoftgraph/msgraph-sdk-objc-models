// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFeatureRolloutPolicy()
{
    NSString* _featureRolloutPolicyDescription;
    NSString* _displayName;
    MSGraphStagedFeatureName* _feature;
    BOOL _isAppliedToOrganization;
    BOOL _isEnabled;
    NSArray* _appliesTo;
}
@end

@implementation MSGraphFeatureRolloutPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.featureRolloutPolicy";
    }
    return self;
}
- (NSString*) featureRolloutPolicyDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setFeatureRolloutPolicyDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphStagedFeatureName*) feature
{
    if(!_feature){
        _feature = [self.dictionary[@"feature"] toMSGraphStagedFeatureName];
    }
    return _feature;
}

- (void) setFeature: (MSGraphStagedFeatureName*) val
{
    _feature = val;
    self.dictionary[@"feature"] = val;
}

- (BOOL) isAppliedToOrganization
{
    _isAppliedToOrganization = [self.dictionary[@"isAppliedToOrganization"] boolValue];
    return _isAppliedToOrganization;
}

- (void) setIsAppliedToOrganization: (BOOL) val
{
    _isAppliedToOrganization = val;
    self.dictionary[@"isAppliedToOrganization"] = @(val);
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

- (NSArray*) appliesTo
{
    if(!_appliesTo){
        
    NSMutableArray *appliesToResult = [NSMutableArray array];
    NSArray *appliesTo = self.dictionary[@"appliesTo"];

    if ([appliesTo isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in appliesTo){
            [appliesToResult addObject:tempDirectoryObject];
        }
    }

    _appliesTo = appliesToResult;
        
    }
    return _appliesTo;
}

- (void) setAppliesTo: (NSArray*) val
{
    _appliesTo = val;
    self.dictionary[@"appliesTo"] = val;
}


@end
