// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDevice; 
#import "MSGraphAuthenticationMethodKeyStrength.h"


#import "MSGraphAuthenticationMethod.h"

@interface MSGraphWindowsHelloForBusinessAuthenticationMethod : MSGraphAuthenticationMethod

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setKeyStrength:, getter=keyStrength) MSGraphAuthenticationMethodKeyStrength* keyStrength;
    @property (nullable, nonatomic, setter=setDevice:, getter=device) MSGraphDevice* device;
  
@end
