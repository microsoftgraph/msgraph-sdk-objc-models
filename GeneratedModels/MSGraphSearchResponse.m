// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchResponse()
{
    MSGraphAlterationResponse* _queryAlterationResponse;
    NSArray* _value;
}
@end

@implementation MSGraphSearchResponse

- (MSGraphAlterationResponse*) queryAlterationResponse
{
    if(!_queryAlterationResponse){
        _queryAlterationResponse = [[MSGraphAlterationResponse alloc] initWithDictionary: self.dictionary[@"queryAlterationResponse"]];
    }
    return _queryAlterationResponse;
}

- (void) setQueryAlterationResponse: (MSGraphAlterationResponse*) val
{
    _queryAlterationResponse = val;
    self.dictionary[@"queryAlterationResponse"] = val;
}

- (NSArray*) value
{
    if(!_value){
        
    NSMutableArray *valueResult = [NSMutableArray array];
    NSArray *value = self.dictionary[@"value"];

    if ([value isKindOfClass:[NSArray class]]){
        for (id tempSearchResultSet in value){
            [valueResult addObject:tempSearchResultSet];
        }
    }

    _value = valueResult;
        
    }
    return _value;
}

- (void) setValue: (NSArray*) val
{
    _value = val;
    self.dictionary[@"value"] = val;
}

@end
