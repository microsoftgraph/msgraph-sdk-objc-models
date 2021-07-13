// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOpenShiftChangeRequest()
{
    NSString* _openShiftId;
}
@end

@implementation MSGraphOpenShiftChangeRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.openShiftChangeRequest";
    }
    return self;
}
- (NSString*) openShiftId
{
    if([[NSNull null] isEqual:self.dictionary[@"openShiftId"]])
    {
        return nil;
    }   
    return self.dictionary[@"openShiftId"];
}

- (void) setOpenShiftId: (NSString*) val
{
    self.dictionary[@"openShiftId"] = val;
}


@end
