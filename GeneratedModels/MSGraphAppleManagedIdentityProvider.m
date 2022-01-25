// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppleManagedIdentityProvider()
{
    NSString* _certificateData;
    NSString* _developerId;
    NSString* _keyId;
    NSString* _serviceId;
}
@end

@implementation MSGraphAppleManagedIdentityProvider

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.appleManagedIdentityProvider";
    }
    return self;
}
- (NSString*) certificateData
{
    if([[NSNull null] isEqual:self.dictionary[@"certificateData"]])
    {
        return nil;
    }   
    return self.dictionary[@"certificateData"];
}

- (void) setCertificateData: (NSString*) val
{
    self.dictionary[@"certificateData"] = val;
}

- (NSString*) developerId
{
    if([[NSNull null] isEqual:self.dictionary[@"developerId"]])
    {
        return nil;
    }   
    return self.dictionary[@"developerId"];
}

- (void) setDeveloperId: (NSString*) val
{
    self.dictionary[@"developerId"] = val;
}

- (NSString*) keyId
{
    if([[NSNull null] isEqual:self.dictionary[@"keyId"]])
    {
        return nil;
    }   
    return self.dictionary[@"keyId"];
}

- (void) setKeyId: (NSString*) val
{
    self.dictionary[@"keyId"] = val;
}

- (NSString*) serviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"serviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"serviceId"];
}

- (void) setServiceId: (NSString*) val
{
    self.dictionary[@"serviceId"] = val;
}


@end
