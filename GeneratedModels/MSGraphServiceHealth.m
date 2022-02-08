// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceHealth()
{
    NSString* _service;
    MSGraphServiceHealthStatus* _status;
    NSArray* _issues;
}
@end

@implementation MSGraphServiceHealth

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.serviceHealth";
    }
    return self;
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

- (NSArray*) issues
{
    if(!_issues){
        
    NSMutableArray *issuesResult = [NSMutableArray array];
    NSArray *issues = self.dictionary[@"issues"];

    if ([issues isKindOfClass:[NSArray class]]){
        for (id tempServiceHealthIssue in issues){
            [issuesResult addObject:tempServiceHealthIssue];
        }
    }

    _issues = issuesResult;
        
    }
    return _issues;
}

- (void) setIssues: (NSArray*) val
{
    _issues = val;
    self.dictionary[@"issues"] = val;
}


@end
