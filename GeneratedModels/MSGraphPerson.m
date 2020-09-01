// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPerson()
{
    NSString* _birthday;
    NSString* _companyName;
    NSString* _department;
    NSString* _displayName;
    NSString* _givenName;
    NSString* _imAddress;
    BOOL _isFavorite;
    NSString* _jobTitle;
    NSString* _officeLocation;
    NSString* _personNotes;
    MSGraphPersonType* _personType;
    NSArray* _phones;
    NSArray* _postalAddresses;
    NSString* _profession;
    NSArray* _scoredEmailAddresses;
    NSString* _surname;
    NSString* _userPrincipalName;
    NSArray* _websites;
    NSString* _yomiCompany;
}
@end

@implementation MSGraphPerson

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.person";
    }
    return self;
}
- (NSString*) birthday
{
    if([[NSNull null] isEqual:self.dictionary[@"birthday"]])
    {
        return nil;
    }   
    return self.dictionary[@"birthday"];
}

- (void) setBirthday: (NSString*) val
{
    self.dictionary[@"birthday"] = val;
}

- (NSString*) companyName
{
    if([[NSNull null] isEqual:self.dictionary[@"companyName"]])
    {
        return nil;
    }   
    return self.dictionary[@"companyName"];
}

- (void) setCompanyName: (NSString*) val
{
    self.dictionary[@"companyName"] = val;
}

- (NSString*) department
{
    if([[NSNull null] isEqual:self.dictionary[@"department"]])
    {
        return nil;
    }   
    return self.dictionary[@"department"];
}

- (void) setDepartment: (NSString*) val
{
    self.dictionary[@"department"] = val;
}

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

- (NSString*) givenName
{
    if([[NSNull null] isEqual:self.dictionary[@"givenName"]])
    {
        return nil;
    }   
    return self.dictionary[@"givenName"];
}

- (void) setGivenName: (NSString*) val
{
    self.dictionary[@"givenName"] = val;
}

- (NSString*) imAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"imAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"imAddress"];
}

- (void) setImAddress: (NSString*) val
{
    self.dictionary[@"imAddress"] = val;
}

- (BOOL) isFavorite
{
    _isFavorite = [self.dictionary[@"isFavorite"] boolValue];
    return _isFavorite;
}

- (void) setIsFavorite: (BOOL) val
{
    _isFavorite = val;
    self.dictionary[@"isFavorite"] = @(val);
}

- (NSString*) jobTitle
{
    if([[NSNull null] isEqual:self.dictionary[@"jobTitle"]])
    {
        return nil;
    }   
    return self.dictionary[@"jobTitle"];
}

- (void) setJobTitle: (NSString*) val
{
    self.dictionary[@"jobTitle"] = val;
}

- (NSString*) officeLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"officeLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"officeLocation"];
}

- (void) setOfficeLocation: (NSString*) val
{
    self.dictionary[@"officeLocation"] = val;
}

- (NSString*) personNotes
{
    if([[NSNull null] isEqual:self.dictionary[@"personNotes"]])
    {
        return nil;
    }   
    return self.dictionary[@"personNotes"];
}

- (void) setPersonNotes: (NSString*) val
{
    self.dictionary[@"personNotes"] = val;
}

- (MSGraphPersonType*) personType
{
    if(!_personType){
        _personType = [[MSGraphPersonType alloc] initWithDictionary: self.dictionary[@"personType"]];
    }
    return _personType;
}

- (void) setPersonType: (MSGraphPersonType*) val
{
    _personType = val;
    self.dictionary[@"personType"] = val;
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

- (NSArray*) postalAddresses
{
    if(!_postalAddresses){
        
    NSMutableArray *postalAddressesResult = [NSMutableArray array];
    NSArray *postalAddresses = self.dictionary[@"postalAddresses"];

    if ([postalAddresses isKindOfClass:[NSArray class]]){
        for (id tempLocation in postalAddresses){
            [postalAddressesResult addObject:tempLocation];
        }
    }

    _postalAddresses = postalAddressesResult;
        
    }
    return _postalAddresses;
}

- (void) setPostalAddresses: (NSArray*) val
{
    _postalAddresses = val;
    self.dictionary[@"postalAddresses"] = val;
}

- (NSString*) profession
{
    if([[NSNull null] isEqual:self.dictionary[@"profession"]])
    {
        return nil;
    }   
    return self.dictionary[@"profession"];
}

- (void) setProfession: (NSString*) val
{
    self.dictionary[@"profession"] = val;
}

- (NSArray*) scoredEmailAddresses
{
    if(!_scoredEmailAddresses){
        
    NSMutableArray *scoredEmailAddressesResult = [NSMutableArray array];
    NSArray *scoredEmailAddresses = self.dictionary[@"scoredEmailAddresses"];

    if ([scoredEmailAddresses isKindOfClass:[NSArray class]]){
        for (id tempScoredEmailAddress in scoredEmailAddresses){
            [scoredEmailAddressesResult addObject:tempScoredEmailAddress];
        }
    }

    _scoredEmailAddresses = scoredEmailAddressesResult;
        
    }
    return _scoredEmailAddresses;
}

- (void) setScoredEmailAddresses: (NSArray*) val
{
    _scoredEmailAddresses = val;
    self.dictionary[@"scoredEmailAddresses"] = val;
}

- (NSString*) surname
{
    if([[NSNull null] isEqual:self.dictionary[@"surname"]])
    {
        return nil;
    }   
    return self.dictionary[@"surname"];
}

- (void) setSurname: (NSString*) val
{
    self.dictionary[@"surname"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (NSArray*) websites
{
    if(!_websites){
        
    NSMutableArray *websitesResult = [NSMutableArray array];
    NSArray *websites = self.dictionary[@"websites"];

    if ([websites isKindOfClass:[NSArray class]]){
        for (id tempWebsite in websites){
            [websitesResult addObject:tempWebsite];
        }
    }

    _websites = websitesResult;
        
    }
    return _websites;
}

- (void) setWebsites: (NSArray*) val
{
    _websites = val;
    self.dictionary[@"websites"] = val;
}

- (NSString*) yomiCompany
{
    if([[NSNull null] isEqual:self.dictionary[@"yomiCompany"]])
    {
        return nil;
    }   
    return self.dictionary[@"yomiCompany"];
}

- (void) setYomiCompany: (NSString*) val
{
    self.dictionary[@"yomiCompany"] = val;
}


@end
