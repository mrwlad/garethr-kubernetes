# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/prefetch_error'
require 'puppet_x/puppetlabs/swagger/symbolize_keys'
require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_pod_condition).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        type: instance.type.respond_to?(:to_hash) ? instance.type.to_hash : instance.type,
      
    
      
        status: instance.status.respond_to?(:to_hash) ? instance.status.to_hash : instance.status,
      
    
      
        lastProbeTime: instance.lastProbeTime.respond_to?(:to_hash) ? instance.lastProbeTime.to_hash : instance.lastProbeTime,
      
    
      
        lastTransitionTime: instance.lastTransitionTime.respond_to?(:to_hash) ? instance.lastTransitionTime.to_hash : instance.lastTransitionTime,
      
    
      
        reason: instance.reason.respond_to?(:to_hash) ? instance.reason.to_hash : instance.reason,
      
    
      
        message: instance.message.respond_to?(:to_hash) ? instance.message.to_hash : instance.message,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_pod_condition #{name}")
    create_instance_of('pod_condition', name, build_params)
  end

  def flush
    if ! @property_hash.empty? and @property_hash[:ensure] != :absent
      flush_instance_of('pod_condition', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_pod_condition #{name}")
    destroy_instance_of('pod_condition', name)
  end

  private
  def self.list_instances
    list_instances_of('pod_condition')
  end

  def build_params
    params = {
    
      
        type: resource[:type],
      
    
      
        status: resource[:status],
      
    
      
        lastProbeTime: resource[:lastProbeTime],
      
    
      
        lastTransitionTime: resource[:lastTransitionTime],
      
    
      
        reason: resource[:reason],
      
    
      
        message: resource[:message],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
