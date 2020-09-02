// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphShiftItem()
{
    NSArray* _activities;
    NSString* _displayName;
    NSString* _notes;
}
@end

@implementation MSGraphShiftItem

- (NSArray*) activities
{
    if(!_activities){
        
    NSMutableArray *activitiesResult = [NSMutableArray array];
    NSArray *activities = self.dictionary[@"activities"];

    if ([activities isKindOfClass:[NSArray class]]){
        for (id tempShiftActivity in activities){
            [activitiesResult addObject:tempShiftActivity];
        }
    }

    _activities = activitiesResult;
        
    }
    return _activities;
}

- (void) setActivities: (NSArray*) val
{
    _activities = val;
    self.dictionary[@"activities"] = val;
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

- (NSString*) notes
{
    if([[NSNull null] isEqual:self.dictionary[@"notes"]])
    {
        return nil;
    }   
    return self.dictionary[@"notes"];
}

- (void) setNotes: (NSString*) val
{
    self.dictionary[@"notes"] = val;
}

@end
