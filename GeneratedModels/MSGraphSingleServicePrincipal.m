// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSingleServicePrincipal()
{
    NSString* _singleServicePrincipalDescription;
    NSString* _servicePrincipalId;
}
@end

@implementation MSGraphSingleServicePrincipal

- (NSString*) singleServicePrincipalDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setSingleServicePrincipalDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) servicePrincipalId
{
    if([[NSNull null] isEqual:self.dictionary[@"servicePrincipalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"servicePrincipalId"];
}

- (void) setServicePrincipalId: (NSString*) val
{
    self.dictionary[@"servicePrincipalId"] = val;
}

@end
