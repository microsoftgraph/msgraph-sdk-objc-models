// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessSessionControls()
{
    MSGraphApplicationEnforcedRestrictionsSessionControl* _applicationEnforcedRestrictions;
    MSGraphCloudAppSecuritySessionControl* _cloudAppSecurity;
    MSGraphSignInFrequencySessionControl* _signInFrequency;
    MSGraphPersistentBrowserSessionControl* _persistentBrowser;
}
@end

@implementation MSGraphConditionalAccessSessionControls

- (MSGraphApplicationEnforcedRestrictionsSessionControl*) applicationEnforcedRestrictions
{
    if(!_applicationEnforcedRestrictions){
        _applicationEnforcedRestrictions = [[MSGraphApplicationEnforcedRestrictionsSessionControl alloc] initWithDictionary: self.dictionary[@"applicationEnforcedRestrictions"]];
    }
    return _applicationEnforcedRestrictions;
}

- (void) setApplicationEnforcedRestrictions: (MSGraphApplicationEnforcedRestrictionsSessionControl*) val
{
    _applicationEnforcedRestrictions = val;
    self.dictionary[@"applicationEnforcedRestrictions"] = val;
}

- (MSGraphCloudAppSecuritySessionControl*) cloudAppSecurity
{
    if(!_cloudAppSecurity){
        _cloudAppSecurity = [[MSGraphCloudAppSecuritySessionControl alloc] initWithDictionary: self.dictionary[@"cloudAppSecurity"]];
    }
    return _cloudAppSecurity;
}

- (void) setCloudAppSecurity: (MSGraphCloudAppSecuritySessionControl*) val
{
    _cloudAppSecurity = val;
    self.dictionary[@"cloudAppSecurity"] = val;
}

- (MSGraphSignInFrequencySessionControl*) signInFrequency
{
    if(!_signInFrequency){
        _signInFrequency = [[MSGraphSignInFrequencySessionControl alloc] initWithDictionary: self.dictionary[@"signInFrequency"]];
    }
    return _signInFrequency;
}

- (void) setSignInFrequency: (MSGraphSignInFrequencySessionControl*) val
{
    _signInFrequency = val;
    self.dictionary[@"signInFrequency"] = val;
}

- (MSGraphPersistentBrowserSessionControl*) persistentBrowser
{
    if(!_persistentBrowser){
        _persistentBrowser = [[MSGraphPersistentBrowserSessionControl alloc] initWithDictionary: self.dictionary[@"persistentBrowser"]];
    }
    return _persistentBrowser;
}

- (void) setPersistentBrowser: (MSGraphPersistentBrowserSessionControl*) val
{
    _persistentBrowser = val;
    self.dictionary[@"persistentBrowser"] = val;
}

@end
