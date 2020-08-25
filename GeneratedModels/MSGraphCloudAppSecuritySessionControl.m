// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCloudAppSecuritySessionControl()
{
    MSGraphCloudAppSecuritySessionControlType* _cloudAppSecurityType;
}
@end

@implementation MSGraphCloudAppSecuritySessionControl

- (MSGraphCloudAppSecuritySessionControlType*) cloudAppSecurityType
{
    if(!_cloudAppSecurityType){
        _cloudAppSecurityType = [self.dictionary[@"cloudAppSecurityType"] toMSGraphCloudAppSecuritySessionControlType];
    }
    return _cloudAppSecurityType;
}

- (void) setCloudAppSecurityType: (MSGraphCloudAppSecuritySessionControlType*) val
{
    _cloudAppSecurityType = val;
    self.dictionary[@"cloudAppSecurityType"] = val;
}

@end
