# Hello World with a List

This uses the list variable type to output two strings which contain the text "Hello World" and "Good Bye!".

More information on Terraform Lists can be found [here](https://www.terraform.io/docs/configuration/variables.html#lists)


### Usage

Here's what the code does when you plan and apply it.
Keep in mind nothing is actually created.

```
C:\git\training\2. Lists>terraform plan
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
C:\git\training\2. Lists>terraform apply

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

GoodBye = 3. Good Bye!
HelloWorld = 1. Hello World!
SizeOfList = The size (or length) of the list is 4. This means it has 4 items from 0 to 3.
```

## Authors
* **Fred Stuck** - *Initial work* - [stuckf@dnb.com]
