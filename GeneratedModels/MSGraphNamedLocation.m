// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphNamedLocation()
{
    NSString* _displayName;
    NSDate* _createdDateTime;
    NSDate* _modifiedDateTime;
}
@end

@implementation MSGraphNamedLocation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.namedLocation";
    }
    return self;
}
- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
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


@end
