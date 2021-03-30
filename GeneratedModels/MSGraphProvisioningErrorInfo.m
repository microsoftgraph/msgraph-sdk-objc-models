// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisioningErrorInfo()
{
    NSString* _additionalDetails;
    MSGraphProvisioningStatusErrorCategory* _errorCategory;
    NSString* _errorCode;
    NSString* _reason;
    NSString* _recommendedAction;
}
@end

@implementation MSGraphProvisioningErrorInfo

- (NSString*) additionalDetails
{
    if([[NSNull null] isEqual:self.dictionary[@"additionalDetails"]])
    {
        return nil;
    }   
    return self.dictionary[@"additionalDetails"];
}

- (void) setAdditionalDetails: (NSString*) val
{
    self.dictionary[@"additionalDetails"] = val;
}

- (MSGraphProvisioningStatusErrorCategory*) errorCategory
{
    if(!_errorCategory){
        _errorCategory = [self.dictionary[@"errorCategory"] toMSGraphProvisioningStatusErrorCategory];
    }
    return _errorCategory;
}

- (void) setErrorCategory: (MSGraphProvisioningStatusErrorCategory*) val
{
    _errorCategory = val;
    self.dictionary[@"errorCategory"] = val;
}

- (NSString*) errorCode
{
    if([[NSNull null] isEqual:self.dictionary[@"errorCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"errorCode"];
}

- (void) setErrorCode: (NSString*) val
{
    self.dictionary[@"errorCode"] = val;
}

- (NSString*) reason
{
    if([[NSNull null] isEqual:self.dictionary[@"reason"]])
    {
        return nil;
    }   
    return self.dictionary[@"reason"];
}

- (void) setReason: (NSString*) val
{
    self.dictionary[@"reason"] = val;
}

- (NSString*) recommendedAction
{
    if([[NSNull null] isEqual:self.dictionary[@"recommendedAction"]])
    {
        return nil;
    }   
    return self.dictionary[@"recommendedAction"];
}

- (void) setRecommendedAction: (NSString*) val
{
    self.dictionary[@"recommendedAction"] = val;
}

@end
