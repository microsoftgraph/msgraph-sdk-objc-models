// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingCustomerInformation()
{
    NSString* _customerId;
    NSArray* _customQuestionAnswers;
    NSString* _emailAddress;
    MSGraphLocation* _location;
    NSString* _name;
    NSString* _notes;
    NSString* _phone;
    NSString* _timeZone;
}
@end

@implementation MSGraphBookingCustomerInformation

- (NSString*) customerId
{
    if([[NSNull null] isEqual:self.dictionary[@"customerId"]])
    {
        return nil;
    }   
    return self.dictionary[@"customerId"];
}

- (void) setCustomerId: (NSString*) val
{
    self.dictionary[@"customerId"] = val;
}

- (NSArray*) customQuestionAnswers
{
    if(!_customQuestionAnswers){
        
    NSMutableArray *customQuestionAnswersResult = [NSMutableArray array];
    NSArray *customQuestionAnswers = self.dictionary[@"customQuestionAnswers"];

    if ([customQuestionAnswers isKindOfClass:[NSArray class]]){
        for (id tempBookingQuestionAnswer in customQuestionAnswers){
            [customQuestionAnswersResult addObject:tempBookingQuestionAnswer];
        }
    }

    _customQuestionAnswers = customQuestionAnswersResult;
        
    }
    return _customQuestionAnswers;
}

- (void) setCustomQuestionAnswers: (NSArray*) val
{
    _customQuestionAnswers = val;
    self.dictionary[@"customQuestionAnswers"] = val;
}

- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (MSGraphLocation*) location
{
    if(!_location){
        _location = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphLocation*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) notes
{
    if([[NSNull null] isEqual:self.dictionary[@"notes"]])
    {
        return nil;
    }   
    return self.dictionary[@"notes"];
}

- (void) setNotes: (NSString*) val
{
    self.dictionary[@"notes"] = val;
}

- (NSString*) phone
{
    if([[NSNull null] isEqual:self.dictionary[@"phone"]])
    {
        return nil;
    }   
    return self.dictionary[@"phone"];
}

- (void) setPhone: (NSString*) val
{
    self.dictionary[@"phone"] = val;
}

- (NSString*) timeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"timeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeZone"];
}

- (void) setTimeZone: (NSString*) val
{
    self.dictionary[@"timeZone"] = val;
}

@end
