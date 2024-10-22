(define-module (sveb packages qt)
              #:use-module ((guix licenses) #:prefix license:)
 							#:use-module (guix packages)
 							#:use-module (guix download)
  						#:use-module (guix build-system cmake)
)

(define-public qt6ct
  (package
    (name "qt6ct")
    (version "0.9")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://github.com/trialuser02/qt6ct/releases/download/" version "/qt6ct-" version ".tar.xz"))
	      (sha256 (base64 "Cp8A23+cIAOzP60XFcvypIO/UKmQebl7+OXQvb0zks0="))))
    (build-system cmake-build-system)
    (synopsis "Qt6 Configuration Tool ")
		(description "Qt6 Configuration Tool")
    (home-page "https://github.com/trialuser02/qt6ct")
    (license license:bsd-2)))

