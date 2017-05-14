#!/usr/bin/perl

package eBay::API::XML::DataType::MarkUpMarkDownEventType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MarkUpMarkDownEventType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MarkUpMarkDownEventType

=head1 DESCRIPTION

Describes an individual mark-up or mark-down event. eBay will automatically
mark an application as down if attempts to deliver a notification fail
repeatedly. eBay may mark an application down manually under certain
circumstances.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MarkUpMarkDownEventType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::MarkUpMarkDownEventTypeCodeType;


my @gaProperties = ( [ 'Reason', 'xs:string', '', '', '' ]
	, [ 'Time', 'xs:dateTime', '', '', '' ]
	, [ 'Type', 'ns:MarkUpMarkDownEventTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::MarkUpMarkDownEventTypeCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setReason()

Describes how the application was marked down, automatically or
manually. When an application is automatically marked down, eBay will
ping the application periodically, and if communication is restored, eBay
will automatically mark the application up. If your application is marked
down manually, you must contact eBay Developer Support to get your
application marked up. A Reason is not provided for mark up events.

#    Argument: 'xs:string'

=cut

sub setReason {
  my $self = shift;
  $self->{'Reason'} = shift
}

=head2 getReason()

  Calls: GetNotificationsUsage
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getReason {
  my $self = shift;
  return $self->{'Reason'};
}


=head2 setTime()

Time when the application was marked up or marked down.

#    Argument: 'xs:dateTime'

=cut

sub setTime {
  my $self = shift;
  $self->{'Time'} = shift
}

=head2 getTime()

  Calls: GetNotificationsUsage
  Returned: Conditionally

#    Returns: 'xs:dateTime'

=cut

sub getTime {
  my $self = shift;
  return $self->{'Time'};
}


=head2 setType()

Whether the application has been marked up or marked down.

#    Argument: 'ns:MarkUpMarkDownEventTypeCodeType'

=cut

sub setType {
  my $self = shift;
  $self->{'Type'} = shift
}

=head2 getType()

  Calls: GetNotificationsUsage
  Returned: Conditionally

#    Returns: 'ns:MarkUpMarkDownEventTypeCodeType'

=cut

sub getType {
  my $self = shift;
  return $self->{'Type'};
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
