(define-module (sveb packages jetbrainsmono-nerd-font)
	       #:use-module (guix packages)
	       #:use-module (guix download)
	       #:use-module (guix build-system font))
	       #:use-module (guix licenses))

(define-public jetbrainsmono-nerd-font
  (package
    (name "JetBrainsMono-Nerd-Font")
    (version "3.2.1")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "JetBrainsMono.tar.xz"))
	      (sha256
		(base32 "6cf8822bc1ca18e34b06578c7499f380c019e6ffc883eed26df5f498dfcc4006"))))
    (build-system font-build-system)
    (synopsis "Patched JetBrainsMono Nerd Font")
    (home-page "https://github.com/ryanoasis/nerd-fonts")
    (license license:silofl1.1)))
    