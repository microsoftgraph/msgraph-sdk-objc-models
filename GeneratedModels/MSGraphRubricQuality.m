// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRubricQuality()
{
    NSArray* _criteria;
    MSGraphEducationItemBody* _rubricQualityDescription;
    NSString* _displayName;
    NSString* _qualityId;
    double _weight;
}
@end

@implementation MSGraphRubricQuality

- (NSArray*) criteria
{
    if(!_criteria){
        
    NSMutableArray *criteriaResult = [NSMutableArray array];
    NSArray *criteria = self.dictionary[@"criteria"];

    if ([criteria isKindOfClass:[NSArray class]]){
        for (id tempRubricCriterion in criteria){
            [criteriaResult addObject:tempRubricCriterion];
        }
    }

    _criteria = criteriaResult;
        
    }
    return _criteria;
}

- (void) setCriteria: (NSArray*) val
{
    _criteria = val;
    self.dictionary[@"criteria"] = val;
}

- (MSGraphEducationItemBody*) rubricQualityDescription
{
    if(!_rubricQualityDescription){
        _rubricQualityDescription = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"description"]];
    }
    return _rubricQualityDescription;
}

- (void) setRubricQualityDescription: (MSGraphEducationItemBody*) val
{
    _rubricQualityDescription = val;
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

- (NSString*) qualityId
{
    if([[NSNull null] isEqual:self.dictionary[@"qualityId"]])
    {
        return nil;
    }   
    return self.dictionary[@"qualityId"];
}

- (void) setQualityId: (NSString*) val
{
    self.dictionary[@"qualityId"] = val;
}

- (double) weight
{
    _weight = [self.dictionary[@"weight"] floatValue];
    return _weight;
}

- (void) setWeight: (double) val
{
    _weight = val;
    self.dictionary[@"weight"] = @(val);
}

@end
