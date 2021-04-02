// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisioningStep()
{
    NSString* _provisioningStepDescription;
    MSGraphDetailsInfo* _details;
    NSString* _name;
    MSGraphProvisioningStepType* _provisioningStepType;
    MSGraphProvisioningResult* _status;
}
@end

@implementation MSGraphProvisioningStep

- (NSString*) provisioningStepDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setProvisioningStepDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphDetailsInfo*) details
{
    if(!_details){
        _details = [[MSGraphDetailsInfo alloc] initWithDictionary: self.dictionary[@"details"]];
    }
    return _details;
}

- (void) setDetails: (MSGraphDetailsInfo*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphProvisioningStepType*) provisioningStepType
{
    if(!_provisioningStepType){
        _provisioningStepType = [self.dictionary[@"provisioningStepType"] toMSGraphProvisioningStepType];
    }
    return _provisioningStepType;
}

- (void) setProvisioningStepType: (MSGraphProvisioningStepType*) val
{
    _provisioningStepType = val;
    self.dictionary[@"provisioningStepType"] = val;
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
