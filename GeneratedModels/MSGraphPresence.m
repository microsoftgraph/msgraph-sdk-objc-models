// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPresence()
{
    NSString* _activity;
    NSString* _availability;
}
@end

@implementation MSGraphPresence

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.presence";
    }
    return self;
}
- (NSString*) activity
{
    if([[NSNull null] isEqual:self.dictionary[@"activity"]])
    {
        return nil;
    }   
    return self.dictionary[@"activity"];
}

- (void) setActivity: (NSString*) val
{
    self.dictionary[@"activity"] = val;
}

- (NSString*) availability
{
    if([[NSNull null] isEqual:self.dictionary[@"availability"]])
    {
        return nil;
    }   
    return self.dictionary[@"availability"];
}

- (void) setAvailability: (NSString*) val
{
    self.dictionary[@"availability"] = val;
}


@end
