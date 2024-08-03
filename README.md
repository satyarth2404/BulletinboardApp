# Bulletin Board Application

## Overview

The Bulletin Board application is a microservice-based system consisting of two primary services:
- **bulletinboard-ads**: Manages advertisements. Allows users to create, view, and delete ads.
- **bulletinboard-reviews**: Manages user reviews. Allows users to create, view, and delete reviews for ads.

The application enables users to post advertisements, and the visibility and color of the advertisements are determined based on the average rating of the user who posted them. 

## Microservices

### bulletinboard-ads

- **Purpose**: Handles all CRUD operations related to advertisements.
- **Endpoints**:
  - `POST /ads`: Create a new advertisement.
  - `GET /ads`: View all advertisements.
  - `GET /ads/{id}`: View a specific advertisement by ID.
  - `DELETE /ads/{id}`: Delete a specific advertisement by ID.

### bulletinboard-reviews

- **Purpose**: Handles all CRUD operations related to user reviews.
- **Endpoints**:
  - `POST /reviews`: Create a new review for an advertisement.
  - `GET /reviews`: View all reviews.
  - `GET /reviews/{id}`: View a specific review by ID.
  - `DELETE /reviews/{id}`: Delete a specific review by ID.

## Color Coding Based on Reviews

Advertisements are color-coded based on the average rating of the user who created them:

- **Green**: Trusted (average rating of 4 or better)
- **Orange**: Neutral (average rating between 2 and 4)
- **Red**: Not Trusted (average rating less than 2 or no ratings)


