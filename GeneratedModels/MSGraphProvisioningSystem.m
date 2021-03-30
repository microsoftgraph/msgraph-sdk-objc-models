// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisioningSystem()
{
    MSGraphDetailsInfo* _details;
}
@end

@implementation MSGraphProvisioningSystem

- (MSGraphDetailsInfo*) details
{
    if(!_details){
        _details = [[MSGraphDetailsInfo alloc] initWithDictionary: self.dictionary[@"details"]];
    }
    return _details;
}

- (void) setDetails: (MSGraphDetailsInfo*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

@end
