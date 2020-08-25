// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEndpoint()
{
    NSString* _capability;
    NSString* _providerId;
    NSString* _providerName;
    NSString* _uri;
    NSString* _providerResourceId;
}
@end

@implementation MSGraphEndpoint

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.endpoint";
    }
    return self;
}
- (NSString*) capability
{
    return self.dictionary[@"capability"];
}

- (void) setCapability: (NSString*) val
{
    self.dictionary[@"capability"] = val;
}

- (NSString*) providerId
{
    if([[NSNull null] isEqual:self.dictionary[@"providerId"]])
    {
        return nil;
    }   
    return self.dictionary[@"providerId"];
}

- (void) setProviderId: (NSString*) val
{
    self.dictionary[@"providerId"] = val;
}

- (NSString*) providerName
{
    if([[NSNull null] isEqual:self.dictionary[@"providerName"]])
    {
        return nil;
    }   
    return self.dictionary[@"providerName"];
}

- (void) setProviderName: (NSString*) val
{
    self.dictionary[@"providerName"] = val;
}

- (NSString*) uri
{
    return self.dictionary[@"uri"];
}

- (void) setUri: (NSString*) val
{
    self.dictionary[@"uri"] = val;
}

- (NSString*) providerResourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"providerResourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"providerResourceId"];
}

- (void) setProviderResourceId: (NSString*) val
{
    self.dictionary[@"providerResourceId"] = val;
}


@end
