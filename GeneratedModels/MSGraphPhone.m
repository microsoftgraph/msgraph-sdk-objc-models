// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPhone()
{
    NSString* _language;
    NSString* _number;
    NSString* _region;
    MSGraphPhoneType* _type;
}
@end

@implementation MSGraphPhone

- (NSString*) language
{
    if([[NSNull null] isEqual:self.dictionary[@"language"]])
    {
        return nil;
    }   
    return self.dictionary[@"language"];
}

- (void) setLanguage: (NSString*) val
{
    self.dictionary[@"language"] = val;
}

- (NSString*) number
{
    if([[NSNull null] isEqual:self.dictionary[@"number"]])
    {
        return nil;
    }   
    return self.dictionary[@"number"];
}

- (void) setNumber: (NSString*) val
{
    self.dictionary[@"number"] = val;
}

- (NSString*) region
{
    if([[NSNull null] isEqual:self.dictionary[@"region"]])
    {
        return nil;
    }   
    return self.dictionary[@"region"];
}

- (void) setRegion: (NSString*) val
{
    self.dictionary[@"region"] = val;
}

- (MSGraphPhoneType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphPhoneType];
    }
    return _type;
}

- (void) setType: (MSGraphPhoneType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

@end
