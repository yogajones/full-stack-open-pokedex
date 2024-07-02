### 11.1 Warming up

Think about a hypothetical situation where we have an application being worked on by a team of about 6 people. The application is in active development and will be released soon.

Write a short text, say 200-300 words, where you answer or discuss some of the points below. You can check the length with https://wordcounter.net/. Save your answer to the file named exercise1.md in the root of the repository that you shall create in exercise 11.2.

The points to discuss:

- Some common steps in a CI setup include linting, testing, and building. What are the specific tools for taking care of these steps in the ecosystem of the language you picked? You can search for the answers by Google.
- What alternatives are there to set up the CI besides Jenkins and GitHub Actions? Again, you can ask Google!
- Would this setup be better in a self-hosted or a cloud-based environment? Why? What information would you need to make that decision?
 

--


Suppose that the application is being developed in Python. When pushing a commit to the shared GitHub repository, the team member might introduce bugs, such as unused imports or variables, missing closing brackets or other syntax errors. This is where linting comes in handy: as one of the first steps in the CI setup, it alerts of errors that could cause later steps to fail and can also be configured to fix them automatically. For Python, one great linter would be pylint. It might be a good idea to use a linter plugin in the IDE as well to get alerts of code smells already before committing.

As for the testing step, pytest seems to be preferred over unittest. To ensure consistent quality, both unit tests and integration tests as well as system tests should be performed with every commit. While pytest can be used to take care of unit and integration tests, Robot Framework is a good option for automating system tests. A great tool for the building step is poetry.

There are a lot of alternatives for CI services such as Jenkins and GitHub Actions. Some popular ones include Travis CI, GitLab, Azure Pipelines and AWS CodePipeline. As discussed in the course material, in order to decide whether to use a self-hosted or a cloud-based CI environment, the organization would need to consider price, resources required for CI (such as extensive and complex tests) and the effort needed to set up the CI environment. For a team of six people, a cloud-based service would be an intuitive choice to save time in CI pipeline setup. Furthermore, the team can always transition to a self-hosted CI environment later, if deemed necessary.
