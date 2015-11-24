# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/prefetch_error'
require 'puppet_x/puppetlabs/swagger/symbolize_keys'
require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_pod_status).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        phase: instance.phase.respond_to?(:to_hash) ? instance.phase.to_hash : instance.phase,
      
    
      
        conditions: instance.conditions.respond_to?(:to_hash) ? instance.conditions.to_hash : instance.conditions,
      
    
      
        message: instance.message.respond_to?(:to_hash) ? instance.message.to_hash : instance.message,
      
    
      
        reason: instance.reason.respond_to?(:to_hash) ? instance.reason.to_hash : instance.reason,
      
    
      
        hostIP: instance.hostIP.respond_to?(:to_hash) ? instance.hostIP.to_hash : instance.hostIP,
      
    
      
        podIP: instance.podIP.respond_to?(:to_hash) ? instance.podIP.to_hash : instance.podIP,
      
    
      
        startTime: instance.startTime.respond_to?(:to_hash) ? instance.startTime.to_hash : instance.startTime,
      
    
      
        containerStatuses: instance.containerStatuses.respond_to?(:to_hash) ? instance.containerStatuses.to_hash : instance.containerStatuses,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_pod_status #{name}")
    create_instance_of('pod_status', name, build_params)
  end

  def flush
    if ! @property_hash.empty? and @property_hash[:ensure] != :absent
      flush_instance_of('pod_status', name, @property_hash[:object], build_params)
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_pod_status #{name}")
    destroy_instance_of('pod_status', name)
  end

  private
  def self.list_instances
    list_instances_of('pod_status')
  end

  def build_params
    params = {
    
      
        phase: resource[:phase],
      
    
      
        conditions: resource[:conditions],
      
    
      
        message: resource[:message],
      
    
      
        reason: resource[:reason],
      
    
      
        hostIP: resource[:hostIP],
      
    
      
        podIP: resource[:podIP],
      
    
      
        startTime: resource[:startTime],
      
    
      
        containerStatuses: resource[:containerStatuses],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
