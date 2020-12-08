// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCloudCommunications()
{
    NSArray* _calls;
    NSArray* _callRecords;
    NSArray* _onlineMeetings;
    NSArray* _presences;
}
@end

@implementation MSGraphCloudCommunications

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.cloudCommunications";
    }
    return self;
}
- (NSArray*) calls
{
    if(!_calls){
        
    NSMutableArray *callsResult = [NSMutableArray array];
    NSArray *calls = self.dictionary[@"calls"];

    if ([calls isKindOfClass:[NSArray class]]){
        for (id tempCall in calls){
            [callsResult addObject:tempCall];
        }
    }

    _calls = callsResult;
        
    }
    return _calls;
}

- (void) setCalls: (NSArray*) val
{
    _calls = val;
    self.dictionary[@"calls"] = val;
}

- (NSArray*) callRecords
{
    if(!_callRecords){
        
    NSMutableArray *callRecordsResult = [NSMutableArray array];
    NSArray *callRecords = self.dictionary[@"callRecords"];

    if ([callRecords isKindOfClass:[NSArray class]]){
        for (id tempCallRecord in callRecords){
            [callRecordsResult addObject:tempCallRecord];
        }
    }

    _callRecords = callRecordsResult;
        
    }
    return _callRecords;
}

- (void) setCallRecords: (NSArray*) val
{
    _callRecords = val;
    self.dictionary[@"callRecords"] = val;
}

- (NSArray*) onlineMeetings
{
    if(!_onlineMeetings){
        
    NSMutableArray *onlineMeetingsResult = [NSMutableArray array];
    NSArray *onlineMeetings = self.dictionary[@"onlineMeetings"];

    if ([onlineMeetings isKindOfClass:[NSArray class]]){
        for (id tempOnlineMeeting in onlineMeetings){
            [onlineMeetingsResult addObject:tempOnlineMeeting];
        }
    }

    _onlineMeetings = onlineMeetingsResult;
        
    }
    return _onlineMeetings;
}

- (void) setOnlineMeetings: (NSArray*) val
{
    _onlineMeetings = val;
    self.dictionary[@"onlineMeetings"] = val;
}

- (NSArray*) presences
{
    if(!_presences){
        
    NSMutableArray *presencesResult = [NSMutableArray array];
    NSArray *presences = self.dictionary[@"presences"];

    if ([presences isKindOfClass:[NSArray class]]){
        for (id tempPresence in presences){
            [presencesResult addObject:tempPresence];
        }
    }

    _presences = presencesResult;
        
    }
    return _presences;
}

- (void) setPresences: (NSArray*) val
{
    _presences = val;
    self.dictionary[@"presences"] = val;
}


@end
