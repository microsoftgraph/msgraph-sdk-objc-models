// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAudioConferencing()
{
    NSString* _conferenceId;
    NSString* _dialinUrl;
    NSString* _tollFreeNumber;
    NSArray* _tollFreeNumbers;
    NSString* _tollNumber;
    NSArray* _tollNumbers;
}
@end

@implementation MSGraphAudioConferencing

- (NSString*) conferenceId
{
    if([[NSNull null] isEqual:self.dictionary[@"conferenceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"conferenceId"];
}

- (void) setConferenceId: (NSString*) val
{
    self.dictionary[@"conferenceId"] = val;
}

- (NSString*) dialinUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"dialinUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"dialinUrl"];
}

- (void) setDialinUrl: (NSString*) val
{
    self.dictionary[@"dialinUrl"] = val;
}

- (NSString*) tollFreeNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"tollFreeNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"tollFreeNumber"];
}

- (void) setTollFreeNumber: (NSString*) val
{
    self.dictionary[@"tollFreeNumber"] = val;
}

- (NSArray*) tollFreeNumbers
{
    if([[NSNull null] isEqual:self.dictionary[@"tollFreeNumbers"]])
    {
        return nil;
    }   
    return self.dictionary[@"tollFreeNumbers"];
}

- (void) setTollFreeNumbers: (NSArray*) val
{
    self.dictionary[@"tollFreeNumbers"] = val;
}

- (NSString*) tollNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"tollNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"tollNumber"];
}

- (void) setTollNumber: (NSString*) val
{
    self.dictionary[@"tollNumber"] = val;
}

- (NSArray*) tollNumbers
{
    if([[NSNull null] isEqual:self.dictionary[@"tollNumbers"]])
    {
        return nil;
    }   
    return self.dictionary[@"tollNumbers"];
}

- (void) setTollNumbers: (NSArray*) val
{
    self.dictionary[@"tollNumbers"] = val;
}

@end
