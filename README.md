# virtual_time_capsule

A Java‑based “time capsule” service — store data now, retrieve later.  

## 🚀 Overview

`virtual_time_capsule` is a backend application built in Java that enables storing and retrieving data in a time-locked or time‑capsule style. It’s designed to let users deposit information or artifacts now and access them at a later time (or after certain conditions), simulating a “time capsule.”  

This repository includes:  
- Core application code (Java) under `src/`  
- Build configuration via Maven (`pom.xml`)  
- Dockerfile for containerized deployment  

## ✅ Features *(to expand / document as implemented)*

- Store user data or files in a time‑locked fashion  
- Configurable release/opening date for capsules  
- Ability to retrieve capsule contents once unlocked  
- Containerized deployment via Docker  
- Modular, easily maintainable Java codebase  

## 🧰 Technology Stack

- Java (backend)  
- Maven — project build & dependency management  
- Docker — containerization for easy deployment
- Framework: Spring Boot (Inferred from project structure)
- (Potential for database or storage integration — to be added or documented)  

## 📁 Repository Structure

```text
src/
└─ main/
   ├─ java/com/virtualtimecapsule/  # Application source code
   └─ resources/
      └─ application.properties     # Configuration files
Dockerfile                          # Docker build configuration
pom.xml                             # Maven dependencies
mvnw / mvnw.cmd                     # Maven wrapper scripts

```

- `Dockerfile`: defines how to build a container image for the app  
- `pom.xml`: Maven configuration, dependencies  
- `src/`: Java source code  
- `.gitignore`: files to ignore in version control  

## 🧪 Getting Started — Local Setup

> **Prerequisites:** Java (JDK 8+), Maven, Docker _(optional but recommended)_

1. **Clone the repository**  
   ```bash
   git clone https://github.com/Albin-Reji/virtual_time_capsule.git
   cd virtual_time_capsule

2. **Build with Maven**
```bash
  ./mvnw clean package
```

This will compile the code and package it into a JAR (or other specified artifact).

3. **Run locally**
```bash
java -jar target/virtual_time_capsule-0.0.1-SNAPSHOT.jar
```
Replace <artifact-name>.jar with the actual built file name. The application will start (on default port, or configured port) and be ready to accept requests.

4. **(Optional) Run with Docker**
Build the Docker image:
```bash
docker build -t virtual_time_capsule .
```

5. **Run the container:**
```bash
docker run -d -p 8080:8080 virtual_time_capsule
```
Adjust ports/config as needed.
