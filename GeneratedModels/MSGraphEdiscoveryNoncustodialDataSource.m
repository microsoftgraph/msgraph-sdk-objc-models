// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryNoncustodialDataSource()
{
    BOOL _applyHoldToSource;
    MSGraphEdiscoveryDataSource* _dataSource;
}
@end

@implementation MSGraphEdiscoveryNoncustodialDataSource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.noncustodialDataSource";
    }
    return self;
}
- (BOOL) applyHoldToSource
{
    _applyHoldToSource = [self.dictionary[@"applyHoldToSource"] boolValue];
    return _applyHoldToSource;
}

- (void) setApplyHoldToSource: (BOOL) val
{
    _applyHoldToSource = val;
    self.dictionary[@"applyHoldToSource"] = @(val);
}

- (MSGraphEdiscoveryDataSource*) dataSource
{
    if(!_dataSource){
        _dataSource = [[MSGraphEdiscoveryDataSource alloc] initWithDictionary: self.dictionary[@"dataSource"]];
    }
    return _dataSource;
}

- (void) setDataSource: (MSGraphEdiscoveryDataSource*) val
{
    _dataSource = val;
    self.dictionary[@"dataSource"] = val;
}


@end
