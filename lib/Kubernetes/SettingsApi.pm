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
package Kubernetes::SettingsApi;

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
# get_api_group
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_api_group' } = { 
    	summary => '',
        params => $params,
        returns => 'V1APIGroup',
        };
}
# @return V1APIGroup
#
sub get_api_group {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/apis/settings.k8s.io/';

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
    my $_response_object = $self->{api_client}->deserialize('V1APIGroup', $response);
    return $_response_object;
}

1;
