(define-module (sveb packages fonts)
              #:use-module ((guix licenses) #:prefix license:)
 							#:use-module (guix packages)
 							#:use-module (guix download)
  						#:use-module (guix build-system font)
)

(define-public font-jetbrainsmono-nerd
  (package
    (name "font-jetbrainsmono-nerd")
    (version "3.2.1")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/JetBrainsMono.tar.xz"))
	      (sha256 (base64 "bPiCK8HKGONLBleMdJnzgMAZ5v/Ig+7SbfX0mN/MQAY="))))
    (build-system font-build-system)
    (synopsis "Patched JetBrainsMono Nerd Font")
		(description "Font")
    (home-page "https://github.com/ryanoasis/nerd-fonts")
    (license license:silofl1.1)))

    
