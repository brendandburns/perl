=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1beta1LeaseSpec;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");


#
#LeaseSpec is a specification of a Lease.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'LeaseSpec is a specification of a Lease.',
                                  class => 'V1beta1LeaseSpec',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'acquire_time' => {
    	datatype => 'DateTime',
    	base_name => 'acquireTime',
    	description => 'acquireTime is a time when the current lease was acquired.',
    	format => '',
    	read_only => '',
    		},
    'holder_identity' => {
    	datatype => 'string',
    	base_name => 'holderIdentity',
    	description => 'holderIdentity contains the identity of the holder of a current lease.',
    	format => '',
    	read_only => '',
    		},
    'lease_duration_seconds' => {
    	datatype => 'int',
    	base_name => 'leaseDurationSeconds',
    	description => 'leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.',
    	format => '',
    	read_only => '',
    		},
    'lease_transitions' => {
    	datatype => 'int',
    	base_name => 'leaseTransitions',
    	description => 'leaseTransitions is the number of transitions of a lease between holders.',
    	format => '',
    	read_only => '',
    		},
    'renew_time' => {
    	datatype => 'DateTime',
    	base_name => 'renewTime',
    	description => 'renewTime is a time when the current holder of a lease has last updated the lease.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->openapi_types( {
    'acquire_time' => 'DateTime',
    'holder_identity' => 'string',
    'lease_duration_seconds' => 'int',
    'lease_transitions' => 'int',
    'renew_time' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'acquire_time' => 'acquireTime',
    'holder_identity' => 'holderIdentity',
    'lease_duration_seconds' => 'leaseDurationSeconds',
    'lease_transitions' => 'leaseTransitions',
    'renew_time' => 'renewTime'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
