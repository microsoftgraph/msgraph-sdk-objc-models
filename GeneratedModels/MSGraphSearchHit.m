// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchHit()
{
    NSString* _contentSource;
    NSString* _hitId;
    int32_t _rank;
    NSString* _resultTemplateId;
    NSString* _summary;
    MSGraphEntity* _resource;
}
@end

@implementation MSGraphSearchHit

- (NSString*) contentSource
{
    if([[NSNull null] isEqual:self.dictionary[@"contentSource"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentSource"];
}

- (void) setContentSource: (NSString*) val
{
    self.dictionary[@"contentSource"] = val;
}

- (NSString*) hitId
{
    if([[NSNull null] isEqual:self.dictionary[@"hitId"]])
    {
        return nil;
    }   
    return self.dictionary[@"hitId"];
}

- (void) setHitId: (NSString*) val
{
    self.dictionary[@"hitId"] = val;
}

- (int32_t) rank
{
    _rank = [self.dictionary[@"rank"] intValue];
    return _rank;
}

- (void) setRank: (int32_t) val
{
    _rank = val;
    self.dictionary[@"rank"] = @(val);
}

- (NSString*) resultTemplateId
{
    if([[NSNull null] isEqual:self.dictionary[@"resultTemplateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resultTemplateId"];
}

- (void) setResultTemplateId: (NSString*) val
{
    self.dictionary[@"resultTemplateId"] = val;
}

- (NSString*) summary
{
    if([[NSNull null] isEqual:self.dictionary[@"summary"]])
    {
        return nil;
    }   
    return self.dictionary[@"summary"];
}

- (void) setSummary: (NSString*) val
{
    self.dictionary[@"summary"] = val;
}

- (MSGraphEntity*) resource
{
    if(!_resource){
        _resource = [[MSGraphEntity alloc] initWithDictionary: self.dictionary[@"resource"]];
    }
    return _resource;
}

- (void) setResource: (MSGraphEntity*) val
{
    _resource = val;
    self.dictionary[@"resource"] = val;
}

@end
