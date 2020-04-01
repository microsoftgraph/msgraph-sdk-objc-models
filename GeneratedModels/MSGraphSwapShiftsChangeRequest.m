// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSwapShiftsChangeRequest()
{
    NSString* _recipientShiftId;
}
@end

@implementation MSGraphSwapShiftsChangeRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.swapShiftsChangeRequest";
    }
    return self;
}
- (NSString*) recipientShiftId
{
    if([[NSNull null] isEqual:self.dictionary[@"recipientShiftId"]])
    {
        return nil;
    }   
    return self.dictionary[@"recipientShiftId"];
}

- (void) setRecipientShiftId: (NSString*) val
{
    self.dictionary[@"recipientShiftId"] = val;
}


@end
