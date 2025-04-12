(define-module (kotlin)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages java)
  #:use-module (gnu packages compression)
  #:use-module (guix build-system copy))

(define-public kotlin
  (package
    (name "kotlin")
    (version "2.1.10")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "https://github.com/JetBrains/kotlin/releases/download/v" version "/kotlin-compiler-" version ".zip"))
        (sha256 (base32 "1cd6icm3rvnzaqci18y2kp43h9c6j2w5l7c1r0cqx0l9d1iy5sf6"))))
    (build-system copy-build-system)
    (inputs (list openjdk))
    (native-inputs (list unzip))
    (home-page "https://www.kotlinlang.org/")
    (synopsis "The Kotlin programming language")
    (description "Concise, statically typed, multiplatform programming language")
    (license license:asl2.0)))

;; This allows you to run guix shell -f kotlin.scm
;; Remove this line if you just want to define a package.
kotlin
