// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnlineMeetingInfo()
{
    NSString* _joinUrl;
    NSString* _conferenceId;
    NSString* _tollNumber;
    NSArray* _tollFreeNumbers;
    NSString* _quickDial;
    NSArray* _phones;
}
@end

@implementation MSGraphOnlineMeetingInfo

- (NSString*) joinUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"joinUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"joinUrl"];
}

- (void) setJoinUrl: (NSString*) val
{
    self.dictionary[@"joinUrl"] = val;
}

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

- (NSString*) quickDial
{
    if([[NSNull null] isEqual:self.dictionary[@"quickDial"]])
    {
        return nil;
    }   
    return self.dictionary[@"quickDial"];
}

- (void) setQuickDial: (NSString*) val
{
    self.dictionary[@"quickDial"] = val;
}

- (NSArray*) phones
{
    if(!_phones){
        
    NSMutableArray *phonesResult = [NSMutableArray array];
    NSArray *phones = self.dictionary[@"phones"];

    if ([phones isKindOfClass:[NSArray class]]){
        for (id tempPhone in phones){
            [phonesResult addObject:tempPhone];
        }
    }

    _phones = phonesResult;
        
    }
    return _phones;
}

- (void) setPhones: (NSArray*) val
{
    _phones = val;
    self.dictionary[@"phones"] = val;
}

@end
