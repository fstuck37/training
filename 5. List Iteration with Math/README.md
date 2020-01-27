# List Iteration with Math

This creates multiple [template_file](https://www.terraform.io/docs/providers/template/d/file.html) resources based on the number of elements in a list.

It performes basic math functions within each template_file.

### Usage

Here's what the code does when you init, plan, and apply it.
Keep in mind nothing is actually created.

```
C:\git\training\5. List Iteration with Math>terraform init

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
C:\git\training\5. List Iteration with Math>terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.template_file.tmpfile[1]: Refreshing state...
data.template_file.tmpfile[3]: Refreshing state...
data.template_file.tmpfile[2]: Refreshing state...
data.template_file.tmpfile[5]: Refreshing state...
data.template_file.tmpfile[0]: Refreshing state...
data.template_file.tmpfile[6]: Refreshing state...
data.template_file.tmpfile[4]: Refreshing state...

------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
```

```
C:\git\training\5. List Iteration with Math>terraform apply
data.template_file.tmpfile[3]: Refreshing state...
data.template_file.tmpfile[0]: Refreshing state...
data.template_file.tmpfile[1]: Refreshing state...
data.template_file.tmpfile[5]: Refreshing state...
data.template_file.tmpfile[4]: Refreshing state...
data.template_file.tmpfile[2]: Refreshing state...
data.template_file.tmpfile[6]: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

rendered-all = [
    1. Doc
Modulus 0%3=0
Multiply 0*3=0
Divide 0/3=0
,
    2. Grumpy
Modulus 1%3=1
Multiply 1*3=3
Divide 1/3=0
,
    3. Happy
Modulus 2%3=2
Multiply 2*3=6
Divide 2/3=0
,
    4. Sleepy
Modulus 3%3=0
Multiply 3*3=9
Divide 3/3=1
,
    5. Bashful
Modulus 4%3=1
Multiply 4*3=12
Divide 4/3=1
,
    6. Sneezy
Modulus 5%3=2
Multiply 5*3=15
Divide 5/3=1
,
    7. Dopey
Modulus 6%3=0
Multiply 6*3=18
Divide 6/3=2

]
rendered-happy = 3. Happy
Modulus 2%3=2
Multiply 2*3=6
Divide 2/3=0
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
