rem # Not use vim dotfiles at windows

del %HOMEPATH%"\.gitconfig
del %HOMEPATH%"\.gitignore
del %HOMEPATH%"\.gitmodules
del %HOMEPATH%"\.gitattributes
del %HOMEPATH%"\.gitconfig_local

mklink %HOMEPATH%"\.gitconfig" %CD%\.gitconfig
mklink %HOMEPATH%"\.gitignore" %CD%\.gitignore
mklink %HOMEPATH%"\.gitmodules" %CD%\.gitmodules
mklink %HOMEPATH%"\.gitattributes" %CD%\.gitattributes
mklink %HOMEPATH%"\.gitconfig_local" %CD%\.gitconfig_local
