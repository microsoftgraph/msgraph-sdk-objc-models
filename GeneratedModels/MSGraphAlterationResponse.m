// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlterationResponse()
{
    NSString* _originalQueryString;
    MSGraphSearchAlteration* _queryAlteration;
    MSGraphSearchAlterationType* _queryAlterationType;
}
@end

@implementation MSGraphAlterationResponse

- (NSString*) originalQueryString
{
    if([[NSNull null] isEqual:self.dictionary[@"originalQueryString"]])
    {
        return nil;
    }   
    return self.dictionary[@"originalQueryString"];
}

- (void) setOriginalQueryString: (NSString*) val
{
    self.dictionary[@"originalQueryString"] = val;
}

- (MSGraphSearchAlteration*) queryAlteration
{
    if(!_queryAlteration){
        _queryAlteration = [[MSGraphSearchAlteration alloc] initWithDictionary: self.dictionary[@"queryAlteration"]];
    }
    return _queryAlteration;
}

- (void) setQueryAlteration: (MSGraphSearchAlteration*) val
{
    _queryAlteration = val;
    self.dictionary[@"queryAlteration"] = val;
}

- (MSGraphSearchAlterationType*) queryAlterationType
{
    if(!_queryAlterationType){
        _queryAlterationType = [self.dictionary[@"queryAlterationType"] toMSGraphSearchAlterationType];
    }
    return _queryAlterationType;
}

- (void) setQueryAlterationType: (MSGraphSearchAlterationType*) val
{
    _queryAlterationType = val;
    self.dictionary[@"queryAlterationType"] = val;
}

@end
