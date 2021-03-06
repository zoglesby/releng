#############################################################################
#
# GoOSe 6 DVD/netinst .iso installer configuration
#
#############################################################################

# this file is f13 rawhide-fedora.ks. Probably need to change a ton!

#############################################################################
# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
# Default is 670 (megs), CD size.
#part iso --size=4998

#############################################################################
# Add the repos you wish to use to compose here.  At least one of them needs group data.
repo --name=GoOSe-6 --baseurl=http://koji.gooselinux.org/releases/6/Everything/$basearch/os/
repo --name=GoOSe-6-src --baseurl=http://koji.gooselinux.org/releases/6/Everything/source/SRPMS/


#############################################################################
# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
# (default groups for the configured repos are added by --default)
%packages --default
# core
tcsh
goose-release
ntp
kernel*
-kernel*debug*
-kernel*-devel*
-kernel-kdump*
-syslog-ng
# Desktop Packages
@x11
@legacy-x
@basic-desktop
@general-desktop
@kde-desktop
nautilus-open-terminal
nspluginwrapper
esc
firefox
thunderbird
@desktop-debugging
@desktop-platform
# apps
@technical-writing
@eclipse
@internet-browser
@console-internet
@remote-desktop-clients
@system-admin-tools
@emacs
@tex
k3b
@network-tools
wireshark-gnome
# Devel packages
@additional-devel
@development
@desktop-platform-devel
@java-platform
@web-services
# Server packages
@server-platform
@network-server
@ftp-server
@mail-server
@mysql
@mysql-client
@postgresql
@postgresql-client
@network-server
@graphical-admin-tools
@cifs-file-server
@databases
@web-server
@web-servlet
@php
@turbogears
@large-systems
@perl-runtime
# Virt group
@virtualization
@virtualization-client
@virtualization-platform
# Useful miscellany
@fonts
@print-client
@input-methods
@directory-client
@network-file-system-client
@debugging
@hardware-monitoring
@performance

# Languages
@afrikaans-support
@albanian-support
@arabic-support
@armenian-support
@assamese-support
@basque-support
@belarusian-support
@bengali-support
@bhutanese-support
@burmese-support
@brazilian-support
@breton-support
@british-support
@bulgarian-support
@catalan-support
@chinese-support
@croatian-support
@czech-support
@danish-support
@dutch-support
@esperanto-support
@estonian-support
@ethiopic-support
@filipino-support
@finnish-support
@french-support
@gaelic-support
@galician-support
@georgian-support
@german-support
@greek-support
@gujarati-support
@hebrew-support
@hindi-support
@hungarian-support
@icelandic-support
@indonesian-support
@inuktitut-support
@irish-support
@italian-support
@japanese-support
@kannada-support
@kashmiri-support
@kashubian-support
@khmer-support
@konkani-support
@korean-support
@lao-support
@latvian-support
@lithuanian-support
@low-saxon-support
@macedonian-support
@malay-support
@malayalam-support
@maori-support
@marathi-support
@mongolian-support
@nepali-support
@northern-sotho-support
@norwegian-support
@oriya-support
@persian-support
@polish-support
@portuguese-support
@punjabi-support
@romanian-support
@russian-support
@serbian-support
@sindhi-support
@sinhala-support
@slovak-support
@slovenian-support
@somali-support
@southern-ndebele-support
@southern-sotho-support
@spanish-support
@swati-support
@swedish-support
@tagalog-support
@tamil-support
@telugu-support
@thai-support
@tibetan-support
@tsonga-support
@tswana-support
@turkish-support
@ukrainian-support
@urdu-support
@venda-support
@vietnamese-support
@walloon-support
@welsh-support
@xhosa-support
@zulu-support
# Size removals
-gimp-help
-java-1.6.0-openjdk-src
-xorg-x11-docs
-kernel-doc
-java-1.5.0-gcj-src
-java-1.5.0-gcj-devel
-libgcj-src
-*javadoc*
%end

############################################################################
#
# end of config - add comments here
#
############################################################################
