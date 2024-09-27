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
	      (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/Monaspace.tar.xz"))
	      (sha256 (base64 "5dLoGA1d8f5HO1mO2sX2fOOLHZBiSJNus4bdMyozg0Y="))))
    (build-system go-build-system)
    (synopsis "Development environment")
		(description "Instant, easy, and predictable development environments ")
    (home-page "https://github.com/ryanoasis/nerd-fonts")
    (license license:silofl1.1)))
