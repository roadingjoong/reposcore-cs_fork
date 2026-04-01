# C# CLI 프로그램 개발을 위한 추천 라이브러리

> 이 문서는 C# CLI 프로그램 개발 시 옵션 처리에 유용한 라이브러리를 소개합니다.

> 프로젝트 상황에 맞게 적절한 라이브러리를 선택해 사용하세요.

## 1. System.CommandLine

Microsoft에서 공식으로 제공하는 CLI 인자 파싱 라이브러리입니다.
### 특징
- .NET 공식 라이브러리
- 명령어, 옵션, 인자 파싱 자동화
- HELP 메시지 자동 생성
- 자동완성 기능 지원

### 설치 방법
아래 명령어를 터미널에 입력합니다.
(System.CommandLine은 현재 preview 버전이므로 --prerelease 옵션이 필요합니다.)
```
dotnet add package System.CommandLine --prerelease
```

### 사용 예시
아래는 `--token` 옵션을 받아서 출력하는 간단한 예시입니다.
```csharp
using System.CommandLine;

var tokenOption = new Option<string>("--token")
{
    Description = "GitHub 액세스 토큰"
};

var rootCommand = new RootCommand("CLI 프로그램 설명");
rootCommand.Options.Add(tokenOption);

rootCommand.SetAction(parseResult =>
{
    string? token = parseResult.GetValue(tokenOption);
    Console.WriteLine($"토큰: {token}");
});

var parseResult = rootCommand.Parse(args);
parseResult.Invoke();
```

### 실행 결과
```
$ dotnet run -- --token abc123
토큰: abc123
```

---

## 2. Spectre.Console.Cli

화려한 CLI 인터페이스를 제공하는 라이브러리입니다.

### 특징
- 컬러풀한 터미널 출력 지원
- 테이블, 진행률, 표시줄 등 다양한 UI 요소 제공
- 명령어 및 옵션 파싱 기능 포한
- 직관적인 API 제공

### 설치방법
아래 명령어를 터미널에 입력합니다.
```
dotnet add package Spectre.Console
```

### 사용 예시
아래는 컬러 텍스트 출력과 진행률 표시줄을 사용하는 예시입니다.
```csharp
using Spectre.Console;

AnsiConsole.MarkupLine("[green]성공[/]: 작업이 완료되었습니다.");

AnsiConsole.Progress().Start(ctx =>
{
    var task = ctx.AddTask("데이터 처리 중...");
    while (!ctx.IsFinished) task.Increment(10);
});
```

### 실행 결과
```
$ dotnet run
성공: 작업이 완료되었습니다.   ← '성공' 부분이 초록색으로 표시됨

데이터 처리 중... ━━━━━━━━━━━━━━━━━━━━━ 100%
```

---

## 3. CommandLineParser

간단하고 가벼운 CLI 인자 파싱 라이브러리입니다.

### 특징
- 간단한 API로 빠르게 적용 가능
- 옵션을 클래스 속성으로 정의하는 방식
- Help 메시지 자동 생성
- 가볍고 사용하기 쉬움

### 설치 방법
아래 명령어를 터미널에 입력합니다.
```
dotnet add package CommandLineParser
```

### 사용 예시
아래는 `--token` 옵션을 클래스로 정의해서 받아오는 예시입니다.
```csharp
using CommandLine;

class Options {
    [Option('t', "token", Required = true, HelpText = "GitHub 액세스 토큰")]
    public string? Token { get; set; }
}

class Program {
    static void Main(string[] args) {
        Parser.Default.ParseArguments<Options>(args)
            .WithParsed(o => Console.WriteLine($"토큰: {o.Token}"));
    }
}
```

### 실행 결과
```
$ dotnet run -- --token abc123
토큰: abc123
```

---

## 라이브러리 비교

| 라이브러리 | 난이도 | 특징 |
|---|---|---|
| System.CommandLine | 중간 | .NET 공식, 안정적 |
| Spectre.Console.Cli | 중간 | UI가 화려함 |
| CommandLineParser | 쉬움 | 가볍고 간단함 |

## 참고 링크

- [System.CommandLine 공식 문서](https://learn.microsoft.com/ko-kr/dotnet/standard/commandline/)
- [Spectre.Console 공식 문서](https://spectreconsole.net/)
- [CommandLineParser GitHub](https://github.com/commandlineparser/commandline)
```
