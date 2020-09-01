// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSignInStatus()
{
    NSString* _additionalDetails;
    int32_t _errorCode;
    NSString* _failureReason;
}
@end

@implementation MSGraphSignInStatus

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

- (int32_t) errorCode
{
    _errorCode = [self.dictionary[@"errorCode"] intValue];
    return _errorCode;
}

- (void) setErrorCode: (int32_t) val
{
    _errorCode = val;
    self.dictionary[@"errorCode"] = @(val);
}

- (NSString*) failureReason
{
    if([[NSNull null] isEqual:self.dictionary[@"failureReason"]])
    {
        return nil;
    }   
    return self.dictionary[@"failureReason"];
}

- (void) setFailureReason: (NSString*) val
{
    self.dictionary[@"failureReason"] = val;
}

@end
