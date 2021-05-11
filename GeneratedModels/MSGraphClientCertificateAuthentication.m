// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphClientCertificateAuthentication()
{
    NSArray* _certificateList;
}
@end

@implementation MSGraphClientCertificateAuthentication

- (NSArray*) certificateList
{
    if(!_certificateList){
        
    NSMutableArray *certificateListResult = [NSMutableArray array];
    NSArray *certificateList = self.dictionary[@"certificateList"];

    if ([certificateList isKindOfClass:[NSArray class]]){
        for (id tempPkcs12CertificateInformation in certificateList){
            [certificateListResult addObject:tempPkcs12CertificateInformation];
        }
    }

    _certificateList = certificateListResult;
        
    }
    return _certificateList;
}

- (void) setCertificateList: (NSArray*) val
{
    _certificateList = val;
    self.dictionary[@"certificateList"] = val;
}

@end
