// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphColumnTypes.h"

@interface MSGraphColumnTypes () {
    MSGraphColumnTypesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphColumnTypesValue enumValue;
@end

@implementation MSGraphColumnTypes

+ (MSGraphColumnTypes*) note {
    static MSGraphColumnTypes *_note;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _note = [[MSGraphColumnTypes alloc] init];
        _note.enumValue = MSGraphColumnTypesNote;
    });
    return _note;
}
+ (MSGraphColumnTypes*) text {
    static MSGraphColumnTypes *_text;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _text = [[MSGraphColumnTypes alloc] init];
        _text.enumValue = MSGraphColumnTypesText;
    });
    return _text;
}
+ (MSGraphColumnTypes*) choice {
    static MSGraphColumnTypes *_choice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _choice = [[MSGraphColumnTypes alloc] init];
        _choice.enumValue = MSGraphColumnTypesChoice;
    });
    return _choice;
}
+ (MSGraphColumnTypes*) multichoice {
    static MSGraphColumnTypes *_multichoice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _multichoice = [[MSGraphColumnTypes alloc] init];
        _multichoice.enumValue = MSGraphColumnTypesMultichoice;
    });
    return _multichoice;
}
+ (MSGraphColumnTypes*) number {
    static MSGraphColumnTypes *_number;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _number = [[MSGraphColumnTypes alloc] init];
        _number.enumValue = MSGraphColumnTypesNumber;
    });
    return _number;
}
+ (MSGraphColumnTypes*) currency {
    static MSGraphColumnTypes *_currency;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _currency = [[MSGraphColumnTypes alloc] init];
        _currency.enumValue = MSGraphColumnTypesCurrency;
    });
    return _currency;
}
+ (MSGraphColumnTypes*) dateTime {
    static MSGraphColumnTypes *_dateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dateTime = [[MSGraphColumnTypes alloc] init];
        _dateTime.enumValue = MSGraphColumnTypesDateTime;
    });
    return _dateTime;
}
+ (MSGraphColumnTypes*) lookup {
    static MSGraphColumnTypes *_lookup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lookup = [[MSGraphColumnTypes alloc] init];
        _lookup.enumValue = MSGraphColumnTypesLookup;
    });
    return _lookup;
}
+ (MSGraphColumnTypes*) boolean {
    static MSGraphColumnTypes *_boolean;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _boolean = [[MSGraphColumnTypes alloc] init];
        _boolean.enumValue = MSGraphColumnTypesBoolean;
    });
    return _boolean;
}
+ (MSGraphColumnTypes*) user {
    static MSGraphColumnTypes *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphColumnTypes alloc] init];
        _user.enumValue = MSGraphColumnTypesUser;
    });
    return _user;
}
+ (MSGraphColumnTypes*) url {
    static MSGraphColumnTypes *_url;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _url = [[MSGraphColumnTypes alloc] init];
        _url.enumValue = MSGraphColumnTypesUrl;
    });
    return _url;
}
+ (MSGraphColumnTypes*) calculated {
    static MSGraphColumnTypes *_calculated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _calculated = [[MSGraphColumnTypes alloc] init];
        _calculated.enumValue = MSGraphColumnTypesCalculated;
    });
    return _calculated;
}
+ (MSGraphColumnTypes*) location {
    static MSGraphColumnTypes *_location;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _location = [[MSGraphColumnTypes alloc] init];
        _location.enumValue = MSGraphColumnTypesLocation;
    });
    return _location;
}
+ (MSGraphColumnTypes*) geolocation {
    static MSGraphColumnTypes *_geolocation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _geolocation = [[MSGraphColumnTypes alloc] init];
        _geolocation.enumValue = MSGraphColumnTypesGeolocation;
    });
    return _geolocation;
}
+ (MSGraphColumnTypes*) term {
    static MSGraphColumnTypes *_term;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _term = [[MSGraphColumnTypes alloc] init];
        _term.enumValue = MSGraphColumnTypesTerm;
    });
    return _term;
}
+ (MSGraphColumnTypes*) multiterm {
    static MSGraphColumnTypes *_multiterm;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _multiterm = [[MSGraphColumnTypes alloc] init];
        _multiterm.enumValue = MSGraphColumnTypesMultiterm;
    });
    return _multiterm;
}
+ (MSGraphColumnTypes*) thumbnail {
    static MSGraphColumnTypes *_thumbnail;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _thumbnail = [[MSGraphColumnTypes alloc] init];
        _thumbnail.enumValue = MSGraphColumnTypesThumbnail;
    });
    return _thumbnail;
}
+ (MSGraphColumnTypes*) approvalStatus {
    static MSGraphColumnTypes *_approvalStatus;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approvalStatus = [[MSGraphColumnTypes alloc] init];
        _approvalStatus.enumValue = MSGraphColumnTypesApprovalStatus;
    });
    return _approvalStatus;
}
+ (MSGraphColumnTypes*) unknownFutureValue {
    static MSGraphColumnTypes *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphColumnTypes alloc] init];
        _unknownFutureValue.enumValue = MSGraphColumnTypesUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphColumnTypes*) UnknownEnumValue {
    static MSGraphColumnTypes *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphColumnTypes alloc] init];
        _unknownValue.enumValue = MSGraphColumnTypesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphColumnTypes*) columnTypesWithEnumValue:(MSGraphColumnTypesValue)val {

    switch(val)
    {
        case MSGraphColumnTypesNote:
            return [MSGraphColumnTypes note];
        case MSGraphColumnTypesText:
            return [MSGraphColumnTypes text];
        case MSGraphColumnTypesChoice:
            return [MSGraphColumnTypes choice];
        case MSGraphColumnTypesMultichoice:
            return [MSGraphColumnTypes multichoice];
        case MSGraphColumnTypesNumber:
            return [MSGraphColumnTypes number];
        case MSGraphColumnTypesCurrency:
            return [MSGraphColumnTypes currency];
        case MSGraphColumnTypesDateTime:
            return [MSGraphColumnTypes dateTime];
        case MSGraphColumnTypesLookup:
            return [MSGraphColumnTypes lookup];
        case MSGraphColumnTypesBoolean:
            return [MSGraphColumnTypes boolean];
        case MSGraphColumnTypesUser:
            return [MSGraphColumnTypes user];
        case MSGraphColumnTypesUrl:
            return [MSGraphColumnTypes url];
        case MSGraphColumnTypesCalculated:
            return [MSGraphColumnTypes calculated];
        case MSGraphColumnTypesLocation:
            return [MSGraphColumnTypes location];
        case MSGraphColumnTypesGeolocation:
            return [MSGraphColumnTypes geolocation];
        case MSGraphColumnTypesTerm:
            return [MSGraphColumnTypes term];
        case MSGraphColumnTypesMultiterm:
            return [MSGraphColumnTypes multiterm];
        case MSGraphColumnTypesThumbnail:
            return [MSGraphColumnTypes thumbnail];
        case MSGraphColumnTypesApprovalStatus:
            return [MSGraphColumnTypes approvalStatus];
        case MSGraphColumnTypesUnknownFutureValue:
            return [MSGraphColumnTypes unknownFutureValue];
        case MSGraphColumnTypesEndOfEnum:
        default:
            return [MSGraphColumnTypes UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphColumnTypesNote:
            return @"note";
        case MSGraphColumnTypesText:
            return @"text";
        case MSGraphColumnTypesChoice:
            return @"choice";
        case MSGraphColumnTypesMultichoice:
            return @"multichoice";
        case MSGraphColumnTypesNumber:
            return @"number";
        case MSGraphColumnTypesCurrency:
            return @"currency";
        case MSGraphColumnTypesDateTime:
            return @"dateTime";
        case MSGraphColumnTypesLookup:
            return @"lookup";
        case MSGraphColumnTypesBoolean:
            return @"boolean";
        case MSGraphColumnTypesUser:
            return @"user";
        case MSGraphColumnTypesUrl:
            return @"url";
        case MSGraphColumnTypesCalculated:
            return @"calculated";
        case MSGraphColumnTypesLocation:
            return @"location";
        case MSGraphColumnTypesGeolocation:
            return @"geolocation";
        case MSGraphColumnTypesTerm:
            return @"term";
        case MSGraphColumnTypesMultiterm:
            return @"multiterm";
        case MSGraphColumnTypesThumbnail:
            return @"thumbnail";
        case MSGraphColumnTypesApprovalStatus:
            return @"approvalStatus";
        case MSGraphColumnTypesUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphColumnTypesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphColumnTypesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphColumnTypes)

- (MSGraphColumnTypes*) toMSGraphColumnTypes{

    if([self isEqualToString:@"note"])
    {
          return [MSGraphColumnTypes note];
    }
    else if([self isEqualToString:@"text"])
    {
          return [MSGraphColumnTypes text];
    }
    else if([self isEqualToString:@"choice"])
    {
          return [MSGraphColumnTypes choice];
    }
    else if([self isEqualToString:@"multichoice"])
    {
          return [MSGraphColumnTypes multichoice];
    }
    else if([self isEqualToString:@"number"])
    {
          return [MSGraphColumnTypes number];
    }
    else if([self isEqualToString:@"currency"])
    {
          return [MSGraphColumnTypes currency];
    }
    else if([self isEqualToString:@"dateTime"])
    {
          return [MSGraphColumnTypes dateTime];
    }
    else if([self isEqualToString:@"lookup"])
    {
          return [MSGraphColumnTypes lookup];
    }
    else if([self isEqualToString:@"boolean"])
    {
          return [MSGraphColumnTypes boolean];
    }
    else if([self isEqualToString:@"user"])
    {
          return [MSGraphColumnTypes user];
    }
    else if([self isEqualToString:@"url"])
    {
          return [MSGraphColumnTypes url];
    }
    else if([self isEqualToString:@"calculated"])
    {
          return [MSGraphColumnTypes calculated];
    }
    else if([self isEqualToString:@"location"])
    {
          return [MSGraphColumnTypes location];
    }
    else if([self isEqualToString:@"geolocation"])
    {
          return [MSGraphColumnTypes geolocation];
    }
    else if([self isEqualToString:@"term"])
    {
          return [MSGraphColumnTypes term];
    }
    else if([self isEqualToString:@"multiterm"])
    {
          return [MSGraphColumnTypes multiterm];
    }
    else if([self isEqualToString:@"thumbnail"])
    {
          return [MSGraphColumnTypes thumbnail];
    }
    else if([self isEqualToString:@"approvalStatus"])
    {
          return [MSGraphColumnTypes approvalStatus];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphColumnTypes unknownFutureValue];
    }
    else {
        return [MSGraphColumnTypes UnknownEnumValue];
    }
}

@end
