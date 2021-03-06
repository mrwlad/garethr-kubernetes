# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_volume) do
  
  @doc = "Volume represents a named volume in a pod that may be accessed by any container in the pod."
  

  ensurable

  
  validate do
    required_properties = [
    
      name,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the volume.'
  end
  
    
      newproperty(:name) do
        
        desc "Volume's name. Must be a DNS_LABEL and unique within the pod. More info: http://kubernetes.io/docs/user-guide/identifiers#names"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:hostPath) do
        
        desc "HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: http://kubernetes.io/docs/user-guide/volumes#hostpath"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:emptyDir) do
        
        desc "EmptyDir represents a temporary directory that shares a pod's lifetime. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:gcePersistentDisk) do
        
        desc "GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:awsElasticBlockStore) do
        
        desc "AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:gitRepo) do
        
        desc "GitRepo represents a git repository at a particular revision."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:secret) do
        
        desc "Secret represents a secret that should populate this volume. More info: http://kubernetes.io/docs/user-guide/volumes#secrets"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:nfs) do
        
        desc "NFS represents an NFS mount on the host that shares a pod's lifetime More info: http://kubernetes.io/docs/user-guide/volumes#nfs"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:iscsi) do
        
        desc "ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:glusterfs) do
        
        desc "Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:persistentVolumeClaim) do
        
        desc "PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:rbd) do
        
        desc "RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:flexVolume) do
        
        desc "FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. This is an alpha feature and may change in future."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:cinder) do
        
        desc "Cinder represents a cinder volume attached and mounted on kubelets host machine More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:cephfs) do
        
        desc "CephFS represents a Ceph FS mount on the host that shares a pod's lifetime"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:flocker) do
        
        desc "Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:downwardAPI) do
        
        desc "DownwardAPI represents downward API about the pod that should populate this volume"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:fc) do
        
        desc "FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:azureFile) do
        
        desc "AzureFile represents an Azure File Service mount on the host and bind mount to the pod."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:configMap) do
        
        desc "ConfigMap represents a configMap that should populate this volume"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:vsphereVolume) do
        
        desc "VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:quobyte) do
        
        desc "Quobyte represents a Quobyte mount on the host that shares a pod's lifetime"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:azureDisk) do
        
        desc "AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
