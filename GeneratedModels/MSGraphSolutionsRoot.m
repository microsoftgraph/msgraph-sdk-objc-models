// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSolutionsRoot()
{
    NSArray* _bookingBusinesses;
    NSArray* _bookingCurrencies;
}
@end

@implementation MSGraphSolutionsRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.solutionsRoot";
    }
    return self;
}
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
}
- (NSArray*) bookingBusinesses
{
    if(!_bookingBusinesses){
        
    NSMutableArray *bookingBusinessesResult = [NSMutableArray array];
    NSArray *bookingBusinesses = self.dictionary[@"bookingBusinesses"];

    if ([bookingBusinesses isKindOfClass:[NSArray class]]){
        for (id tempBookingBusiness in bookingBusinesses){
            [bookingBusinessesResult addObject:tempBookingBusiness];
        }
    }

    _bookingBusinesses = bookingBusinessesResult;
        
    }
    return _bookingBusinesses;
}

- (void) setBookingBusinesses: (NSArray*) val
{
    _bookingBusinesses = val;
    self.dictionary[@"bookingBusinesses"] = val;
}

- (NSArray*) bookingCurrencies
{
    if(!_bookingCurrencies){
        
    NSMutableArray *bookingCurrenciesResult = [NSMutableArray array];
    NSArray *bookingCurrencies = self.dictionary[@"bookingCurrencies"];

    if ([bookingCurrencies isKindOfClass:[NSArray class]]){
        for (id tempBookingCurrency in bookingCurrencies){
            [bookingCurrenciesResult addObject:tempBookingCurrency];
        }
    }

    _bookingCurrencies = bookingCurrenciesResult;
        
    }
    return _bookingCurrencies;
}

- (void) setBookingCurrencies: (NSArray*) val
{
    _bookingCurrencies = val;
    self.dictionary[@"bookingCurrencies"] = val;
}


@end
