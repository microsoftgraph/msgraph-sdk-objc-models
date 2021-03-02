// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintCertificateSigningRequest()
{
    NSString* _content;
    NSString* _transportKey;
}
@end

@implementation MSGraphPrintCertificateSigningRequest

- (NSString*) content
{
    return self.dictionary[@"content"];
}

- (void) setContent: (NSString*) val
{
    self.dictionary[@"content"] = val;
}

- (NSString*) transportKey
{
    return self.dictionary[@"transportKey"];
}

- (void) setTransportKey: (NSString*) val
{
    self.dictionary[@"transportKey"] = val;
}

@end
