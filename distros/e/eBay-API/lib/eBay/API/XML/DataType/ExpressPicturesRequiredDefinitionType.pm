#!/usr/bin/perl

package eBay::API::XML::DataType::ExpressPicturesRequiredDefinitionType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExpressPicturesRequiredDefinitionType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExpressPicturesRequiredDefinitionType

=head1 DESCRIPTION

For the US and Germany sites, an eBay item must meet a number of eligibility requirements 
in order to also be included on eBay Express. 
One requirement is that the item must include a picture (or gallery image).
Currently, this type defines no special meta-data. (An empty element is returned.)



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExpressPicturesRequiredDefinitionType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( 
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
