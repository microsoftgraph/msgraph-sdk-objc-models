// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsProperty()
{
    NSArray* _aliases;
    BOOL _isQueryable;
    BOOL _isRefinable;
    BOOL _isRetrievable;
    BOOL _isSearchable;
    NSArray* _labels;
    NSString* _name;
    MSGraphExternalConnectorsPropertyType* _type;
}
@end

@implementation MSGraphExternalConnectorsProperty

- (NSArray*) aliases
{
    if([[NSNull null] isEqual:self.dictionary[@"aliases"]])
    {
        return nil;
    }   
    return self.dictionary[@"aliases"];
}

- (void) setAliases: (NSArray*) val
{
    self.dictionary[@"aliases"] = val;
}

- (BOOL) isQueryable
{
    _isQueryable = [self.dictionary[@"isQueryable"] boolValue];
    return _isQueryable;
}

- (void) setIsQueryable: (BOOL) val
{
    _isQueryable = val;
    self.dictionary[@"isQueryable"] = @(val);
}

- (BOOL) isRefinable
{
    _isRefinable = [self.dictionary[@"isRefinable"] boolValue];
    return _isRefinable;
}

- (void) setIsRefinable: (BOOL) val
{
    _isRefinable = val;
    self.dictionary[@"isRefinable"] = @(val);
}

- (BOOL) isRetrievable
{
    _isRetrievable = [self.dictionary[@"isRetrievable"] boolValue];
    return _isRetrievable;
}

- (void) setIsRetrievable: (BOOL) val
{
    _isRetrievable = val;
    self.dictionary[@"isRetrievable"] = @(val);
}

- (BOOL) isSearchable
{
    _isSearchable = [self.dictionary[@"isSearchable"] boolValue];
    return _isSearchable;
}

- (void) setIsSearchable: (BOOL) val
{
    _isSearchable = val;
    self.dictionary[@"isSearchable"] = @(val);
}

- (NSArray*) labels
{
    if(!_labels){
        
    NSMutableArray *labelsResult = [NSMutableArray array];
    NSArray *labels = self.dictionary[@"labels"];

    if ([labels isKindOfClass:[NSArray class]]){
        for (id tempLabel in labels){
            [labelsResult addObject:tempLabel];
        }
    }

    _labels = labelsResult;
        
    }
    return _labels;
}

- (void) setLabels: (NSArray*) val
{
    _labels = val;
    self.dictionary[@"labels"] = val;
}

- (NSString*) name
{
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphExternalConnectorsPropertyType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphExternalConnectorsPropertyType];
    }
    return _type;
}

- (void) setType: (MSGraphExternalConnectorsPropertyType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

@end
