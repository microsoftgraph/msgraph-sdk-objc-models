// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingCustomer()
{
    NSArray* _addresses;
    NSString* _displayName;
    NSString* _emailAddress;
    NSArray* _phones;
}
@end

@implementation MSGraphBookingCustomer

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingCustomer";
    }
    return self;
}
- (NSArray*) addresses
{
    if(!_addresses){
        
    NSMutableArray *addressesResult = [NSMutableArray array];
    NSArray *addresses = self.dictionary[@"addresses"];

    if ([addresses isKindOfClass:[NSArray class]]){
        for (id tempPhysicalAddress in addresses){
            [addressesResult addObject:tempPhysicalAddress];
        }
    }

    _addresses = addressesResult;
        
    }
    return _addresses;
}

- (void) setAddresses: (NSArray*) val
{
    _addresses = val;
    self.dictionary[@"addresses"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (NSArray*) phones
{
    if(!_phones){
        
    NSMutableArray *phonesResult = [NSMutableArray array];
    NSArray *phones = self.dictionary[@"phones"];

    if ([phones isKindOfClass:[NSArray class]]){
        for (id tempPhone in phones){
            [phonesResult addObject:tempPhone];
        }
    }

    _phones = phonesResult;
        
    }
    return _phones;
}

- (void) setPhones: (NSArray*) val
{
    _phones = val;
    self.dictionary[@"phones"] = val;
}


@end
