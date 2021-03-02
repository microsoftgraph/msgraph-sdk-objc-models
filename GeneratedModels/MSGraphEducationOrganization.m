// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationOrganization()
{
    NSString* _educationOrganizationDescription;
    NSString* _displayName;
    MSGraphEducationExternalSource* _externalSource;
    NSString* _externalSourceDetail;
}
@end

@implementation MSGraphEducationOrganization

- (NSString*) educationOrganizationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setEducationOrganizationDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphEducationExternalSource*) externalSource
{
    if(!_externalSource){
        _externalSource = [self.dictionary[@"externalSource"] toMSGraphEducationExternalSource];
    }
    return _externalSource;
}

- (void) setExternalSource: (MSGraphEducationExternalSource*) val
{
    _externalSource = val;
    self.dictionary[@"externalSource"] = val;
}

- (NSString*) externalSourceDetail
{
    if([[NSNull null] isEqual:self.dictionary[@"externalSourceDetail"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalSourceDetail"];
}

- (void) setExternalSourceDetail: (NSString*) val
{
    self.dictionary[@"externalSourceDetail"] = val;
}


@end
