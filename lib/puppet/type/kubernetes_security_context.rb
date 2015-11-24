# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_security_context) do
  
  @doc = "SecurityContext holds security configuration that will be applied to a container."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the security_context.'
  end
  
    
      newproperty(:capabilities) do
        desc "The linux kernel capabilites that should be added or removed. Default to Container.Capabilities if left unset. More info: http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:privileged) do
        desc "Run the container in privileged mode. Default to Container.Privileged if left unset. More info: http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:seLinuxOptions) do
        desc "SELinuxOptions are the labels to be applied to the container and volumes. Options that control the SELinux labels applied. More info: http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:runAsUser) do
        desc "RunAsUser is the UID to run the entrypoint of the container process. The user id that runs the first process in the container. More info: http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:runAsNonRoot) do
        desc "RunAsNonRoot indicates that the container should be run as a non-root user. If the RunAsUser field is not explicitly set then the kubelet may check the image for a specified user or perform defaulting to specify a user."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
