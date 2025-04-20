# OCI Compartment Terraform Module

This repository contains a Terraform module for managing Oracle Cloud Infrastructure (OCI) compartments. It provides a standardized way to create and manage compartments across multiple environments.

## Usage

```hcl
module "compartment" {
    source          = "path/to/oci-compartment"
    compartment_id  = "ocid1.compartment.oc1..exampleuniqueID"
    name            = "example-compartment"
    description     = "This is an example compartment."
    freeform_tags   = {
        environment = "dev"
        project     = "example"
    }
}
```

## Inputs

| Name              | Description                                                                 | Type         | Default | Required |
|-------------------|-----------------------------------------------------------------------------|--------------|---------|----------|
| compartment_id    | (Required) The OCID of the parent compartment.                             | `string`     |         | yes      |
| name              | (Required) The name of the compartment.                                    | `string`     |         | yes      |
| description       | (Optional) A user-friendly description of the compartment.                 | `string`     | `null`  | no       |
| freeform_tags     | (Optional) A map of free-form tags for the compartment.                   | `map(string)` | `{}`    | no       |

## Outputs

| Name              | Description                          |
|-------------------|--------------------------------------|
| id                | The OCID of the created compartment. |

## Examples

Refer to the `examples/simple.tfvars` file for example values to use with this module.

## Contributing

To contribute to this project, follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a pull request.

## Author

This module is maintained by [Andres Montealegre](mailto:montealegre.af@gmail.com).