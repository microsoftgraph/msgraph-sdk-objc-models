// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDisplayNameLocalization()
{
    NSString* _displayName;
    NSString* _languageTag;
}
@end

@implementation MSGraphDisplayNameLocalization

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
