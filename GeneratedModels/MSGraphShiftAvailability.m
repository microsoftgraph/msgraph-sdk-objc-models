// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphShiftAvailability()
{
    MSGraphPatternedRecurrence* _recurrence;
    NSString* _timeZone;
    NSArray* _timeSlots;
}
@end

@implementation MSGraphShiftAvailability

- (MSGraphPatternedRecurrence*) recurrence
{
    if(!_recurrence){
        _recurrence = [[MSGraphPatternedRecurrence alloc] initWithDictionary: self.dictionary[@"recurrence"]];
    }
    return _recurrence;
}

- (void) setRecurrence: (MSGraphPatternedRecurrence*) val
{
    _recurrence = val;
    self.dictionary[@"recurrence"] = val;
}

- (NSString*) timeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"timeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeZone"];
}

- (void) setTimeZone: (NSString*) val
{
    self.dictionary[@"timeZone"] = val;
}

- (NSArray*) timeSlots
{
    if(!_timeSlots){
        
    NSMutableArray *timeSlotsResult = [NSMutableArray array];
    NSArray *timeSlots = self.dictionary[@"timeSlots"];

    if ([timeSlots isKindOfClass:[NSArray class]]){
        for (id tempTimeRange in timeSlots){
            [timeSlotsResult addObject:tempTimeRange];
        }
    }

    _timeSlots = timeSlotsResult;
        
    }
    return _timeSlots;
}

- (void) setTimeSlots: (NSArray*) val
{
    _timeSlots = val;
    self.dictionary[@"timeSlots"] = val;
}

@end
