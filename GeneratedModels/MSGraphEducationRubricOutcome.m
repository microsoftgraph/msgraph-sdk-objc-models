// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationRubricOutcome()
{
    NSArray* _publishedRubricQualityFeedback;
    NSArray* _publishedRubricQualitySelectedLevels;
    NSArray* _rubricQualityFeedback;
    NSArray* _rubricQualitySelectedLevels;
}
@end

@implementation MSGraphEducationRubricOutcome

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationRubricOutcome";
    }
    return self;
}
- (NSArray*) publishedRubricQualityFeedback
{
    if(!_publishedRubricQualityFeedback){
        
    NSMutableArray *publishedRubricQualityFeedbackResult = [NSMutableArray array];
    NSArray *publishedRubricQualityFeedback = self.dictionary[@"publishedRubricQualityFeedback"];

    if ([publishedRubricQualityFeedback isKindOfClass:[NSArray class]]){
        for (id tempRubricQualityFeedbackModel in publishedRubricQualityFeedback){
            [publishedRubricQualityFeedbackResult addObject:tempRubricQualityFeedbackModel];
        }
    }

    _publishedRubricQualityFeedback = publishedRubricQualityFeedbackResult;
        
    }
    return _publishedRubricQualityFeedback;
}

- (void) setPublishedRubricQualityFeedback: (NSArray*) val
{
    _publishedRubricQualityFeedback = val;
    self.dictionary[@"publishedRubricQualityFeedback"] = val;
}

- (NSArray*) publishedRubricQualitySelectedLevels
{
    if(!_publishedRubricQualitySelectedLevels){
        
    NSMutableArray *publishedRubricQualitySelectedLevelsResult = [NSMutableArray array];
    NSArray *publishedRubricQualitySelectedLevels = self.dictionary[@"publishedRubricQualitySelectedLevels"];

    if ([publishedRubricQualitySelectedLevels isKindOfClass:[NSArray class]]){
        for (id tempRubricQualitySelectedColumnModel in publishedRubricQualitySelectedLevels){
            [publishedRubricQualitySelectedLevelsResult addObject:tempRubricQualitySelectedColumnModel];
        }
    }

    _publishedRubricQualitySelectedLevels = publishedRubricQualitySelectedLevelsResult;
        
    }
    return _publishedRubricQualitySelectedLevels;
}

- (void) setPublishedRubricQualitySelectedLevels: (NSArray*) val
{
    _publishedRubricQualitySelectedLevels = val;
    self.dictionary[@"publishedRubricQualitySelectedLevels"] = val;
}

- (NSArray*) rubricQualityFeedback
{
    if(!_rubricQualityFeedback){
        
    NSMutableArray *rubricQualityFeedbackResult = [NSMutableArray array];
    NSArray *rubricQualityFeedback = self.dictionary[@"rubricQualityFeedback"];

    if ([rubricQualityFeedback isKindOfClass:[NSArray class]]){
        for (id tempRubricQualityFeedbackModel in rubricQualityFeedback){
            [rubricQualityFeedbackResult addObject:tempRubricQualityFeedbackModel];
        }
    }

    _rubricQualityFeedback = rubricQualityFeedbackResult;
        
    }
    return _rubricQualityFeedback;
}

- (void) setRubricQualityFeedback: (NSArray*) val
{
    _rubricQualityFeedback = val;
    self.dictionary[@"rubricQualityFeedback"] = val;
}

- (NSArray*) rubricQualitySelectedLevels
{
    if(!_rubricQualitySelectedLevels){
        
    NSMutableArray *rubricQualitySelectedLevelsResult = [NSMutableArray array];
    NSArray *rubricQualitySelectedLevels = self.dictionary[@"rubricQualitySelectedLevels"];

    if ([rubricQualitySelectedLevels isKindOfClass:[NSArray class]]){
        for (id tempRubricQualitySelectedColumnModel in rubricQualitySelectedLevels){
            [rubricQualitySelectedLevelsResult addObject:tempRubricQualitySelectedColumnModel];
        }
    }

    _rubricQualitySelectedLevels = rubricQualitySelectedLevelsResult;
        
    }
    return _rubricQualitySelectedLevels;
}

- (void) setRubricQualitySelectedLevels: (NSArray*) val
{
    _rubricQualitySelectedLevels = val;
    self.dictionary[@"rubricQualitySelectedLevels"] = val;
}


@end
