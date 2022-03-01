// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingCurrency()
{
    NSString* _symbol;
}
@end

@implementation MSGraphBookingCurrency

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingCurrency";
    }
    return self;
}
- (NSString*) symbol
{
    return self.dictionary[@"symbol"];
}

- (void) setSymbol: (NSString*) val
{
    self.dictionary[@"symbol"] = val;
}


@end
