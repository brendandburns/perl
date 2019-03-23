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
package Kubernetes::Object::V1Event;

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

use Kubernetes::Object::V1EventSeries;
use Kubernetes::Object::V1EventSource;
use Kubernetes::Object::V1ObjectMeta;
use Kubernetes::Object::V1ObjectReference;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Event is a report of an event somewhere in the cluster.
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



__PACKAGE__->class_documentation({description => 'Event is a report of an event somewhere in the cluster.',
                                  class => 'V1Event',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'action' => {
    	datatype => 'string',
    	base_name => 'action',
    	description => 'What action was taken/failed regarding to the Regarding object.',
    	format => '',
    	read_only => '',
    		},
    'api_version' => {
    	datatype => 'string',
    	base_name => 'apiVersion',
    	description => 'APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources',
    	format => '',
    	read_only => '',
    		},
    'count' => {
    	datatype => 'int',
    	base_name => 'count',
    	description => 'The number of times this event has occurred.',
    	format => '',
    	read_only => '',
    		},
    'event_time' => {
    	datatype => 'DateTime',
    	base_name => 'eventTime',
    	description => 'Time when this Event was first observed.',
    	format => '',
    	read_only => '',
    		},
    'first_timestamp' => {
    	datatype => 'DateTime',
    	base_name => 'firstTimestamp',
    	description => 'The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)',
    	format => '',
    	read_only => '',
    		},
    'involved_object' => {
    	datatype => 'V1ObjectReference',
    	base_name => 'involvedObject',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'kind' => {
    	datatype => 'string',
    	base_name => 'kind',
    	description => 'Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds',
    	format => '',
    	read_only => '',
    		},
    'last_timestamp' => {
    	datatype => 'DateTime',
    	base_name => 'lastTimestamp',
    	description => 'The time at which the most recent occurrence of this event was recorded.',
    	format => '',
    	read_only => '',
    		},
    'message' => {
    	datatype => 'string',
    	base_name => 'message',
    	description => 'A human-readable description of the status of this operation.',
    	format => '',
    	read_only => '',
    		},
    'metadata' => {
    	datatype => 'V1ObjectMeta',
    	base_name => 'metadata',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'reason' => {
    	datatype => 'string',
    	base_name => 'reason',
    	description => 'This should be a short, machine understandable string that gives the reason for the transition into the object&#39;s current status.',
    	format => '',
    	read_only => '',
    		},
    'related' => {
    	datatype => 'V1ObjectReference',
    	base_name => 'related',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'reporting_component' => {
    	datatype => 'string',
    	base_name => 'reportingComponent',
    	description => 'Name of the controller that emitted this Event, e.g. &#x60;kubernetes.io/kubelet&#x60;.',
    	format => '',
    	read_only => '',
    		},
    'reporting_instance' => {
    	datatype => 'string',
    	base_name => 'reportingInstance',
    	description => 'ID of the controller instance, e.g. &#x60;kubelet-xyzf&#x60;.',
    	format => '',
    	read_only => '',
    		},
    'series' => {
    	datatype => 'V1EventSeries',
    	base_name => 'series',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'source' => {
    	datatype => 'V1EventSource',
    	base_name => 'source',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => 'Type of this event (Normal, Warning), new types could be added in the future',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->openapi_types( {
    'action' => 'string',
    'api_version' => 'string',
    'count' => 'int',
    'event_time' => 'DateTime',
    'first_timestamp' => 'DateTime',
    'involved_object' => 'V1ObjectReference',
    'kind' => 'string',
    'last_timestamp' => 'DateTime',
    'message' => 'string',
    'metadata' => 'V1ObjectMeta',
    'reason' => 'string',
    'related' => 'V1ObjectReference',
    'reporting_component' => 'string',
    'reporting_instance' => 'string',
    'series' => 'V1EventSeries',
    'source' => 'V1EventSource',
    'type' => 'string'
} );

__PACKAGE__->attribute_map( {
    'action' => 'action',
    'api_version' => 'apiVersion',
    'count' => 'count',
    'event_time' => 'eventTime',
    'first_timestamp' => 'firstTimestamp',
    'involved_object' => 'involvedObject',
    'kind' => 'kind',
    'last_timestamp' => 'lastTimestamp',
    'message' => 'message',
    'metadata' => 'metadata',
    'reason' => 'reason',
    'related' => 'related',
    'reporting_component' => 'reportingComponent',
    'reporting_instance' => 'reportingInstance',
    'series' => 'series',
    'source' => 'source',
    'type' => 'type'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
