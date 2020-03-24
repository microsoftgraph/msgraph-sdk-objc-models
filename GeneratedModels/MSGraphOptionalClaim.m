// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOptionalClaim()
{
    NSString* _name;
    NSString* _source;
    BOOL _essential;
    NSArray* _additionalProperties;
}
@end

@implementation MSGraphOptionalClaim

- (NSString*) name
{
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) source
{
    if([[NSNull null] isEqual:self.dictionary[@"source"]])
    {
        return nil;
    }   
    return self.dictionary[@"source"];
}

- (void) setSource: (NSString*) val
{
    self.dictionary[@"source"] = val;
}

- (BOOL) essential
{
    _essential = [self.dictionary[@"essential"] boolValue];
    return _essential;
}

- (void) setEssential: (BOOL) val
{
    _essential = val;
    self.dictionary[@"essential"] = @(val);
}

- (NSArray*) additionalProperties
{
    if([[NSNull null] isEqual:self.dictionary[@"additionalProperties"]])
    {
        return nil;
    }   
    return self.dictionary[@"additionalProperties"];
}

- (void) setAdditionalProperties: (NSArray*) val
{
    self.dictionary[@"additionalProperties"] = val;
}

@end
