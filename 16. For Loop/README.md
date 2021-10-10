# Maps

This shows how to use the map variable type to select values based on keys.

More information on Terraform Maps can be found [here](https://www.terraform.io/docs/configuration/variables.html#maps)


### Usage

Here's what the code does when you plan and apply it.
Keep in mind nothing is actually created.

```
C:\git\training\6. Maps>terraform init

Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "template" (1.0.0)...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.template: version = "~> 1.0"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

```
C:\git\training\6. Maps>terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.template_file.tmpfile: Refreshing state...

------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
```

```
C:\git\training\6. Maps>terraform apply
data.template_file.tmpfile: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

full-map = {
  ap-northeast-1 = Asia Pacific (Tokyo)
  ap-northeast-2 = Asia Pacific (Seoul)
  ap-south-1 = Asia Pacific (Mumbai)
  ap-southeast-1 = Asia Pacific (Singapore)
  ap-southeast-2 = Asia Pacific (Sydney)
  ca-central-1 = Canada (Central)
  eu-central-1 = EU (Frankfurt)
  eu-west-1 = EU (Ireland)
  eu-west-2 = EU (London)
  sa-east-1 = South America (Sao Paulo)
  us-east-1 = US East (N. Virginia)
  us-east-2 = US East (Ohio)
  us-west-1 = US West (N. California)
  us-west-2 = US West (Oregon)
}
full-region1 = US East (N. Virginia)
rendered = US East (N. Virginia)
Canada (Central)
Asia Pacific (Mumbai)
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
