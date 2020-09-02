// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOptionalClaim()
{
    NSArray* _additionalProperties;
    BOOL _essential;
    NSString* _name;
    NSString* _source;
}
@end

@implementation MSGraphOptionalClaim

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

@end
