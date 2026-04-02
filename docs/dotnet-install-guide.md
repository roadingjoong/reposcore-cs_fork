# .NET SDK 설치 및 CLI 프로젝트 생성 가이드

이 문서는 C# 개발 환경 구축을 위한 .NET SDK 설치 방법과 `dotnet` CLI를 이용한 신규 프로젝트 생성 및 관리 방법을 안내합니다.

## 1. .NET SDK 설치 (Environment Setup)
프로젝트 빌드와 실행을 위해 .NET SDK 설치가 필수적입니다.
- **다운로드:** [.NET 공식 다운로드 페이지](https://dotnet.microsoft.com/download)
- **권장 버전:** .NET 8.0 SDK (LTS)
- **설치 확인:** 터미널(CMD 또는 PowerShell)에서 아래 명령어를 입력하여 설치된 버전을 확인합니다.
  ```bash
  dotnet --version
  ```

## 2. 신규 프로젝트 생성 (CLI 방식)
터미널 명령어를 사용하여 프로젝트의 기초 뼈대를 생성할 수 있습니다.

- **콘솔 애플리케이션 생성:**
  ```bash
  dotnet new console -n [프로젝트명]
  ```
  (예: dotnet new console -n MyConsoleApp)

 - **생성된 프로젝트 폴더로 이동:**

    ```bash
    cd [프로젝트명]
    ```

## 3. 프로젝트 빌드 및 실행
작성한 소스 코드를 컴파일하고 실행하는 기본 명령어입니다.

- **코드 빌드 (오류 체크):**
  ```bash
  dotnet build
  ```

 - **프로그램 실행:**
    ```bash
    dotnet run
    ```

    
