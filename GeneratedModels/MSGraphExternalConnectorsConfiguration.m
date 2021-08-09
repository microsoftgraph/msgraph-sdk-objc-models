// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsConfiguration()
{
    NSArray* _authorizedAppIds;
}
@end

@implementation MSGraphExternalConnectorsConfiguration

- (NSArray*) authorizedAppIds
{
    if([[NSNull null] isEqual:self.dictionary[@"authorizedAppIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"authorizedAppIds"];
}

- (void) setAuthorizedAppIds: (NSArray*) val
{
    self.dictionary[@"authorizedAppIds"] = val;
}

@end
