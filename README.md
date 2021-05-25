## 17_Custom_Validation_Rules

In this module, we will be looking at creating our own custom validation rules for variables to be used within a Terraform deployment.  

This can be useful if you are creating a deployment that will be used by others, you can define some restrictions to the variables that are being passed in to ensure your module is used correctly.

## Custom Validation

In our *variables.tf* file we are setting up 2 variables, the first is *ami_id*, which we will use to define the source AMI that we will be creating our EC2 instance from and the second variable, *instance_type*, is used to define the Instance Family that must be used with this deployment.

To ensure that users of this module input a valid *ami_id*, we are requiring that the provided String starts with "ami-".  We are specifying that the provided String for our second variable starts with "t3." to ensure that the *t3* family of EC2 instances is used.

## validation block

To create this custom validation, we are making use of a validation block, inside of this block we make use of a *condition* attribute in which we can specify our custom validation. In our example, we are checking the lengths of the Strings that are passed in for our variables, as well as using *substr* to check the first few letters.  Finally, we are setting the *error_message* that is returned if someone were to try to pass in a variable that does not conform to our conditions.

In fact, you can try this yourself!  Run the * terraform plan* command in the root of this project, and when prompted, pass in a few variables that do not meet the required standards to see the results.
