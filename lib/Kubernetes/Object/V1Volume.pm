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
package Kubernetes::Object::V1Volume;

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

use Kubernetes::Object::V1AWSElasticBlockStoreVolumeSource;
use Kubernetes::Object::V1AzureDiskVolumeSource;
use Kubernetes::Object::V1AzureFileVolumeSource;
use Kubernetes::Object::V1CephFSVolumeSource;
use Kubernetes::Object::V1CinderVolumeSource;
use Kubernetes::Object::V1ConfigMapVolumeSource;
use Kubernetes::Object::V1DownwardAPIVolumeSource;
use Kubernetes::Object::V1EmptyDirVolumeSource;
use Kubernetes::Object::V1FCVolumeSource;
use Kubernetes::Object::V1FlexVolumeSource;
use Kubernetes::Object::V1FlockerVolumeSource;
use Kubernetes::Object::V1GCEPersistentDiskVolumeSource;
use Kubernetes::Object::V1GitRepoVolumeSource;
use Kubernetes::Object::V1GlusterfsVolumeSource;
use Kubernetes::Object::V1HostPathVolumeSource;
use Kubernetes::Object::V1ISCSIVolumeSource;
use Kubernetes::Object::V1NFSVolumeSource;
use Kubernetes::Object::V1PersistentVolumeClaimVolumeSource;
use Kubernetes::Object::V1PhotonPersistentDiskVolumeSource;
use Kubernetes::Object::V1PortworxVolumeSource;
use Kubernetes::Object::V1ProjectedVolumeSource;
use Kubernetes::Object::V1QuobyteVolumeSource;
use Kubernetes::Object::V1RBDVolumeSource;
use Kubernetes::Object::V1ScaleIOVolumeSource;
use Kubernetes::Object::V1SecretVolumeSource;
use Kubernetes::Object::V1StorageOSVolumeSource;
use Kubernetes::Object::V1VsphereVirtualDiskVolumeSource;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Volume represents a named volume in a pod that may be accessed by any container in the pod.
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



__PACKAGE__->class_documentation({description => 'Volume represents a named volume in a pod that may be accessed by any container in the pod.',
                                  class => 'V1Volume',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'aws_elastic_block_store' => {
    	datatype => 'V1AWSElasticBlockStoreVolumeSource',
    	base_name => 'awsElasticBlockStore',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'azure_disk' => {
    	datatype => 'V1AzureDiskVolumeSource',
    	base_name => 'azureDisk',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'azure_file' => {
    	datatype => 'V1AzureFileVolumeSource',
    	base_name => 'azureFile',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'cephfs' => {
    	datatype => 'V1CephFSVolumeSource',
    	base_name => 'cephfs',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'cinder' => {
    	datatype => 'V1CinderVolumeSource',
    	base_name => 'cinder',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'config_map' => {
    	datatype => 'V1ConfigMapVolumeSource',
    	base_name => 'configMap',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'downward_api' => {
    	datatype => 'V1DownwardAPIVolumeSource',
    	base_name => 'downwardAPI',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'empty_dir' => {
    	datatype => 'V1EmptyDirVolumeSource',
    	base_name => 'emptyDir',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'fc' => {
    	datatype => 'V1FCVolumeSource',
    	base_name => 'fc',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'flex_volume' => {
    	datatype => 'V1FlexVolumeSource',
    	base_name => 'flexVolume',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'flocker' => {
    	datatype => 'V1FlockerVolumeSource',
    	base_name => 'flocker',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'gce_persistent_disk' => {
    	datatype => 'V1GCEPersistentDiskVolumeSource',
    	base_name => 'gcePersistentDisk',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'git_repo' => {
    	datatype => 'V1GitRepoVolumeSource',
    	base_name => 'gitRepo',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'glusterfs' => {
    	datatype => 'V1GlusterfsVolumeSource',
    	base_name => 'glusterfs',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'host_path' => {
    	datatype => 'V1HostPathVolumeSource',
    	base_name => 'hostPath',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'iscsi' => {
    	datatype => 'V1ISCSIVolumeSource',
    	base_name => 'iscsi',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'Volume&#39;s name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names',
    	format => '',
    	read_only => '',
    		},
    'nfs' => {
    	datatype => 'V1NFSVolumeSource',
    	base_name => 'nfs',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'persistent_volume_claim' => {
    	datatype => 'V1PersistentVolumeClaimVolumeSource',
    	base_name => 'persistentVolumeClaim',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'photon_persistent_disk' => {
    	datatype => 'V1PhotonPersistentDiskVolumeSource',
    	base_name => 'photonPersistentDisk',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'portworx_volume' => {
    	datatype => 'V1PortworxVolumeSource',
    	base_name => 'portworxVolume',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'projected' => {
    	datatype => 'V1ProjectedVolumeSource',
    	base_name => 'projected',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'quobyte' => {
    	datatype => 'V1QuobyteVolumeSource',
    	base_name => 'quobyte',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'rbd' => {
    	datatype => 'V1RBDVolumeSource',
    	base_name => 'rbd',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'scale_io' => {
    	datatype => 'V1ScaleIOVolumeSource',
    	base_name => 'scaleIO',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'secret' => {
    	datatype => 'V1SecretVolumeSource',
    	base_name => 'secret',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'storageos' => {
    	datatype => 'V1StorageOSVolumeSource',
    	base_name => 'storageos',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'vsphere_volume' => {
    	datatype => 'V1VsphereVirtualDiskVolumeSource',
    	base_name => 'vsphereVolume',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->openapi_types( {
    'aws_elastic_block_store' => 'V1AWSElasticBlockStoreVolumeSource',
    'azure_disk' => 'V1AzureDiskVolumeSource',
    'azure_file' => 'V1AzureFileVolumeSource',
    'cephfs' => 'V1CephFSVolumeSource',
    'cinder' => 'V1CinderVolumeSource',
    'config_map' => 'V1ConfigMapVolumeSource',
    'downward_api' => 'V1DownwardAPIVolumeSource',
    'empty_dir' => 'V1EmptyDirVolumeSource',
    'fc' => 'V1FCVolumeSource',
    'flex_volume' => 'V1FlexVolumeSource',
    'flocker' => 'V1FlockerVolumeSource',
    'gce_persistent_disk' => 'V1GCEPersistentDiskVolumeSource',
    'git_repo' => 'V1GitRepoVolumeSource',
    'glusterfs' => 'V1GlusterfsVolumeSource',
    'host_path' => 'V1HostPathVolumeSource',
    'iscsi' => 'V1ISCSIVolumeSource',
    'name' => 'string',
    'nfs' => 'V1NFSVolumeSource',
    'persistent_volume_claim' => 'V1PersistentVolumeClaimVolumeSource',
    'photon_persistent_disk' => 'V1PhotonPersistentDiskVolumeSource',
    'portworx_volume' => 'V1PortworxVolumeSource',
    'projected' => 'V1ProjectedVolumeSource',
    'quobyte' => 'V1QuobyteVolumeSource',
    'rbd' => 'V1RBDVolumeSource',
    'scale_io' => 'V1ScaleIOVolumeSource',
    'secret' => 'V1SecretVolumeSource',
    'storageos' => 'V1StorageOSVolumeSource',
    'vsphere_volume' => 'V1VsphereVirtualDiskVolumeSource'
} );

__PACKAGE__->attribute_map( {
    'aws_elastic_block_store' => 'awsElasticBlockStore',
    'azure_disk' => 'azureDisk',
    'azure_file' => 'azureFile',
    'cephfs' => 'cephfs',
    'cinder' => 'cinder',
    'config_map' => 'configMap',
    'downward_api' => 'downwardAPI',
    'empty_dir' => 'emptyDir',
    'fc' => 'fc',
    'flex_volume' => 'flexVolume',
    'flocker' => 'flocker',
    'gce_persistent_disk' => 'gcePersistentDisk',
    'git_repo' => 'gitRepo',
    'glusterfs' => 'glusterfs',
    'host_path' => 'hostPath',
    'iscsi' => 'iscsi',
    'name' => 'name',
    'nfs' => 'nfs',
    'persistent_volume_claim' => 'persistentVolumeClaim',
    'photon_persistent_disk' => 'photonPersistentDisk',
    'portworx_volume' => 'portworxVolume',
    'projected' => 'projected',
    'quobyte' => 'quobyte',
    'rbd' => 'rbd',
    'scale_io' => 'scaleIO',
    'secret' => 'secret',
    'storageos' => 'storageos',
    'vsphere_volume' => 'vsphereVolume'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
