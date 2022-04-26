// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermStoreLocalizedDescription()
{
    NSString* _localizedDescriptionDescription;
    NSString* _languageTag;
}
@end

@implementation MSGraphTermStoreLocalizedDescription

- (NSString*) localizedDescriptionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setLocalizedDescriptionDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) languageTag
{
    if([[NSNull null] isEqual:self.dictionary[@"languageTag"]])
    {
        return nil;
    }   
    return self.dictionary[@"languageTag"];
}

- (void) setLanguageTag: (NSString*) val
{
    self.dictionary[@"languageTag"] = val;
}

@end
