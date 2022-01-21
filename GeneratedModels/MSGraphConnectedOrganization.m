// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConnectedOrganization()
{
    NSDate* _createdDateTime;
    NSString* _connectedOrganizationDescription;
    NSString* _displayName;
    NSArray* _identitySources;
    NSDate* _modifiedDateTime;
    MSGraphConnectedOrganizationState* _state;
    NSArray* _externalSponsors;
    NSArray* _internalSponsors;
}
@end

@implementation MSGraphConnectedOrganization

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.connectedOrganization";
    }
    return self;
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

- (NSString*) connectedOrganizationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setConnectedOrganizationDescription: (NSString*) val
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

- (NSArray*) identitySources
{
    if(!_identitySources){
        
    NSMutableArray *identitySourcesResult = [NSMutableArray array];
    NSArray *identitySources = self.dictionary[@"identitySources"];

    if ([identitySources isKindOfClass:[NSArray class]]){
        for (id tempIdentitySource in identitySources){
            [identitySourcesResult addObject:tempIdentitySource];
        }
    }

    _identitySources = identitySourcesResult;
        
    }
    return _identitySources;
}

- (void) setIdentitySources: (NSArray*) val
{
    _identitySources = val;
    self.dictionary[@"identitySources"] = val;
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

- (MSGraphConnectedOrganizationState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphConnectedOrganizationState];
    }
    return _state;
}

- (void) setState: (MSGraphConnectedOrganizationState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (NSArray*) externalSponsors
{
    if(!_externalSponsors){
        
    NSMutableArray *externalSponsorsResult = [NSMutableArray array];
    NSArray *externalSponsors = self.dictionary[@"externalSponsors"];

    if ([externalSponsors isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in externalSponsors){
            [externalSponsorsResult addObject:tempDirectoryObject];
        }
    }

    _externalSponsors = externalSponsorsResult;
        
    }
    return _externalSponsors;
}

- (void) setExternalSponsors: (NSArray*) val
{
    _externalSponsors = val;
    self.dictionary[@"externalSponsors"] = val;
}

- (NSArray*) internalSponsors
{
    if(!_internalSponsors){
        
    NSMutableArray *internalSponsorsResult = [NSMutableArray array];
    NSArray *internalSponsors = self.dictionary[@"internalSponsors"];

    if ([internalSponsors isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in internalSponsors){
            [internalSponsorsResult addObject:tempDirectoryObject];
        }
    }

    _internalSponsors = internalSponsorsResult;
        
    }
    return _internalSponsors;
}

- (void) setInternalSponsors: (NSArray*) val
{
    _internalSponsors = val;
    self.dictionary[@"internalSponsors"] = val;
}


@end
