// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphShiftPreferences()
{
    NSArray* _availability;
}
@end

@implementation MSGraphShiftPreferences

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.shiftPreferences";
    }
    return self;
}
- (NSArray*) availability
{
    if(!_availability){
        
    NSMutableArray *availabilityResult = [NSMutableArray array];
    NSArray *availability = self.dictionary[@"availability"];

    if ([availability isKindOfClass:[NSArray class]]){
        for (id tempShiftAvailability in availability){
            [availabilityResult addObject:tempShiftAvailability];
        }
    }

    _availability = availabilityResult;
        
    }
    return _availability;
}

- (void) setAvailability: (NSArray*) val
{
    _availability = val;
    self.dictionary[@"availability"] = val;
}


@end
