(define-module (pulumi)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy))

(define-public pulumi
  (package
    (name "pulumi")
    (version "3.169.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://github.com/pulumi/pulumi/releases/download/v" version "/pulumi-v" version "-linux-x64.tar.gz"))
              (sha256 "03vjcmhkpxibjz9gkjvr6p2wjfg1gf6xb52gqqvw0qmnlrw3yg01")))
    (build-system copy-build-system)
    (arguments '(#:install-plan '(("pulumi" "bin/"))))
    (home-page "https://www.pulumi.com")
    (synopsis "Pulumi - Infrastructure as Code in any programming language 🚀")
    (description "Pulumi is an open source platform for automating, securing, and managing cloud resources, configuration, and secrets, using your favorite programming languages.")
    (license license:asl2.0)))

;; This allows you to run guix shell -f pulumi.scm
;; Remove this line if you just want to define a package.
pulumi
