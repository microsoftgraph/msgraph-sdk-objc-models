// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackage()
{
    NSDate* _createdDateTime;
    NSString* _accessPackageDescription;
    NSString* _displayName;
    BOOL _isHidden;
    NSDate* _modifiedDateTime;
    MSGraphAccessPackageCatalog* _catalog;
}
@end

@implementation MSGraphAccessPackage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessPackage";
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

- (NSString*) accessPackageDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAccessPackageDescription: (NSString*) val
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

- (BOOL) isHidden
{
    _isHidden = [self.dictionary[@"isHidden"] boolValue];
    return _isHidden;
}

- (void) setIsHidden: (BOOL) val
{
    _isHidden = val;
    self.dictionary[@"isHidden"] = @(val);
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
