// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignmentPolicy()
{
    MSGraphAllowedTargetScope* _allowedTargetScope;
    NSDate* _createdDateTime;
    NSString* _accessPackageAssignmentPolicyDescription;
    NSString* _displayName;
    MSGraphExpirationPattern* _expiration;
    NSDate* _modifiedDateTime;
    MSGraphAccessPackageAssignmentApprovalSettings* _requestApprovalSettings;
    MSGraphAccessPackageAssignmentRequestorSettings* _requestorSettings;
    MSGraphAccessPackageAssignmentReviewSettings* _reviewSettings;
    NSArray* _specificAllowedTargets;
    MSGraphAccessPackage* _accessPackage;
    MSGraphAccessPackageCatalog* _catalog;
}
@end

@implementation MSGraphAccessPackageAssignmentPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessPackageAssignmentPolicy";
    }
    return self;
}
- (MSGraphAllowedTargetScope*) allowedTargetScope
{
    if(!_allowedTargetScope){
        _allowedTargetScope = [self.dictionary[@"allowedTargetScope"] toMSGraphAllowedTargetScope];
    }
    return _allowedTargetScope;
}

- (void) setAllowedTargetScope: (MSGraphAllowedTargetScope*) val
{
    _allowedTargetScope = val;
    self.dictionary[@"allowedTargetScope"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) accessPackageAssignmentPolicyDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAccessPackageAssignmentPolicyDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphExpirationPattern*) expiration
{
    if(!_expiration){
        _expiration = [[MSGraphExpirationPattern alloc] initWithDictionary: self.dictionary[@"expiration"]];
    }
    return _expiration;
}

- (void) setExpiration: (MSGraphExpirationPattern*) val
{
    _expiration = val;
    self.dictionary[@"expiration"] = val;
}

- (NSDate*) modifiedDateTime
{
    if(!_modifiedDateTime){
        _modifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"modifiedDateTime"]];
    }
    return _modifiedDateTime;
}

- (void) setModifiedDateTime: (NSDate*) val
{
    _modifiedDateTime = val;
    self.dictionary[@"modifiedDateTime"] = [val ms_toString];
}

- (MSGraphAccessPackageAssignmentApprovalSettings*) requestApprovalSettings
{
    if(!_requestApprovalSettings){
        _requestApprovalSettings = [[MSGraphAccessPackageAssignmentApprovalSettings alloc] initWithDictionary: self.dictionary[@"requestApprovalSettings"]];
    }
    return _requestApprovalSettings;
}

- (void) setRequestApprovalSettings: (MSGraphAccessPackageAssignmentApprovalSettings*) val
{
    _requestApprovalSettings = val;
    self.dictionary[@"requestApprovalSettings"] = val;
}

- (MSGraphAccessPackageAssignmentRequestorSettings*) requestorSettings
{
    if(!_requestorSettings){
        _requestorSettings = [[MSGraphAccessPackageAssignmentRequestorSettings alloc] initWithDictionary: self.dictionary[@"requestorSettings"]];
    }
    return _requestorSettings;
}

- (void) setRequestorSettings: (MSGraphAccessPackageAssignmentRequestorSettings*) val
{
    _requestorSettings = val;
    self.dictionary[@"requestorSettings"] = val;
}

- (MSGraphAccessPackageAssignmentReviewSettings*) reviewSettings
{
    if(!_reviewSettings){
        _reviewSettings = [[MSGraphAccessPackageAssignmentReviewSettings alloc] initWithDictionary: self.dictionary[@"reviewSettings"]];
    }
    return _reviewSettings;
}

- (void) setReviewSettings: (MSGraphAccessPackageAssignmentReviewSettings*) val
{
    _reviewSettings = val;
    self.dictionary[@"reviewSettings"] = val;
}

- (NSArray*) specificAllowedTargets
{
    if(!_specificAllowedTargets){
        
    NSMutableArray *specificAllowedTargetsResult = [NSMutableArray array];
    NSArray *specificAllowedTargets = self.dictionary[@"specificAllowedTargets"];

    if ([specificAllowedTargets isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in specificAllowedTargets){
            [specificAllowedTargetsResult addObject:tempSubjectSet];
        }
    }

    _specificAllowedTargets = specificAllowedTargetsResult;
        
    }
    return _specificAllowedTargets;
}

- (void) setSpecificAllowedTargets: (NSArray*) val
{
    _specificAllowedTargets = val;
    self.dictionary[@"specificAllowedTargets"] = val;
}

- (MSGraphAccessPackage*) accessPackage
{
    if(!_accessPackage){
        _accessPackage = [[MSGraphAccessPackage alloc] initWithDictionary: self.dictionary[@"accessPackage"]];
    }
    return _accessPackage;
}

- (void) setAccessPackage: (MSGraphAccessPackage*) val
{
    _accessPackage = val;
    self.dictionary[@"accessPackage"] = val;
}

- (MSGraphAccessPackageCatalog*) catalog
{
    if(!_catalog){
        _catalog = [[MSGraphAccessPackageCatalog alloc] initWithDictionary: self.dictionary[@"catalog"]];
    }
    return _catalog;
}

- (void) setCatalog: (MSGraphAccessPackageCatalog*) val
{
    _catalog = val;
    self.dictionary[@"catalog"] = val;
}


@end
