# C# 개발을 위한 .NET 설치 및 프로젝트 구성 가이드

## 1. .NET SDK 설치
C# 프로젝트를 생성하고 빌드하고 실행하려면 먼저 .NET SDK를 설치해야 합니다.

- Windows: 공식 .NET 설치 프로그램을 사용합니다.
- macOS: 공식 .NET 설치 프로그램을 사용합니다.
- Linux: 사용하는 배포판에 맞는 패키지 관리자 또는 공식 설치 가이드를 참고합니다.

## 2. 설치 확인
설치가 완료되면 터미널에서 아래 명령어를 입력하여 정상 설치 여부를 확인할 수 있습니다.

```bash
dotnet --version
```
정상적으로 설치되었다면 버전 번호가 출력됩니다

## 3. .csproj 파일로 프로젝트 구성하기
   .csproj 파일은 C# 프로젝트의 설정 정보를 닫는 파일입니다.
   대상 프레임워크, 출력 형식 등 기본 설정을 포함합니다.

   예시:
   ```XML
<Project Sdk="Microsoft.NET.Sdk">
    <PropertyGroup>
      <OutputType>Exe</OutputType>
      <TargetFramework>net8.0</TargetFramework>
    </PropertyGroup>
</Project>
```

## 4. 기본 디렉토리 구조 예시
일반적인 C# 프로젝트는 아래와 같은 구조로 구성될 수 있습니다.
```
MyApp/
├─ MyApp.csproj
├─ Program.cs
├─ bin/
└─ obj/
```
- Program.cs : 프로그램 시작 파일
- .csproj : 프로젝트 설정 파일
- bin/ : 빌드 결과물 폴더
- obj/ : 빌드 중간 파일 폴더

## 5. 빌드 및 실행 방법
프로젝트 폴더에서 아래 명령어를 사용합니다.

``` Bash
dotnet build
dotnet run
```
