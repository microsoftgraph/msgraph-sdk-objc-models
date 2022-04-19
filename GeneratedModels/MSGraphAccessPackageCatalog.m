// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageCatalog()
{
    MSGraphAccessPackageCatalogType* _catalogType;
    NSDate* _createdDateTime;
    NSString* _accessPackageCatalogDescription;
    NSString* _displayName;
    BOOL _isExternallyVisible;
    NSDate* _modifiedDateTime;
    MSGraphAccessPackageCatalogState* _state;
    NSArray* _accessPackages;
}
@end

@implementation MSGraphAccessPackageCatalog

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessPackageCatalog";
    }
    return self;
}
- (MSGraphAccessPackageCatalogType*) catalogType
{
    if(!_catalogType){
        _catalogType = [self.dictionary[@"catalogType"] toMSGraphAccessPackageCatalogType];
    }
    return _catalogType;
}

- (void) setCatalogType: (MSGraphAccessPackageCatalogType*) val
{
    _catalogType = val;
    self.dictionary[@"catalogType"] = val;
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

- (NSString*) accessPackageCatalogDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAccessPackageCatalogDescription: (NSString*) val
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

- (BOOL) isExternallyVisible
{
    _isExternallyVisible = [self.dictionary[@"isExternallyVisible"] boolValue];
    return _isExternallyVisible;
}

- (void) setIsExternallyVisible: (BOOL) val
{
    _isExternallyVisible = val;
    self.dictionary[@"isExternallyVisible"] = @(val);
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

- (MSGraphAccessPackageCatalogState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphAccessPackageCatalogState];
    }
    return _state;
}

- (void) setState: (MSGraphAccessPackageCatalogState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (NSArray*) accessPackages
{
    if(!_accessPackages){
        
    NSMutableArray *accessPackagesResult = [NSMutableArray array];
    NSArray *accessPackages = self.dictionary[@"accessPackages"];

    if ([accessPackages isKindOfClass:[NSArray class]]){
        for (id tempAccessPackage in accessPackages){
            [accessPackagesResult addObject:tempAccessPackage];
        }
    }

    _accessPackages = accessPackagesResult;
        
    }
    return _accessPackages;
}

- (void) setAccessPackages: (NSArray*) val
{
    _accessPackages = val;
    self.dictionary[@"accessPackages"] = val;
}


@end
