# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_status_cause) do
  
  @doc = "StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the status_cause.'
  end
  
    
      newproperty(:reason) do
        desc "A machine-readable description of the cause of the error. If this value is empty there is no information available."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:message) do
        desc "A human-readable description of the cause of the error.  This field may be presented as-is to a reader."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:field) do
        desc "The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.

Examples:
  'name' - the field 'name' on the current resource
  'items[0].name' - the field 'name' on the first array entry in 'items'"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
