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
package Kubernetes::AuthenticationV1beta1Api;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Kubernetes::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Kubernetes::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Kubernetes::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_token_review
#
# 
# 
# @param V1beta1TokenReview $body  (required)
# @param string $dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed (optional)
# @param boolean $include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization. (optional)
# @param string $pretty If &#39;true&#39;, then the output is pretty printed. (optional)
{
    my $params = {
    'body' => {
        data_type => 'V1beta1TokenReview',
        description => '',
        required => '1',
    },
    'dry_run' => {
        data_type => 'string',
        description => 'When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed',
        required => '0',
    },
    'include_uninitialized' => {
        data_type => 'boolean',
        description => 'If IncludeUninitialized is specified, the object may be returned without completing initialization.',
        required => '0',
    },
    'pretty' => {
        data_type => 'string',
        description => 'If &#39;true&#39;, then the output is pretty printed.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_token_review' } = { 
    	summary => '',
        params => $params,
        returns => 'V1beta1TokenReview',
        };
}
# @return V1beta1TokenReview
#
sub create_token_review {
    my ($self, %args) = @_;

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling create_token_review");
    }

    # parse inputs
    my $_resource_path = '/apis/authentication.k8s.io/v1beta1/tokenreviews';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'dry_run'}) {
        $query_params->{'dryRun'} = $self->{api_client}->to_query_value($args{'dry_run'});
    }

    # query params
    if ( exists $args{'include_uninitialized'}) {
        $query_params->{'includeUninitialized'} = $self->{api_client}->to_query_value($args{'include_uninitialized'});
    }

    # query params
    if ( exists $args{'pretty'}) {
        $query_params->{'pretty'} = $self->{api_client}->to_query_value($args{'pretty'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BearerToken )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('V1beta1TokenReview', $response);
    return $_response_object;
}

#
# get_api_resources
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_api_resources' } = { 
    	summary => '',
        params => $params,
        returns => 'V1APIResourceList',
        };
}
# @return V1APIResourceList
#
sub get_api_resources {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/apis/authentication.k8s.io/v1beta1/';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BearerToken )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('V1APIResourceList', $response);
    return $_response_object;
}

1;
