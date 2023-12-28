# This feature file tests that all Docker resources have the correct security settings.

feature: Docker resource security

  scenario: All Docker resources have the correct security settings

    given:
      - a Docker resource

    when:
      - the resource is created

    then:
      - the resource should have the correct security settings