(define-module (kotlin-language-server)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages java)
  #:use-module (gnu packages compression)
  #:use-module (guix build-system copy))

(define-public kotlin-language-server
  (package
    (name "kotlin-language-server")
    (version "1.3.13")
    (source
      (origin
        (method url-fetch)
        (uri (string-append "https://github.com/fwcd/kotlin-language-server/releases/download/" version "/server.zip"))
        (sha256 (base32 "1lmnv6r4x8mhk28bh9bwrn244slcknyp2q83d5w7qc3v10fxgrsg"))))
    (build-system copy-build-system)
    (inputs (list openjdk))
    (native-inputs (list unzip))
    (home-page "https://github.com/fwcd/kotlin-language-server")
    (synopsis "A Kotlin language server")
    (description "Intelligent Kotlin support for any editor/IDE using the Language Server Protocol")
    (license license:asl2.0)))

;; This allows you to run guix shell -f kotlin.scm
;; Remove this line if you just want to define a package.
kotlin-language-server
