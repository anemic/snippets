# emerge
emerge --help
emerge: the other white meat (command-line interface to the Portage system)
Usage:
   emerge [ options ] [ action ] [ ebuild | tbz2 | file | @set | atom ] [ ... ]
   emerge [ options ] [ action ] < system | world >
   emerge < --sync | --metadata | --info >
   emerge --resume [ --pretend | --ask | --skipfirst ]
   emerge --help [ --verbose ] 
Options: -[abBcCdDefgGhjkKlnNoOpPqrsStuvV]
          [ --color < y | n >            ] [ --columns    ]
          [ --complete-graph             ] [ --deep       ]
          [ --jobs JOBS ] [ --keep-going ] [ --load-average LOAD            ]
          [ --newuse    ] [ --noconfmem  ] [ --nospinner  ]
          [ --oneshot   ] [ --onlydeps   ]
          [ --reinstall changed-use      ] [ --with-bdeps < y | n >         ]
Actions:  [ --depclean | --list-sets | --search | --sync | --version        ]

   For more help try 'emerge --help --verbose' or consult the man page.




# equo
equo --help

   ~ Sabayon Linux ~  	Entropy Package Manager - (C) 2010 

  Basic Options 

	--help 		this output 
	--version 	print version 
	--nocolor 	disable colorized output 

  Application Options 

	update 		update configured repositories 
		--force 		force sync regardless repositories status 
	repoinfo 	show repositories information 
		make.conf [repos] 		show make.conf for the chosen repositories 
		package.mask [repos] 		show package.mask for the chosen repositories 
		package.unmask [repos] 		show package.unmask for the chosen repositories 
		package.keywords [repos] 	show package.keywords for the chosen repositories 
		package.use [repos] 		show package.use for the chosen repositories 
		profile.link [repos] 		show make.profile link for the chosen repositories 
	notice [repos] 	repository notice board reader 
	status 		show respositories status 

	search 		search packages in repositories 
	match 		match a package in repositories 
		--multimatch 	return all the possible matches 
		--multirepo 	return matches from every repository 
		--showrepo 	print repository information (w/--quiet) 
		--showdesc 	print description too (w/--quiet) 

	hop <branch> 	upgrade your distribution to a new release (branch) 

	world 	update system with the latest available packages 
		--ask 		ask before making any changes 
		--fetch 	just download packages 
		--pretend 	only show what would be done 
		--verbose 	show more details about what is going on 
		--replay 	reinstall all the packages and their dependencies 
		--empty 	same as --replay 
		--resume 	resume previously interrupted operations 
		--skipfirst 	used with --resume, makes the first package to be skipped 
		--nochecksum 	disable package integrity check 
		--multifetch 	download multiple packages in parallel (default 3) 
		--multifetch=N 	download N packages in parallel (max 10) 

	upgrade 	same as world 

	security 	security infrastructure functions 
		update 		download the latest Security Advisories 
		list 		list all the available Security Advisories 
			--affected 	list only affected 
			--unaffected 	list only unaffected 
		info 		show information about provided advisories identifiers 
		install 	automatically install all the available security updates 
			--ask 		ask before making any changes 
			--fetch 	just download packages 
			--pretend 	just show what would be done 
			--quiet 	show less details (useful for scripting) 

	install 	install atoms or binary packages 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 
		--fetch 	just download packages without doing the install 
		--nodeps 	do not pull in any dependency 
		--resume 	resume previously interrupted operations 
		--skipfirst 	used with --resume, makes the first package in queue to be skipped 
		--clean 	remove downloaded packages after being used 
		--empty 	pull all the dependencies in, regardless their state 
		--relaxed 	calm down dependencies resolution algorithm (might be risky) 
		--deep 		makes dependency rules stricter 
		--verbose 	show more details about what is going on 
		--configfiles 	makes old configuration files to be removed 
		--nochecksum 	disable package integrity check 
		--multifetch 	download multiple packages in parallel (default 3) 
		--multifetch=N 	download N packages in parallel (max 10) 

	source 		download atoms source code 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 
		--nodeps 	do not pull in any dependency 
		--relaxed 	calm down dependencies resolution algorithm (might be risky) 
		--savehere 	save sources in current working directory 

	fetch 		just download packages without doing the install 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 
		--nodeps 	do not pull in any dependency 
		--relaxed 	calm down dependencies resolution algorithm (might be risky) 
		--multifetch 	download multiple packages in parallel (default 3) 
		--multifetch=N 	download N packages in parallel (max 10) 

	remove 		remove one or more packages 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 
		--nodeps 	do not pull in any dependency 
		--deep 		also pull unused dependencies where depends list is empty 
		--configfiles 	makes configuration files to be removed 
		--resume 	resume previously interrupted operations 

	config 		configure one or more installed packages 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 

	deptest 		look for unsatisfied dependencies 
		--quiet 	show less details (useful for scripting) 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 

	unusedpackages 		look for unused packages (pay attention) 
		--quiet 	show less details (useful for scripting) 
		--sortbysize 	sort packages by disk size 

	libtest 		look for missing libraries 
		--dump 		dump results to files 
		--listfiles 	print broken files to stdout 
		--quiet 	show less details (useful for scripting) 
		--ask 		ask before making any changes 
		--pretend 	just show what would be done 

	conf 		configuration files update tool 
		info 		show configuration files to be updated 
		update 		run the configuration files update function 

	query 		do misc queries on repository and local databases 
		belongs 	search from what package a file belongs 
		changelog 	show packages changelog 
		depends 	search what packages depend on the provided atoms 
		description 	search packages by description 
		files 		show files owned by the provided atoms 
		installed 	search a package into the local database 
		license 	show packages owning the provided licenses 
		list 		list packages based on the chosen parameter below 
			installed 		list installed packages 
			available [repos] 	list available packages 
		needed 		show runtime libraries needed by the provided atoms 
		orphans 	search files that do not belong to any package 
		removal 	show the removal tree for the specified atoms 
		required 	show atoms needing the provided libraries 
		sets 		search available package sets 
		slot 		show packages owning the provided slot 
		tags 		show packages owning the provided tags 
		--verbose 	show more details 
		--quiet 	print results in a scriptable way 

  !!! Use --verbose to get full help output





# eix
eix --help
Usage: eix [options] EXPRESSION

Search for packages in the index generated by eix-update.
EXPRESSION is true or false. Packages for which the EXPRESSION gives true,
are included in the final report.

EXPRESSION ::= [ --not | -! ] BRACE_OR_TEST |
               EXPRESSION [ --and | -a ] EXPRESSION |
               EXPRESSION [ --or  | -o ] EXPRESSION |
BRACE_OR_TEST ::= --open | -( EXPRESSION --close | -) |
               TEST_WITH_OPTIONS
TEST_WITH_OPTIONS ::= TEST_OPTIONS [PATTERN]

Global:
   Exclusive options:
     -h, --help            show this screen and exit
     -V, --version         show version and exit
     --dump                dump variables to stdout
     --dump-defaults       dump default values of variables
     --print               print the expanded value of a variable
     --print-all-useflags  print all IUSE words used in some version
     --print-all-keywords  print all KEYWORDS used in some version
     --print-all-slots     print all SLOT strings used in some version
     --print-all-provides  print all PROVIDE strings used in some package
     --print-all-licenses  print all LICENSE strings used in some package
     --print-world-sets    print the world sets
     --print-overlay-path  print the path of specified overlay
     --print-overlay-label print label of specified overlay

   Special:
     -t  --test-non-matching Before other output, print non-matching entries
                           of /etc/portage/package.* and non-matching names
                           of installed packages; this option is best
                           combined with -T to clean up /etc/portage/package.*
     -Q, --quick (toggle)  don't read unguessable slots of installed packages
         --care            always read slots of installed packages
         --cache-file      use another cache-file instead of /var/cache/eix

   Output:
     -q, --quiet (toggle)   (no) output
     -n, --nocolor          do not use ANSI color codes
     -F, --force-color      force colorful output
     -*, --pure-packages    Omit printing of overlay names and package number
     --only-names           -* with format <category>/<name>
     --xml (toggle)         output results in XML format
     -c, --compact (toggle) compact search results
     -v, --verbose (toggle) verbose search results
     -x, --versionsort  (toggle) sort output by slots/versions
     -l, --versionlines (toggle) print available versions line-by-line
                            and print IUSE on a per-version base.
         --format           format string for normal output
         --format-compact   format string for compact output
         --format-verbose   format string for verbose output

TEST_OPTIONS:
  Miscellaneous:
    -I, --installed       Next expression only matches installed packages.
    -i, --multi-installed Match packages installed in several versions.
    -d, --dup-packages    Match duplicated packages.
    -D, --dup-versions    Match packages with duplicated versions.
    -1, --slotted         Match packages with a nontrivial slot.
    -2, --slots           Match packages with two different slots.
    -u, --upgrade[+-]     Match packages without best slotted version.
                          +: settings from LOCAL_PORTAGE_CONFIG=true
                          -: settings from LOCAL_PORTAGE_CONFIG=false
    --stable[+-]          Match packages with a stable version
    --testing[+-]         Match packages with a testing or stable version.
    --non-masked[+-]      Match packages with a non-masked version.
    --system[+-]          Match @system packages.
    --installed-unstable  Match packages with a non-stable installed version.
    --installed-testing   Match packages with a testing    installed version.
    --installed-masked    Match packages with a masked     installed version.
    --world-file          Match packages of world file or @system.
    --world-set           Match packages of a world set or @system.
    --world               Match packages of @world (file, set or @system).
    --selected-file       Match packages of world file.
    --selected-set        Match packages of a world set.
    --selected            Match packages of @selected (world file or set).
    --binary              Match packages with *.tbz2 files.
    -O, --overlay                        Match packages from overlays.
    --in-overlay OVERLAY                 Match packages from OVERLAY.
    --only-in-overlay OVERLAY            Match packages only in OVERLAY.
    -J, --installed-overlay Match packages installed from overlays.
    --installed-from-overlay OVERLAY     Packages installed from OVERLAY.
    --installed-in-some-overlay          Packages with an installed version
                                         provided by some overlay.
    --installed-in-overlay OVERLAY       Packages with an installed version
                                         provided from OVERLAY.
    --restrict-fetch          Match packages with RESTRICT=fetch.
    --restrict-mirror         Match packages with RESTRICT=mirror.
    --restrict-primaryuri     Match packages with RESTRICT=primaryuri.
    --restrict-binchecks      Match packages with RESTRICT=binchecks.
    --restrict-strip          Match packages with RESTRICT=strip.
    --restrict-test           Match packages with RESTRICT=test.
    --restrict-userpriv       Match packages with RESTRICT=userpriv.
    --restrict-installsources Match packages with RESTRICT=installsources.
    --restrict-bindist        Match packages with RESTRICT=bindist.
    --properties-interactive  Match packages with PROPERTIES=interactive.
    --properties-live         Match packages with PROPERTIES=live.
    --properties-virtual      Match packages with PROPERTIES=virtual.
    --properties-set          Match packages with PROPERTIES=set.
    -T, --test-obsolete   Match packages with obsolete entries in
                          /etc/portage/package.* (see man eix).
                          Use -t to check non-existing packages.
    -|, --pipe            Use input from pipe of emerge -pv

  Search Fields:
    -S, --description       description
    -A, --category-name     "category/name"
    -C, --category          category
    -s, --name              name (default)
    -H, --homepage          homepage
    -L, --license           license
    -P, --provide           provides
    --set                   local package set name
    --slot                  slot
    --installed-slot        slot of installed version
    -U, --use               useflag (of the ebuild)
    --installed-with-use    enabled useflag (of installed package)
    --installed-without-use disabled useflag (of installed package)

  Type of Pattern:
    -r, --regex           Pattern is a regexp (default)
    -e, --exact           Pattern is the exact string
    -z, --substring       Pattern is a substring
    -b, --begin           Pattern is the beginning of the string
        --end             Pattern is the end       of the string
    -p, --pattern         Pattern is a wildcards-pattern
    -f [m], --fuzzy [m]   Use fuzzy-search with a max. levenshtein-distance m.




# eix-update
eix-update --help
Usage: eix-update [options]

 -h, --help              show a short help screen
 -V, --version           show version-string
     --dump              show eixrc-variables
     --dump-defaults     show default eixrc-variables
     --print             print the expanded value of a variable
 -n, --nocolor           don't use "colors" (percentage) in output
 -F, --force-color       force "color" on things that are not a terminal

 -q, --quiet             produce no output

 -o  --output            output to another file than /var/cache/eix
                         In addition, all permission checks are omitted.
 -x  --exclude-overlay   exclude matching overlays from the update-process.
                         Note that you can also exclude PORTDIR
                         using this option.

 -a  --add-overlay       add an overlay to the update-process.

 -m  --override-method   override cache method for matching overlays.

 -r  --repo-name         set label for matching overlay.





# portageq
portageq --help
>>> Portage information query tool
>>> $Id: portageq 14577 2009-10-11 23:01:00Z zmedico $
>>> Usage: portageq <command> [<option> ...]

Available commands:
   all_best_visible <root>
      Returns all best_visible packages (without .ebuild).
      
   best_version <root> <category/package>
      Returns category/package-version (without .ebuild).
      
   best_visible <root> [<category/package>]+
      Returns category/package-version (without .ebuild).
      
   config_protect 
      Returns the CONFIG_PROTECT paths.
      
   config_protect_mask 
      Returns the CONFIG_PROTECT_MASK paths.
      
   contents <root> <category/package>
      List the files that are installed for a given package, with
      one file listed on each line. All file names will begin with
      <root>.
      
   distdir 
      Returns the DISTDIR path.
      
   envvar <variable>+
      Returns a specific environment variable as exists prior to ebuild.sh.
      Similar to: emerge --verbose --info | egrep '^<variable>='
      
   filter_protected <root>
      Read filenames from stdin and write them to stdout if they are protected.
      All filenames are delimited by \n and must begin with <root>.
      
   gentoo_mirrors 
      Returns the mirrors set to use in the portage configuration.
      
   get_repo_path <root> <repo_id>+
      Returns the path to the repo named argv[1], argv[0] = $ROOT
      
   get_repos <root>
      Returns all repos with names (repo_name file) argv[0] = $ROOT
      
   has_version <root> <category/package>
      Return code 0 if it's available, 1 otherwise.
      
   is_protected <root> <filename>
      Given a single filename, return code 0 if it's protected, 1 otherwise.
      The filename must begin with <root>.
      
   list_preserved_libs <root>
      Print a list of libraries preserved during a package update in the form
      package: path. Returns 0 if no preserved libraries could be found,
      1 otherwise.
      
   mass_best_version <root> [<category/package>]+
      Returns category/package-version (without .ebuild).
      
   mass_best_visible <root> [<category/package>]+
      Returns category/package-version (without .ebuild).
      
   match <root> <atom>
      Returns a \n separated list of category/package-version.
      When given an empty string, all installed packages will
      be listed.
      
   metadata <root> <pkgtype> <category/package> [<key>]+
      Returns metadata values for the specified package.
      
   owners <root> [<filename>]+
      Given a list of files, print the packages that own the files and which
      files belong to each package. Files owned by a package are listed on
      the lines below it, indented by a single tab character (\t). All file
      paths must either start with <root> or be a basename alone.
      Returns 1 if no owners could be found, and 0 otherwise.
      
   pkgdir 
      Returns the PKGDIR path.
      
   portdir 
      Returns the PORTDIR path.
      
   portdir_overlay 
      Returns the PORTDIR_OVERLAY path.
      
   vdb_path 
      Returns the path used for the var(installed) package database for the
      set environment/configuration options.






