# Hello World

Very simplistic Terraform code that outputs a variable containing the text "Hello World".

Variables can be used in a variety of ways in terraform. There are three basic variable types string, list, and map.

Outputs can either print out information or be used to pass information between modules.

More information on Terraform Variables can be found [here](https://www.terraform.io/docs/configuration/variables.html) and on Outputs [here](https://www.terraform.io/docs/configuration/outputs.html)

### Usage

Here's what the code does when you plan and apply it.
Keep in mind nothing is actually created.

```
C:\git\Terraform Training\1. Hello World>terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
```


```
C:\git\Terraform Training\1. Hello World>terraform apply

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

HelloWorld = Hello World!
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
