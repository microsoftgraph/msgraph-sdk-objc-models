// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTicketInfo()
{
    NSString* _ticketNumber;
    NSString* _ticketSystem;
}
@end

@implementation MSGraphTicketInfo

- (NSString*) ticketNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"ticketNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"ticketNumber"];
}

- (void) setTicketNumber: (NSString*) val
{
    self.dictionary[@"ticketNumber"] = val;
}

- (NSString*) ticketSystem
{
    if([[NSNull null] isEqual:self.dictionary[@"ticketSystem"]])
    {
        return nil;
    }   
    return self.dictionary[@"ticketSystem"];
}

- (void) setTicketSystem: (NSString*) val
{
    self.dictionary[@"ticketSystem"] = val;
}

@end
