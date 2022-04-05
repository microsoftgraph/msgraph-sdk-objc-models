// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchAlteration()
{
    NSString* _alteredHighlightedQueryString;
    NSString* _alteredQueryString;
    NSArray* _alteredQueryTokens;
}
@end

@implementation MSGraphSearchAlteration

- (NSString*) alteredHighlightedQueryString
{
    if([[NSNull null] isEqual:self.dictionary[@"alteredHighlightedQueryString"]])
    {
        return nil;
    }   
    return self.dictionary[@"alteredHighlightedQueryString"];
}

- (void) setAlteredHighlightedQueryString: (NSString*) val
{
    self.dictionary[@"alteredHighlightedQueryString"] = val;
}

- (NSString*) alteredQueryString
{
    if([[NSNull null] isEqual:self.dictionary[@"alteredQueryString"]])
    {
        return nil;
    }   
    return self.dictionary[@"alteredQueryString"];
}

- (void) setAlteredQueryString: (NSString*) val
{
    self.dictionary[@"alteredQueryString"] = val;
}

- (NSArray*) alteredQueryTokens
{
    if(!_alteredQueryTokens){
        
    NSMutableArray *alteredQueryTokensResult = [NSMutableArray array];
    NSArray *alteredQueryTokens = self.dictionary[@"alteredQueryTokens"];

    if ([alteredQueryTokens isKindOfClass:[NSArray class]]){
        for (id tempAlteredQueryToken in alteredQueryTokens){
            [alteredQueryTokensResult addObject:tempAlteredQueryToken];
        }
    }

    _alteredQueryTokens = alteredQueryTokensResult;
        
    }
    return _alteredQueryTokens;
}

- (void) setAlteredQueryTokens: (NSArray*) val
{
    _alteredQueryTokens = val;
    self.dictionary[@"alteredQueryTokens"] = val;
}

@end
