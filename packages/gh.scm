(define-module (gh)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy))

(define-public gh
  (package
    (name "gh")
    (version "2.82.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://github.com/cli/cli/releases/download/v" version "/gh_" version "_linux_amd64.tar.gz"))
              (sha256 "0as6z9bwf0prjx35rmzrany1pqxkj3lqmhkc9qwfmk6zfs3aibdg")))
    (build-system copy-build-system)
    (home-page "https://cli.github.com/")
    (synopsis "GitHub’s official command line tool")
    (description "gh is GitHub on the command line. It brings pull requests, issues, and other GitHub concepts to the terminal next to where you are already working with git and your code.")
    (license license:expat)))

;; This allows you to run guix shell -f kotlin.scm
;; Remove this line if you just want to define a package.
gh
