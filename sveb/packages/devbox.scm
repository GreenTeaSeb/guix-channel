(define-module (sveb packages devbox)
              #:use-module (guix licenses)
 							#:use-module (guix packages)
 							#:use-module (guix download)
  						#:use-module (guix build-system go)
)


(define-public devbox
  (package
    (name "devbox")
    (version "0.13.1")
    (source (origin

    (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jetify-com/devbox")
             (commit (go-version->git-ref version))))
       (file-name (git-file-name name version))
	      (sha256 (base64 "GDNzavXMjRIIAXbaElW7TqOpc0PcgdEXRFul0vqdgbE="))))

    (build-system go-build-system)
    (arguments `(#:import-path "go.jetpack.io/devbox"))

    (synopsis "Development environment")
		(description "Instant, easy, and predictable development environments ")
    (home-page "https://www.jetify.com/devbox")
    (license asl2.0)))
