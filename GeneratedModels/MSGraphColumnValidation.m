// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphColumnValidation()
{
    NSString* _defaultLanguage;
    NSArray* _descriptions;
    NSString* _formula;
}
@end

@implementation MSGraphColumnValidation

- (NSString*) defaultLanguage
{
    if([[NSNull null] isEqual:self.dictionary[@"defaultLanguage"]])
    {
        return nil;
    }   
    return self.dictionary[@"defaultLanguage"];
}

- (void) setDefaultLanguage: (NSString*) val
{
    self.dictionary[@"defaultLanguage"] = val;
}

- (NSArray*) descriptions
{
    if(!_descriptions){
        
    NSMutableArray *descriptionsResult = [NSMutableArray array];
    NSArray *descriptions = self.dictionary[@"descriptions"];

    if ([descriptions isKindOfClass:[NSArray class]]){
        for (id tempDisplayNameLocalization in descriptions){
            [descriptionsResult addObject:tempDisplayNameLocalization];
        }
    }

    _descriptions = descriptionsResult;
        
    }
    return _descriptions;
}

- (void) setDescriptions: (NSArray*) val
{
    _descriptions = val;
    self.dictionary[@"descriptions"] = val;
}

- (NSString*) formula
{
    if([[NSNull null] isEqual:self.dictionary[@"formula"]])
    {
        return nil;
    }   
    return self.dictionary[@"formula"];
}

- (void) setFormula: (NSString*) val
{
    self.dictionary[@"formula"] = val;
}

@end
