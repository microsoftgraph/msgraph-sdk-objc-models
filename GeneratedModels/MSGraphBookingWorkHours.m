// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingWorkHours()
{
    MSGraphDayOfWeek* _day;
    NSArray* _timeSlots;
}
@end

@implementation MSGraphBookingWorkHours

- (MSGraphDayOfWeek*) day
{
    if(!_day){
        _day = [self.dictionary[@"day"] toMSGraphDayOfWeek];
    }
    return _day;
}

- (void) setDay: (MSGraphDayOfWeek*) val
{
    _day = val;
    self.dictionary[@"day"] = val;
}

- (NSArray*) timeSlots
{
    if(!_timeSlots){
        
    NSMutableArray *timeSlotsResult = [NSMutableArray array];
    NSArray *timeSlots = self.dictionary[@"timeSlots"];

    if ([timeSlots isKindOfClass:[NSArray class]]){
        for (id tempBookingWorkTimeSlot in timeSlots){
            [timeSlotsResult addObject:tempBookingWorkTimeSlot];
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
