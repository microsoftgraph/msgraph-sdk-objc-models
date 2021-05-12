// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityGovernance()
{
    MSGraphAccessReviewSet* _accessReviews;
    MSGraphAppConsentApprovalRoute* _appConsent;
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
- (MSGraphAccessReviewSet*) accessReviews
{
    if(!_accessReviews){
        _accessReviews = [[MSGraphAccessReviewSet alloc] initWithDictionary: self.dictionary[@"accessReviews"]];
    }
    return _accessReviews;
}

- (void) setAccessReviews: (MSGraphAccessReviewSet*) val
{
    _accessReviews = val;
    self.dictionary[@"accessReviews"] = val;
}

- (MSGraphAppConsentApprovalRoute*) appConsent
{
    if(!_appConsent){
        _appConsent = [[MSGraphAppConsentApprovalRoute alloc] initWithDictionary: self.dictionary[@"appConsent"]];
    }
    return _appConsent;
}

- (void) setAppConsent: (MSGraphAppConsentApprovalRoute*) val
{
    _appConsent = val;
    self.dictionary[@"appConsent"] = val;
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
