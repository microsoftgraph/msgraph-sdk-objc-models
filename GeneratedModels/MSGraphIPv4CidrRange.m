// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIPv4CidrRange()
{
    NSString* _cidrAddress;
}
@end

@implementation MSGraphIPv4CidrRange

- (NSString*) cidrAddress
{
    return self.dictionary[@"cidrAddress"];
}

- (void) setCidrAddress: (NSString*) val
{
    self.dictionary[@"cidrAddress"] = val;
}

@end
