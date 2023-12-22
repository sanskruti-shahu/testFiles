Feature: Verify Docker Resources

  Scenario: Check Docker Image
    Given I have a Docker image named "nginx:latest"
    When the Docker image is built
    Then it should be available locally

  Scenario: Check Docker Container
    Given I have a Docker container named "tutorial"
    When the Docker container is created
    Then it should be running
    And the container should expose port 8000
