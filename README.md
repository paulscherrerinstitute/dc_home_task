# Take-home assignment

## Introduction

Thanks for applying to the RSE position at PSI. We were impressed by your application and would like to see your technical skills through a practical coding problem.

The RSE role will involve developing features for the open source SciCat and SciLog software. In this assessment, you will add a small feature to SciCat. The assignment is intended to demonstrate:

1. Ability to run software using docker

2. Use of git and github for version control

3. Implemention of a small-frontend

4. (Appropriate software development practices such as tests)

The problem is intended to take a few hours. If any portions seem overly challenging, please reach out to us for hints or more information.

This task will then be discussed during the onsite interview.

## Challenge

Your task is to build a small front-end. Choose any framework, we encourage choosing browser-based frameworks (Angular, React, Vue, ...).

The UI should display data in a table and once clicking on one entity, the UI should show its details. The user should be able to create/patch new datasets from the UI, and the UI should display them accordingly (on reload is enough).

As your task is to focus on the frontend implementation (+versioning etc), you can use this to spin up the API and the underlying database with some fake data, as described in the [local environment section](#local-environment). We recommend using the `local environment`, but in case you struggle with it, you can use [this](https://dacat-qa.psi.ch/explorer/) public URL for the APIs. Note that when using the public URL, you will not be able to use write methods (i.e. no PUT/PATCH/POST/DELETE).

Your frontend solution should connect to the API server (either the one [here](#local-environment) or the one at https://dacat-qa.psi.ch/explorer/) and use, in particular, the `/datasets` endpoint for data creation/manipulation. Write operations, only feasible with the `local environment` API, require authentication, please refer to its section to find a suitable account. FE authentication is not strictly required as part of the assignment (unless you want to), and you are free to hardcode username and password in the FE.

Please make sure to commit your code as part of the evaluation will include the use of git and github. If time allows, your solution should be containerised and eventually made part of the provided docker-compose.

Be creative! This only sets the context, feel free to extend it by adding features (e.g. table features, authentication) and a more refined UI.

## Local environment

By running the provided [compose file](./compose.yaml) `docker compose up -d`, the home-task API service becomes available on your host, and you can see its openAPI descriptor on `http://localhost:3000/explorer` and the API at `http://localhost:3000/api/v3`. The compose file creates the API server and its mongoDB. The mongoDB contains some fake data to ease the task kick-start.

For authentication, you can find the credentials [here](./config/backend/functionalAccounts.json) (`username` and `password`) and you can use them to get issued a token with the `/api/v3/auth/login` endpoint.

## Submission

Good version control practices are important to this role. Therefore, please submit your code as a private GitHub repository. For privacy reasons, do not fork this repository. Instead, create a new private repo and, when you are ready, add users `leosala`, `minottic`, and `sbliven` as collaborators.

Please make a pull request between branches to highlight your new frontend feature.
