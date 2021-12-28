// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceAnnouncement()
{
    NSArray* _healthOverviews;
    NSArray* _issues;
    NSArray* _messages;
}
@end

@implementation MSGraphServiceAnnouncement

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.serviceAnnouncement";
    }
    return self;
}
- (NSArray*) healthOverviews
{
    if(!_healthOverviews){
        
    NSMutableArray *healthOverviewsResult = [NSMutableArray array];
    NSArray *healthOverviews = self.dictionary[@"healthOverviews"];

    if ([healthOverviews isKindOfClass:[NSArray class]]){
        for (id tempServiceHealth in healthOverviews){
            [healthOverviewsResult addObject:tempServiceHealth];
        }
    }

    _healthOverviews = healthOverviewsResult;
        
    }
    return _healthOverviews;
}

- (void) setHealthOverviews: (NSArray*) val
{
    _healthOverviews = val;
    self.dictionary[@"healthOverviews"] = val;
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

- (NSArray*) messages
{
    if(!_messages){
        
    NSMutableArray *messagesResult = [NSMutableArray array];
    NSArray *messages = self.dictionary[@"messages"];

    if ([messages isKindOfClass:[NSArray class]]){
        for (id tempServiceUpdateMessage in messages){
            [messagesResult addObject:tempServiceUpdateMessage];
        }
    }

    _messages = messagesResult;
        
    }
    return _messages;
}

- (void) setMessages: (NSArray*) val
{
    _messages = val;
    self.dictionary[@"messages"] = val;
}


@end
