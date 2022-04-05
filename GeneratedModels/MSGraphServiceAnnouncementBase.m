// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceAnnouncementBase()
{
    NSArray* _details;
    NSDate* _endDateTime;
    NSDate* _lastModifiedDateTime;
    NSDate* _startDateTime;
    NSString* _title;
}
@end

@implementation MSGraphServiceAnnouncementBase

- (NSArray*) details
{
    if(!_details){
        
    NSMutableArray *detailsResult = [NSMutableArray array];
    NSArray *details = self.dictionary[@"details"];

    if ([details isKindOfClass:[NSArray class]]){
        for (id tempKeyValuePair in details){
            [detailsResult addObject:tempKeyValuePair];
        }
    }

    _details = detailsResult;
        
    }
    return _details;
}

- (void) setDetails: (NSArray*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
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

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (NSString*) title
{
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}


@end
