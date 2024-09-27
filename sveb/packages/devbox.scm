(define-module (sveb packages devbox)
              #:use-module ((guix licenses) #:prefix license:)
 							#:use-module (guix packages)
 							#:use-module (guix download)
  						#:use-module (guix build-system go)
)


(define-public devbox
  (package
    (name "devbox")
    (version "0.13.1")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://github.com/jetify-com/devbox/releases/download/v" version "/devbox_0.13.1_linux_amd64.tar.gz"))
	      (sha256 (hex "1833736af5cc8d12080176da1255bb4ea3a97343dc81d117445ba5d2fa9d81b1"))))
    (build-system go-build-system)
    (synopsis "Development environment")
		(description "Instant, easy, and predictable development environments ")
    (home-page "https://www.jetify.com/devbox")
    (license asl2.0)))
