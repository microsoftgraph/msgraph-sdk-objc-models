// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPkcs12CertificateInformation()
{
    BOOL _isActive;
    int64_t _notAfter;
    int64_t _notBefore;
    NSString* _thumbprint;
}
@end

@implementation MSGraphPkcs12CertificateInformation

- (BOOL) isActive
{
    _isActive = [self.dictionary[@"isActive"] boolValue];
    return _isActive;
}

- (void) setIsActive: (BOOL) val
{
    _isActive = val;
    self.dictionary[@"isActive"] = @(val);
}

- (int64_t) notAfter
{
    _notAfter = [self.dictionary[@"notAfter"] longLongValue];
    return _notAfter;
}

- (void) setNotAfter: (int64_t) val
{
    _notAfter = val;
    self.dictionary[@"notAfter"] = @(val);
}

- (int64_t) notBefore
{
    _notBefore = [self.dictionary[@"notBefore"] longLongValue];
    return _notBefore;
}

- (void) setNotBefore: (int64_t) val
{
    _notBefore = val;
    self.dictionary[@"notBefore"] = @(val);
}

- (NSString*) thumbprint
{
    if([[NSNull null] isEqual:self.dictionary[@"thumbprint"]])
    {
        return nil;
    }   
    return self.dictionary[@"thumbprint"];
}

- (void) setThumbprint: (NSString*) val
{
    self.dictionary[@"thumbprint"] = val;
}

@end
