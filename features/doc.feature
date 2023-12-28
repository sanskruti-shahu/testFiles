Feature: Create a Docker Container using Terraform

    Scenario: Verify Docker Container Image
        Given I have docker_container defined
        Then it must have the image

    Scenario: Verify Docker Image Name
        Given I have docker_image defined
        Then it must have the name

    Scenario: Verify Docker Container Name
        Given I have docker_container defined
        Then it must have the name

    Scenario: Verify Docker Container port
        Given I have docker_container defined
        Then it must have the port