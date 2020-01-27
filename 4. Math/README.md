# Math

Very simplistic Terraform code that outputs the solution to a few common arithmetic functions.

More information on Terraform math can be found [here](https://www.terraform.io/docs/configuration/interpolation.html#math)

### Usage

Here's what the code does when you plan and apply it.
Keep in mind nothing is actually created.

```
C:\git\training\4. Math>terraform plan
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
C:\git\training\4. Math>terraform apply

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

addition = 20+17=37
division = 20/17=1
modulus = 20%17=3
multiplication = 20*17=340
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
