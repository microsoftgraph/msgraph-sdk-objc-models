// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamwork()
{
    NSArray* _workforceIntegrations;
}
@end

@implementation MSGraphTeamwork

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamwork";
    }
    return self;
}
- (NSArray*) workforceIntegrations
{
    if(!_workforceIntegrations){
        
    NSMutableArray *workforceIntegrationsResult = [NSMutableArray array];
    NSArray *workforceIntegrations = self.dictionary[@"workforceIntegrations"];

    if ([workforceIntegrations isKindOfClass:[NSArray class]]){
        for (id tempWorkforceIntegration in workforceIntegrations){
            [workforceIntegrationsResult addObject:tempWorkforceIntegration];
        }
    }

    _workforceIntegrations = workforceIntegrationsResult;
        
    }
    return _workforceIntegrations;
}

- (void) setWorkforceIntegrations: (NSArray*) val
{
    _workforceIntegrations = val;
    self.dictionary[@"workforceIntegrations"] = val;
}


@end
