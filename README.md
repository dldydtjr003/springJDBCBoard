# 📋 Spring Boot JDBC 게시판 프로젝트 (SpringJPABoard)

> **Spring Boot와 Data JDBC를 활용하여 구축한 사용자 친화적인 게시판 서비스입니다.**
> 깔끔한 UI와 핵심 기능을 포함하여 웹 개발의 전반적인 흐름을 익힐 수 있도록 설계되었습니다.

---

## 🚀 주요 기능 (Key Features)

이 프로젝트는 게시판의 필수적인 **CRUD** 및 **검색 기능**을 완벽하게 지원합니다.

* **✨ 게시글 작성:** 제목과 내용을 입력하여 새로운 글을 등록할 수 있습니다.
* **📖 게시글 목록:** 페이징 처리가 된 깔끔한 목록을 통해 게시글을 확인할 수 있습니다.
* **🔍 게시글 검색:** 제목이나 작성자 키워드를 통해 원하는 글을 빠르게 찾을 수 있습니다.
* **✏️ 게시글 수정:** 본인이 작성한 글의 내용을 자유롭게 수정할 수 있습니다.
* **🗑️ 게시글 삭제:** 불필요한 게시물을 안전하게 삭제 처리합니다.

---

## 🛠 기술 스택 (Tech Stack)

### **Backend**
* **Framework:** Spring Boot 5.0.1
* **Language:** Java 17
* **Database:** Oracle
* **ORM:** Spring Data JDBC

### **Tools**
* **VCS:** Git, Sourcetree

---

## 🏗 프로젝트 구조 (Project Architecture)



```text
com.board
├── controller   # 웹 요청 처리 및 뷰 반환
├── domain       # Entity 클래스 (@Entity 적용)
├── repository   # JPA를 활용한 DB 접근 (BoardRepository)
├── service      # 비즈니스 로직 처리 (@Transactional 적용)

