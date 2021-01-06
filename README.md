vagrant-aws-route53-rimian
===============

A Vagrant plugin assigns the public IP of the instance which vagrant-aws provider created to a specific Route 53 record set.

Uses AWS-SDK v3

### Assigns the IP when

* ```vagrant up``` initial or the halted instance.

### Assigns 0.0.0.0 when

* ```vagrant halt```
* ```vagrant destroy```

### Does not

* creates another hosted zone or record set.
* destroys hosted zone or record set.

## Prerequisite

* vagrant-aws > 0.7.2

## Install

```zsh
$ vagrant plugin install vagrant-aws-route53-rimian
```

## Config

```ruby
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = 'dummy'
  config.ssh.username = 'oogatta'

  config.vm.provider :aws do |aws, override|
    aws.ami                       = 'ami'
    aws.access_key_id             = 'key_id'
    aws.secret_access_key         = 'secret_key'
    aws.region                    = 'ap-northeast-1'
    aws.instance_type             = 't2.medium'

    override.route53.hosted_zone_id = 'Z1JUXXXXXXXXXX'
    override.route53.record_set     = %w(test.oogatta.com. A)
  end

end
```
