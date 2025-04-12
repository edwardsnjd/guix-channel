(define-module (nb)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy))

(define-public nb
  (let ((version "7.14.6")
        (revision "1")
        (commit "73dea893dca73f22c6eaadfd2649ff110f5c3157"))
    (package
      (name "nb")
      (version (git-version version revision commit))
      (source
        (origin
          (method git-fetch)
          (uri (git-reference
                 (url "https://github.com/xwmx/nb.git")
                 (commit commit)))
          (file-name (git-file-name name version))
          (sha256 (base32 "1q16fb8p7zi6krnj1j65qscnnzq112lhrlv879mxfdmhbgb09ijm"))))
      (build-system copy-build-system)
      (arguments
        '(#:install-plan '(("nb" "bin/"))))
      (home-page "https://xwmx.github.io/nb")
      (synopsis "nb is a command line and local web note‑taking, bookmarking, archiving, and knowledge base application.")
      (description "CLI and local web plain text note‑taking, bookmarking, and archiving with linking, tagging, filtering, search, Git versioning & syncing, Pandoc conversion, + more, in a single portable script.")
      (license license:agpl3))))

;; This allows you to run guix shell -f nb.scm.
;; Remove this line if you just want to define a package.
nb
