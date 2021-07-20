// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsConnectionOperation()
{
    MSGraphPublicError* _error;
    MSGraphExternalConnectorsConnectionOperationStatus* _status;
}
@end

@implementation MSGraphExternalConnectorsConnectionOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.externalConnectors.connectionOperation";
    }
    return self;
}
- (MSGraphPublicError*) error
{
    if(!_error){
        _error = [[MSGraphPublicError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphPublicError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}

- (MSGraphExternalConnectorsConnectionOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphExternalConnectorsConnectionOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphExternalConnectorsConnectionOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}


@end
