// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookOperation()
{
    MSGraphWorkbookOperationStatus* _status;
    NSString* _resourceLocation;
    MSGraphWorkbookOperationError* _error;
}
@end

@implementation MSGraphWorkbookOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookOperation";
    }
    return self;
}
- (MSGraphWorkbookOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphWorkbookOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphWorkbookOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) resourceLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceLocation"];
}

- (void) setResourceLocation: (NSString*) val
{
    self.dictionary[@"resourceLocation"] = val;
}

- (MSGraphWorkbookOperationError*) error
{
    if(!_error){
        _error = [[MSGraphWorkbookOperationError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphWorkbookOperationError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}


@end
