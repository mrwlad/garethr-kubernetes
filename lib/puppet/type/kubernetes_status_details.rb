# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_status_details) do
  
  @doc = "StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the status_details.'
  end
  
    
      newproperty(:name) do
        desc "The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described)."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:kind) do
        desc "The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:causes) do
        desc "The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:retryAfterSeconds) do
        desc "If specified, the time in seconds before the operation should be retried."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
