// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeOffItem()
{
    NSString* _timeOffReasonId;
}
@end

@implementation MSGraphTimeOffItem

- (NSString*) timeOffReasonId
{
    if([[NSNull null] isEqual:self.dictionary[@"timeOffReasonId"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeOffReasonId"];
}

- (void) setTimeOffReasonId: (NSString*) val
{
    self.dictionary[@"timeOffReasonId"] = val;
}

@end
