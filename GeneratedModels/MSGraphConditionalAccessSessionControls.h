// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphApplicationEnforcedRestrictionsSessionControl, MSGraphCloudAppSecuritySessionControl, MSGraphPersistentBrowserSessionControl, MSGraphSignInFrequencySessionControl; 


#import "MSObject.h"

@interface MSGraphConditionalAccessSessionControls : MSObject

@property (nullable, nonatomic, setter=setApplicationEnforcedRestrictions:, getter=applicationEnforcedRestrictions) MSGraphApplicationEnforcedRestrictionsSessionControl* applicationEnforcedRestrictions;
@property (nullable, nonatomic, setter=setCloudAppSecurity:, getter=cloudAppSecurity) MSGraphCloudAppSecuritySessionControl* cloudAppSecurity;
@property (nullable, nonatomic, setter=setPersistentBrowser:, getter=persistentBrowser) MSGraphPersistentBrowserSessionControl* persistentBrowser;
@property (nullable, nonatomic, setter=setSignInFrequency:, getter=signInFrequency) MSGraphSignInFrequencySessionControl* signInFrequency;

@end
