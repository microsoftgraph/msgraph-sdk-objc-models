// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserFlowApiConnectorConfiguration()
{
    MSGraphIdentityApiConnector* _postAttributeCollection;
    MSGraphIdentityApiConnector* _postFederationSignup;
}
@end

@implementation MSGraphUserFlowApiConnectorConfiguration

- (MSGraphIdentityApiConnector*) postAttributeCollection
{
    if(!_postAttributeCollection){
        _postAttributeCollection = [[MSGraphIdentityApiConnector alloc] initWithDictionary: self.dictionary[@"postAttributeCollection"]];
    }
    return _postAttributeCollection;
}

- (void) setPostAttributeCollection: (MSGraphIdentityApiConnector*) val
{
    _postAttributeCollection = val;
    self.dictionary[@"postAttributeCollection"] = val;
}

- (MSGraphIdentityApiConnector*) postFederationSignup
{
    if(!_postFederationSignup){
        _postFederationSignup = [[MSGraphIdentityApiConnector alloc] initWithDictionary: self.dictionary[@"postFederationSignup"]];
    }
    return _postFederationSignup;
}

- (void) setPostFederationSignup: (MSGraphIdentityApiConnector*) val
{
    _postFederationSignup = val;
    self.dictionary[@"postFederationSignup"] = val;
}

@end
