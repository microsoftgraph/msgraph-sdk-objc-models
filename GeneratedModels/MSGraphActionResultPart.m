// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphActionResultPart()
{
    MSGraphPublicError* _error;
}
@end

@implementation MSGraphActionResultPart

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

@end
