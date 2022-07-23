# 마크다운(markdown) 작성

## 마크다운이란?
<p>
Markdown은 텍스트기반의 마크업 언어.
특수기호와 문자를 이용한 텍스트를 통해 빠르게 컨텐츠를 작성할 수 있다.
텍스트로 적은 내용을 HTML로 변환이 가능하다. 
</p>

## 마크다운의 장, 단점

### 장점
1. 간결하다.
2. 별도의 도구 없이 문법만 알면 사용 가능.
3. 텍스트로 저장되기 때문에 파일의 용량이 적다.
4. 변경이력 관리에 용이하다.
5. 지원하는 프로그램과 플랫폼이 다양하다. ex) github의 repository

### 단점
1. 표준이 없고 도구에 따라서 변환방식이나 생성물이 다를 수 있다.
2. 모든 HTML 마크업을 대신하지는 못한다. 

## 문법
### 헤더(Headers)
글머리. <br>
제목, 부제목을 적을 때 '#' 기호를 이용해 사용.
H1~H6까지 지원하고 H7부터는 지원하지 않는다.

```
# This is a H1
## THis is a H2
### This is a H3
#### This is a H4
##### This is a H5
###### This is a H6
```

# This is a H1
## THis is a H2
### This is a H3
#### This is a H4
##### This is a H5
###### This is a H6

### BlockQuote
<p>
이메일에서 사용하는 블록인용문자를 이용한다. 
다른 출처로부터 인용된 블록을 정의할 때 사용. 
인용된 블록은 들여쓰기로 표현된다. 
</p>
```
> This is a first blockquote.
>   > This is a second blockquote.
>   >   > - This is a third blockquote. / 인용 블록 안에서 다른 마크다운 요소를 포함할 수 있다. 
```
> This is a first blockquote.
>   > This is a second blockquote.
>   >   > - This is a third blockquote. / 인용 블록 안에서 다른 마크다운 요소를 포함할 수 있다. 

### 목록
#### 순서가 있는 목록 (Ordered list)
숫자와 점을 사용. 순서는 항상 내림차순으로 정의된다. 
```
1. 첫번째
2. 두번째
3. 세번째
```
1. 첫번째
2. 두번째
3. 세번째

#### 순서가 없는 목록 (Unorderer list)
<p>
글머리 기호를 사용. 
*는 색이 채워진 원형 기호
+는 색이 없는 원형 기호
-는 색이 채워진 사각형 기호
기호를 혼합해서 사용하는 것도 가능하다. 
</p>
```
* 빨강
    * 초록
        * 파랑
+ 빨강
    + 초록
        + 파랑
- 빨강
    - 초록
        - 파랑
* 빨강
    + 초록
        - 파랑
```

* 빨강
    * 초록
        * 파랑
+ 빨강
    + 초록
        + 파랑
- 빨강
    - 초록
        - 파랑
* 빨강
    + 초록
        - 파랑

### 코드 내용 기재
#### 들여쓰기
4개의 공백 또는 하나의 탭으로 들여쓰기를 만나면 코드블럭이 되고, 들여쓰지 않은 행을 만나면 끝남. 
```
This is a normal paragraph: 
    This is a code block.
end code block.
```

This is a normal paragraph: 

    This is a code block.

end code block.

#### 코드 블럭
1. ```<pre><code>{코드 내용}</code></pre>``` 사용

```
<pre>
<code>
public class BootSpringBootApplication {
    public static void main(String[] args) {
        System.println("Hello, world");
    }
}
</code>
</pre>
```
<pre>
<code>
public class BootSpringBootApplication {
    public static void main(String[] args) {
        System.println("Hello, world");
    }
}
</code>
</pre>

2. \``` 사용 <br>
코드 내용을 텍스트 형태로 나타내기 위해 \```을 사용. 
깃헙에서는 \``` 시작점에 사용하는 언어를 선언하여 문법강조가 가능하다. 

```
\```swift
let numDict: [String: Int] = ["A": 1, "B": 2, "C": 3]
for key in numDict.keys{ 
    print(key)
}
\```
```

```swift
let numDict: [String: Int] = ["A": 1, "B": 2, "C": 3]
for key in numDict.keys{ 
    print(key)
}
```