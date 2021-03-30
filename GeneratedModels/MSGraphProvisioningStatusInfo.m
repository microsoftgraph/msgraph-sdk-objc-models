// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisioningStatusInfo()
{
    MSGraphProvisioningErrorInfo* _errorInformation;
    MSGraphProvisioningResult* _status;
}
@end

@implementation MSGraphProvisioningStatusInfo

- (MSGraphProvisioningErrorInfo*) errorInformation
{
    if(!_errorInformation){
        _errorInformation = [[MSGraphProvisioningErrorInfo alloc] initWithDictionary: self.dictionary[@"errorInformation"]];
    }
    return _errorInformation;
}

- (void) setErrorInformation: (MSGraphProvisioningErrorInfo*) val
{
    _errorInformation = val;
    self.dictionary[@"errorInformation"] = val;
}

- (MSGraphProvisioningResult*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphProvisioningResult];
    }
    return _status;
}

- (void) setStatus: (MSGraphProvisioningResult*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

@end
