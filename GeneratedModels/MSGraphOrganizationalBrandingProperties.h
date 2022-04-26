// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphOrganizationalBrandingProperties : MSGraphEntity

  @property (nullable, nonatomic, setter=setBackgroundColor:, getter=backgroundColor) NSString* backgroundColor;
    @property (nullable, nonatomic, setter=setBackgroundImageRelativeUrl:, getter=backgroundImageRelativeUrl) NSString* backgroundImageRelativeUrl;
    @property (nullable, nonatomic, setter=setBannerLogoRelativeUrl:, getter=bannerLogoRelativeUrl) NSString* bannerLogoRelativeUrl;
    @property (nullable, nonatomic, setter=setCdnList:, getter=cdnList) NSArray* cdnList;
    @property (nullable, nonatomic, setter=setSignInPageText:, getter=signInPageText) NSString* signInPageText;
    @property (nullable, nonatomic, setter=setSquareLogoRelativeUrl:, getter=squareLogoRelativeUrl) NSString* squareLogoRelativeUrl;
    @property (nullable, nonatomic, setter=setUsernameHintText:, getter=usernameHintText) NSString* usernameHintText;
  
@end
