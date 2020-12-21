// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLocaleInfo()
{
    NSString* _displayName;
    NSString* _locale;
}
@end

@implementation MSGraphLocaleInfo

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

- (NSString*) locale
{
    if([[NSNull null] isEqual:self.dictionary[@"locale"]])
    {
        return nil;
    }   
    return self.dictionary[@"locale"];
}

- (void) setLocale: (NSString*) val
{
    self.dictionary[@"locale"] = val;
}

@end
