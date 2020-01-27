# List Iteration

This creates multiple [template_file](https://www.terraform.io/docs/providers/template/d/file.html) resources based on the number of elements in a list.

It has several outputs and shows the [splat](https://www.terraform.io/docs/configuration/interpolation.html#attributes-of-other-resources) notation for referencing individual resource elements when using count.

More information on Terraform Lists can be found [here](https://www.terraform.io/docs/configuration/variables.html#lists)

### Usage

Here's what the code does when you init, plan, and apply it.
Keep in mind nothing is actually created.

```
C:\git\training\3. List Iteration>terraform init

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
C:\git\training\3. List Iteration>terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.template_file.tempfile[5]: Refreshing state...
data.template_file.tempfile[3]: Refreshing state...
data.template_file.tempfile[1]: Refreshing state...
data.template_file.tempfile[0]: Refreshing state...
data.template_file.tempfile[6]: Refreshing state...
data.template_file.tempfile[2]: Refreshing state...
data.template_file.tempfile[4]: Refreshing state...

------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
```

```
C:\git\training\3. List Iteration>terraform apply
data.template_file.tempfile[0]: Refreshing state...
data.template_file.tempfile[2]: Refreshing state...
data.template_file.tempfile[6]: Refreshing state...
data.template_file.tempfile[4]: Refreshing state...
data.template_file.tempfile[5]: Refreshing state...
data.template_file.tempfile[3]: Refreshing state...
data.template_file.tempfile[1]: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

MyFavorite = Dopey
UsingJoin = Doc-Grumpy-Happy-Sleepy-Bashful-Sneezy-Dopey
rendered-all = [
    0. Doc,
    1. Grumpy,
    2. Happy,
    3. Sleepy,
    4. Bashful,
    5. Sneezy,
    6. Dopey
]
rendered-doc = 0. Doc
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
