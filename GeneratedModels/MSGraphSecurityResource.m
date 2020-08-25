// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSecurityResource()
{
    NSString* _resource;
    MSGraphSecurityResourceType* _resourceType;
}
@end

@implementation MSGraphSecurityResource

- (NSString*) resource
{
    if([[NSNull null] isEqual:self.dictionary[@"resource"]])
    {
        return nil;
    }   
    return self.dictionary[@"resource"];
}

- (void) setResource: (NSString*) val
{
    self.dictionary[@"resource"] = val;
}

- (MSGraphSecurityResourceType*) resourceType
{
    if(!_resourceType){
        _resourceType = [self.dictionary[@"resourceType"] toMSGraphSecurityResourceType];
    }
    return _resourceType;
}

- (void) setResourceType: (MSGraphSecurityResourceType*) val
{
    _resourceType = val;
    self.dictionary[@"resourceType"] = val;
}

@end
