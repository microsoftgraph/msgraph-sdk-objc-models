// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityGovernance()
{
    MSGraphTermsOfUseContainer* _termsOfUse;
}
@end

@implementation MSGraphIdentityGovernance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityGovernance";
    }
    return self;
}
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
}
- (MSGraphTermsOfUseContainer*) termsOfUse
{
    if(!_termsOfUse){
        _termsOfUse = [[MSGraphTermsOfUseContainer alloc] initWithDictionary: self.dictionary[@"termsOfUse"]];
    }
    return _termsOfUse;
}

- (void) setTermsOfUse: (MSGraphTermsOfUseContainer*) val
{
    _termsOfUse = val;
    self.dictionary[@"termsOfUse"] = val;
}


@end
