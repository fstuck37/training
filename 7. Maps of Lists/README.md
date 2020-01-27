# Maps of Lists

This uses the map variable type where each element is a list of items.

Similar to the last example, we use AWS Regions for the map keys.

This time however the values are lists of avaialbility zones.

More information on Terraform Maps can be found [here](https://www.terraform.io/docs/configuration/variables.html#maps)


### Usage

Here's what the code does when you plan and apply it.
Keep in mind nothing is actually created.

```
C:\Users\stuckf\My Docs\git\training\7. Maps of Lists>terraform init

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
C:\git\training\7. Maps of Lists>terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.template_file.region1[1]: Refreshing state...
data.template_file.region1[2]: Refreshing state...
data.template_file.region1[3]: Refreshing state...
data.template_file.region1[0]: Refreshing state...
data.template_file.region1[4]: Refreshing state...

------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
```

```
C:\git\training\7. Maps of Lists>terraform apply
data.template_file.region1[2]: Refreshing state...
data.template_file.region1[1]: Refreshing state...
data.template_file.region1[0]: Refreshing state...
data.template_file.region1[3]: Refreshing state...
data.template_file.region1[4]: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

rendered = [
    us-east-1a
,
    us-east-1b
,
    us-east-1c
,
    us-east-1d
,
    us-east-1e

]
rendered-1c = us-east-1c
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
