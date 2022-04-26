// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTicketInfo : MSObject

@property (nullable, nonatomic, setter=setTicketNumber:, getter=ticketNumber) NSString* ticketNumber;
@property (nullable, nonatomic, setter=setTicketSystem:, getter=ticketSystem) NSString* ticketSystem;

@end
