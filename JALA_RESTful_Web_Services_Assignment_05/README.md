# API Testing and RESTful Web Services

This folder contains a quick overview of RESTful web services and API testing resources.

## What is REST?
- REST stands for Representational State Transfer.
- It is an architectural style used for designing networked applications.
- RESTful services use HTTP methods: GET, POST, PUT, PATCH, DELETE.
- REST APIs usually exchange data in JSON or XML.
- Resources are identified by URLs (endpoints).

## Core Concepts
- **Resource:** Anything that can be named, such as users, products, or orders.
- **Endpoint:** URL used to access a resource, e.g. `https://api.example.com/users`.
- **HTTP Methods:**
  - GET = retrieve data
  - POST = create new data
  - PUT = update entire data record
  - PATCH = update partial data
  - DELETE = remove data
- **Status Codes:**
  - 200 OK
  - 201 Created
  - 400 Bad Request
  - 401 Unauthorized
  - 403 Forbidden
  - 404 Not Found
  - 500 Internal Server Error

## API Testing in One Day
- Understand the API endpoints and request/response format.
- Use Postman or another REST client to send requests.
- Validate the response status code, headers, and body.
- Test both positive and negative scenarios.
- Automate API tests if possible using tools like Postman, Newman, or REST-assured.

## Postman Learning Resource
- URL: https://documenter.getpostman.com/view/21869349/UzQvtQep#25fdd867-679e-40f2-b506-5893860dc792
- This is a free resource for learning RESTful APIs and API testing.
- Share the link with friends to learn together.

## Suggested Folder Contents
- `README.md` — this overview file.
- `api-test-scenarios.md` — write API test scenarios using endpoints and expected behavior.
- `api-test-cases.md` — write test cases for each API endpoint.

## Example API Test Scenario
- Scenario: Verify that the GET users endpoint returns a 200 status and a JSON array.
- Scenario: Verify that creating a user with invalid data returns a 400 status.
- Scenario: Verify that deleting a user removes the resource and returns 204.

## Share it freely
This content and the linked Postman document are completely free to use and share with friends.
