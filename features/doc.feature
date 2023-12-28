Feature: Create a Docker Container using Terraform

    Scenario: Verify Docker Container Image
        Given I have docker_container defined
        Then it must have image

    Scenario: Verify Docker Image Name
        Given I have docker_image defined
        Then it must have name

    Scenario: Verify Docker Container Name
        Given I have docker_container defined
        Then it must have name

    Scenario: Verify Docker Container Internal Port
        Given I have docker_container defined
        Then it must have port
        Then it must have internal
        And its value must be 80

    Scenario: Verify Docker Container External Port
        Given I have docker_container defined
        Then it must have port
        Then it must have internal
        And its value must be 8000
        