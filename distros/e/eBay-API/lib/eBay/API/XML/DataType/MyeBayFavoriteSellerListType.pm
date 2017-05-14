#!/usr/bin/perl

package eBay::API::XML::DataType::MyeBayFavoriteSellerListType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyeBayFavoriteSellerListType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyeBayFavoriteSellerListType

=head1 DESCRIPTION

A list of favorite sellers the user has saved on the My eBay page.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyeBayFavoriteSellerListType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::MyeBayFavoriteSellerType;


my @gaProperties = ( [ 'FavoriteSeller', 'ns:MyeBayFavoriteSellerType', '1'
	     ,'eBay::API::XML::DataType::MyeBayFavoriteSellerType', '1' ]
	, [ 'TotalAvailable', 'xs:int', '', '', '' ]
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



=head2 setFavoriteSeller()

A favorite seller the user has saved, with a user ID and store name.

#    Argument: reference to an array  
                      of 'ns:MyeBayFavoriteSellerType'

=cut

sub setFavoriteSeller {
  my $self = shift;
  $self->{'FavoriteSeller'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFavoriteSeller()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: reference to an array  
                      of 'ns:MyeBayFavoriteSellerType'

=cut

sub getFavoriteSeller {
  my $self = shift;
  return $self->_getDataTypeArray('FavoriteSeller');
}


=head2 setTotalAvailable()

The total number of favorite sellers saved.

Max: 100

#    Argument: 'xs:int'

=cut

sub setTotalAvailable {
  my $self = shift;
  $self->{'TotalAvailable'} = shift
}

=head2 getTotalAvailable()

  Calls: GetMyeBayBuying
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:int'

=cut

sub getTotalAvailable {
  my $self = shift;
  return $self->{'TotalAvailable'};
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
