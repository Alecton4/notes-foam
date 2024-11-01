---
sitemap:
  lastmod: 2024-07-17 +0000
---

# Perl

Last modified: 2024-07-17 +0000

- [Interesting posts](#interesting-posts)
- [Development environment](#development-environment)
  - [Perlbrew](#perlbrew)
- [One-liners](#one-liners)
- [Regex](#regex)
  - [Catastrophic Backtracking](#catastrophic-backtracking)
- [Appendices](#appendices)
  - [Modules on CentOS 7.9.2009](#modules-on-centos-792009)
  - [Modules on Ubuntu 22.04](#modules-on-ubuntu-2204)

## Interesting posts

- [Official icon for perl programming language : r/perl](https://www.reddit.com/r/perl/comments/ok809e/official_icon_for_perl_programming_language/)
- [perlhack - How to hack on Perl - Perldoc Browser](https://perldoc.perl.org/perlhack)
- [perlinterp - An overview of the Perl interpreter - Perldoc Browser](https://perldoc.perl.org/perlinterp)
- [Why Perl? \| Hacker News](https://news.ycombinator.com/item?id=35646612)
- [Long Live Perl!. Still the Gold Standard \| by Rob Muhlestein \| Medium](https://medium.com/@rwxrob/long-live-perl-922b0a1194ef)
- [Why Perl is still relevant in 2022 - Stack Overflow](https://stackoverflow.blog/2022/07/06/why-perl-is-still-relevant-in-2022/)
- [Is there any good reason not to use perl scripts in place of bash logic? : r/perl](https://www.reddit.com/r/perl/comments/tk9t75/is_there_any_good_reason_not_to_use_perl_scripts/)
- [What are the differences between Perl, Python, AWK and sed? - Stack Overflow](https://stackoverflow.com/questions/366980/what-are-the-differences-between-perl-python-awk-and-sed)
- [Unix shell versus Perl](https://www.perlmonks.org/?node_id=668481)
- [What's the consensus on Perl scripting : r/linuxadmin](https://www.reddit.com/r/linuxadmin/comments/dtyhuk/whats_the_consensus_on_perl_scripting/)
- [Is Perl a write only language? : r/perl](https://www.reddit.com/r/perl/comments/18couta/is_perl_a_write_only_language/)
- [What Happened to Perl 7? \| Hacker News](https://news.ycombinator.com/item?id=31515787)
- [The Future of Perl](https://ovid.github.io/articles/the-future-of-perl.html)
- [Anyone interested in starting/joining a Perl Discord : r/perl](https://www.reddit.com/r/perl/comments/g9tcgn/anyone_interested_in_startingjoining_a_perl/)
- [Perl first commit: a “replacement” for Awk and sed \| Hacker News](https://news.ycombinator.com/item?id=36650120)
- [Life of a Computer Scientist: Using Perl like awk and sed](https://lifecs.likai.org/2008/10/using-perl-like-awk-and-sed.html)
- [Most popular Perl 5 web framework? : r/perl](https://www.reddit.com/r/perl/comments/1574tx3/most_popular_perl_5_web_framework/)
- [But I can't use CPAN](https://archive.shadowcat.co.uk/blog/matt-s-trout/but-i-cant-use-cpan/)
- [regex - What are the differences between glob-style patterns and regular expressions? - Stack Overflow](https://stackoverflow.com/questions/23702202/what-are-the-differences-between-glob-style-patterns-and-regular-expressions)
- [Perl and why you use it : r/perl](https://www.reddit.com/r/perl/comments/1dzblqj/perl_and_why_you_use_it/)
- [Why does OpenBSD still include Perl in its base installation? \| Hacker News](https://news.ycombinator.com/item?id=23360338)
- [The Perl and Raku Conference 2024 - Las Vegas \| Keith's Krazy Web Site](https://www.kcaran.com/posts/the-perl-and-raku-conference-2024-las-vegas.html)

Language:

- [Perl keywords - learn.perl.org](https://learn.perl.org/docs/keywords.html)
- [Functional programming in Perl - functional-perl.org](http://functional-perl.org/)
- [Passing by](https://www.perl.com/article/passing-by/)
- [Is "my" a function in Perl? - Stack Overflow](https://stackoverflow.com/questions/17358800/is-my-a-function-in-perl)
- [scope - Local and Global variables in perl - Stack Overflow](https://stackoverflow.com/questions/19100106/local-and-global-variables-in-perl)
- [perl - Is there such a thing as a list in scalar context? - Stack Overflow](https://stackoverflow.com/questions/8232951/is-there-such-a-thing-as-a-list-in-scalar-context)
- [Is the order of use of perl modules followed when evaluating subroutines? - Stack Overflow](https://stackoverflow.com/questions/59204393/is-the-order-of-use-of-perl-modules-followed-when-evaluating-subroutines)
- [unicode - Why does modern Perl avoid UTF-8 by default? - Stack Overflow](https://stackoverflow.com/questions/6162484/why-does-modern-perl-avoid-utf-8-by-default/6163129#6163129)
- [In Perl, what is the difference between a .pm (Perl module) and .pl (Perl script) file? - Stack Overflow](https://stackoverflow.com/questions/3402821/in-perl-what-is-the-difference-between-a-pm-perl-module-and-pl-perl-script)
- [Efficient Perl Code Error Handling Techniques](https://marketsplash.com/perl-code-error-handling-techniques/)
- [Best practices for handling exceptions in die/eval style](https://www.perlmonks.org/?node_id=1221326)
- [Why it's stupid to `use a variable as a variable name'](https://perl.plover.com/varvarname.html)
- [Why is Perl not putting Moose in the core?](https://ovid.github.io/articles/why-is-perl-not-putting-moose-in-the-core.html)
- [Politics in Programming](https://ovid.github.io/blog/politics-in-programming.html)
- [use lib "."](https://www.perlmonks.org/?node_id=11153844)
- `$?`:
  - [What does it mean when I get a huge exit status when closing a pipe in perl - Stack Overflow](https://stackoverflow.com/questions/29914583/what-does-it-mean-when-i-get-a-huge-exit-status-when-closing-a-pipe-in-perl)
  - [Why is the exit code 255 instead of -1 in Perl? - Stack Overflow](https://stackoverflow.com/questions/2726447/why-is-the-exit-code-255-instead-of-1-in-perl)
- [rose db object - Perl module "did not return a true value" - Stack Overflow](https://stackoverflow.com/questions/5012665/perl-module-did-not-return-a-true-value)
- [Perl C++ C# 使用 POST GET 存取 JSON 等網路資源 \| 人生海海](https://heavenchou.buddhason.org/node/314)
- [The problem of "the" default shell](https://www.perlmonks.org/?node_id=1205217)

Toolchain:

- [What is the Perl Core?](https://www.perl.com/article/what-is-the-perl-core-/)
- [How can I tell if a Perl module is core or part of the standard install? - Stack Overflow](https://stackoverflow.com/questions/2049735/how-can-i-tell-if-a-perl-module-is-core-or-part-of-the-standard-install)
- [perl - How do I get a list of installed CPAN modules? - Stack Overflow](https://stackoverflow.com/questions/115425/how-do-i-get-a-list-of-installed-cpan-modules/58114369#58114369)
- [How to Install Perlbrew and Manage Multiple Versions of Perl 5 on CentOS 7 \| DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-perlbrew-and-manage-multiple-versions-of-perl-5-on-centos-7)
- [\[Perl\]如何在 Visual Studio Code 建立 Perl 的程式開發環境 (Windows/Linux) \| Vixual](http://www.vixual.net/blog/archives/98)
- [packaging - Bundling up a perl script with its dependencies? - Stack Overflow](https://stackoverflow.com/questions/28716807/bundling-up-a-perl-script-with-its-dependencies)

Docs:

- [Perl Releases - dev.perl.org](https://dev.perl.org/perl5/news/)
- [perltoc - perl documentation table of contents - Perldoc Browser](https://perldoc.perl.org/perltoc)

Tutorials:

- [Learn Perl - www.perl.org](https://www.perl.org/learn.html)
- [Tutorials](https://www.perlmonks.org/?node=Tutorials)
- [perlstyle - Perl style guide - Perldoc Browser](https://perldoc.perl.org/perlstyle):
  >
  > ```perl
  > $ALL_CAPS_HERE   # constants only (beware clashes with perl vars!)
  > $Some_Caps_Here  # package-wide global/static
  > $no_caps_here    # function scope my() or local() variables
  > ```
  >
- [perl - The Perl 5 language interpreter - Perldoc Browser](https://perldoc.pl/perl#Tutorials)
- [Modern Perl: a Perl Tutorial 4e Table of Contents](http://modernperlbooks.com/books/modern_perl_2016/index.html)
- [Learn Perl in about 2 hours 30 minutes @ Things Of Interest](https://qntm.org/perl_en)
  - [Learn Perl in about 2 hours 30 minutes : r/programming](https://www.reddit.com/r/programming/comments/j5er5/learn_perl_in_about_2_hours_30_minutes/)
- [perl.gr - Getting started](https://perl.gr/en/getting-started)
- [Perl Tutorial](https://www.perltutorial.org/)
- [Perl Maven - for people who want to get the most out of programming in Perl](https://perlmaven.com/)

## Development environment

Pre-installed:

- CentOS Linux release 7.9.2009: `v5.16.3` without `cpan`
  - Unicode: 6.1
  - Modules installed: See [Appendices](#modules-on-centos-792009).

- Ubuntu 22.04.4 LTS: `v5.34.0` with `cpan`
  - Modules installed: See [Appendices](#modules-on-ubuntu-2204).

### Perlbrew

- openSUSE Tumbleweed: See [[openSUSE/dev-env#Perl]].

## One-liners

- Remove carriage return: `perl -i -pe 's/\r//' PATH/TO/FILE`

*References*:

- [learnbyexample/learn_perl_oneliners: Example based guide for text processing with Perl from the command line](https://github.com/learnbyexample/learn_perl_oneliners)
- [Perl one-liners](https://gist.github.com/joyrexus/7328094)
- [Demystifying Perl One-Liners - Walter C. Mankowski - TPRC 2024 - YouTube](https://www.youtube.com/watch?v=ZqSddysHJb0)
- [Remove carriage return in Unix - Stack Overflow](https://stackoverflow.com/questions/800030/remove-carriage-return-in-unix/35065082#35065082)

## Regex

### Catastrophic Backtracking

From Phind:

> Crafting a regular expression that takes years to match input strings is a technique known as a "catastrophic backtracking" exploit. This happens when a regular expression is designed in such a way that it forces the regex engine to explore an exponentially growing number of possibilities before concluding that a match has been found or that no match is possible. This can lead to extremely slow performance, effectively causing a denial-of-service (DoS) attack against programs that process such regular expressions, especially if the input strings are large or if the regex engine is inefficient in handling the backtracking.
>
> ### Principle Behind Crafting Such Regex
>
> The principle behind crafting such a regex involves exploiting the regex engine's behavior during the backtracking phase. Here's a simplified explanation:
>
> 1. **Excessive Backtracking**: The regex is designed in a way that it repeatedly tries different paths to find a match, leading to a situation where the regex engine spends a lot of time exploring dead ends.
>
> 2. **Nested Quantifiers**: Placing nested quantifiers (`*` or `+`) around groups that can match a wide variety of inputs encourages the regex engine to explore many combinations.
>
> 3. **Alternation and Lookahead/Ahead Assertions**: Using alternation (`|`) combined with lookahead or lookbehind assertions can significantly increase the number of branches the regex engine needs to explore.
>
> ### Example
>
> Consider the following regex pattern:
>
> ```regex
> ^(?!.*(.*)\1)(.*)(?=.*\1).$
> ```
>
> This pattern attempts to match any string that repeats the same sequence of characters twice. However, it uses a negative lookahead `(?!.*(.*)\1)` to ensure that the repeated sequence is not the entire string, and then another lookahead `(?=.*\1)` to check for the repetition. This pattern can cause catastrophic backtracking because:
>
> - The innermost group `(.*)` matches any character zero or more times.
> - The outermost group `.*` again matches any character zero or more times.
> - The negative lookahead `(?!.*(.*)\1)` checks for the absence of the entire string being the repeated sequence, which is unnecessary and adds complexity.
> - The final lookahead `(?=.*\1)` checks for the repetition of the sequence.
>
> ### How It Works
>
> For a string like `"abcabc"`, the regex engine starts by trying to match the first character. Then, it enters the first lookahead, which tries to match the entire string as the repeated sequence, failing because the string is not a palindrome. It then moves on to the next part of the regex, which tries to match any character, and then enters the second lookahead, which again tries to match the entire string as the repeated sequence, failing for the same reason. This process repeats, with the regex engine constantly checking for the repeated sequence and failing, leading to excessive backtracking.
>
> ### Mitigation
>
> To mitigate the risk of catastrophic backtracking, developers should:
>
> - Avoid using nested quantifiers excessively.
> - Limit the use of alternation and lookahead/lookbehind assertions.
> - Prefer simpler patterns whenever possible.
> - Validate and sanitize user input to prevent injection attacks that could introduce malicious regex patterns.
>
> Understanding and mitigating the risks associated with regular expressions is crucial for developing secure and efficient applications.

*References*:

- [Runaway Regular Expressions: Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
- [Catastrophic Backtracking in Regular Expressions \| by Dheeraj Kumar Rao \| JavaScript Kingdom \| Medium](https://medium.com/javascript-kingdom/catastrophic-backtracking-in-regular-expressions-df717661da18)

## Appendices

### Modules on CentOS 7.9.2009

<details markdown="block">

```text
AnyDBM_File;
Attribute::Handlers;
AutoLoader;
AutoSplit;
B::Concise;
B::Debug;
B::Deparse;
Benchmark;
B::Showlex;
B::Terse;
Business::ISBN;
Business::ISBN10;
Business::ISBN13;
Business::ISBN::Data;
B::Xref;
Carp;
Carp::Heavy;
Class::Struct;
Compress::Raw::Bzip2;
Compress::Raw::Zlib;
Compress::Zlib;
Config;
Config::Extensions;
Cwd;
Data::Dumper;
Date::Format;
Date::Format::Generic;
Date::Language;
Date::Language::Afar;
Date::Language::Amharic;
Date::Language::Austrian;
Date::Language::Brazilian;
Date::Language::Bulgarian;
Date::Language::Chinese;
Date::Language::Chinese_GB;
Date::Language::Czech;
Date::Language::Danish;
Date::Language::Dutch;
Date::Language::English;
Date::Language::Finnish;
Date::Language::French;
Date::Language::Gedeo;
Date::Language::German;
Date::Language::Greek;
Date::Language::Hungarian;
Date::Language::Icelandic;
Date::Language::Italian;
Date::Language::Norwegian;
Date::Language::Oromo;
Date::Language::Romanian;
Date::Language::Russian;
Date::Language::Russian_cp1251;
Date::Language::Russian_koi8r;
Date::Language::Sidama;
Date::Language::Somali;
Date::Language::Spanish;
Date::Language::Swedish;
Date::Language::Tigrinya;
Date::Language::TigrinyaEritrean;
Date::Language::TigrinyaEthiopian;
Date::Language::Turkish;
Date::Parse;
DB;
DB;    # Do not trace this 1; below!
DB::fake;
Devel::Peek;
Devel::PPPort;
Devel::SelfStubber;
Digest;
Digest::base;
Digest::file;
Digest::MD5;
DirHandle;
Dumpvalue;
DynaLoader;
Encode;
Encode::Alias;
Encode::Byte;
Encode::CJKConstants;
Encode::CN;
Encode::CN::HZ;
Encode::Config;
Encode::EBCDIC;
Encode::Encoder;
Encode::Encoding;
Encode::GSM0338;
Encode::Guess;
Encode::JP;
Encode::JP::H2Z;
Encode::JP::JIS7;
Encode::KR;
Encode::KR::2022_KR;
Encode::Locale;
Encode::MIME::Header;
Encode::MIME::Header::ISO_2022_JP;
Encode::MIME::Name;
Encode::Symbol;
Encode::TW;
Encode::Unicode;
Encode::Unicode::UTF7;
English;
Errno;
Error;
Error::Simple;
Error::subs;
Error::WarnDie;
EVERY;
EVERY;         @ISA = 'NEXT';    EVERY::ELSEWHERE::buildAUTOLOAD();
EVERY::LAST;   @ISA = 'EVERY';   EVERY::ELSEWHERE::buildAUTOLOAD();
Exporter;
Exporter::Heavy;
ExtUtils::Command;
ExtUtils::Constant;
ExtUtils::Constant::Base;
ExtUtils::Constant::ProxySubs;
ExtUtils::Constant::Utils;
ExtUtils::Constant::XS;
ExtUtils::Miniperl;
Fcntl;
File::Basename;
FileCache;
File::Compare;
File::Copy;
File::DosGlob;
File::Find;
File::Glob;
File::GlobMapper;
FileHandle;
File::Listing;
File::Listing::apache;
File::Listing::dosftp;
File::Listing::netware;
File::Listing::unix;
File::Listing::vms;
File::Path;
File::Spec;
File::Spec::Cygwin;
File::Spec::Epoc;
File::Spec::Functions;
File::Spec::Mac;
File::Spec::OS2;
File::Spec::Unix;
File::Spec::Win32;
File::stat;
File::Temp;
File::Temp::Dir;
Filter::cpp;
Filter::sh;
Filter::Simple;
FindBin;
GDBM_File;
Getopt::Long;
Getopt::Long::CallBack;
Getopt::Long::Parser;
Getopt::Std;
Git;
Git::activestate_pipe;
Git::I18N;
Git::IndexInfo;
Hash::Util;
Hash::Util::FieldHash;
HTML::Entities;
HTML::Filter;
HTML::HeadParser;
HTML::LinkExtor;
HTML::Parser;
HTML::PullParser;
HTML::Tagset;
HTML::TokeParser;
HTTP::Config;
HTTP::Cookies;
HTTP::Cookies::Microsoft;
HTTP::Cookies::Netscape;
HTTP::Daemon;
HTTP::Daemon::ClientConn;
HTTP::Date;
HTTP::Headers;
HTTP::Headers::Auth;
HTTP::Headers::ETag;
HTTP::Headers::Util;
HTTP::Message;
HTTP::Negotiate;
HTTP::Request;
HTTP::Request::Common;
HTTP::Response;
HTTP::Status;
HTTP::Tiny;
I18N::Collate;
I18N::Langinfo;
I18N::LangTags;
I18N::LangTags::Detect;
I18N::LangTags::List;
IO;
IO::Compress::Base::Common;
IO::Compress::Gzip::Constants;
IO::Compress::Zip::Constants;
IO::Compress::Zlib::Extra;
IO::Dir;
IO::File;
IO::Handle;
IO::HTML;
IO::Pipe;
IO::Pipe::End;
IO::Poll;
IO::Seekable;
IO::Select;
IO::Socket;
IO::Socket::INET;
IO::Socket::IP;
IO::Socket::SSL;
IO::Socket::SSL::Intercept;
IO::Socket::SSL::Session_Cache;
IO::Socket::SSL::SSL_Context;
IO::Socket::SSL::SSL_HANDLE;
IO::Socket::SSL::Utils;
IO::Socket::UNIX;
IO::Uncompress::Adapter::Bunzip2;
IO::Uncompress::Adapter::Identity;
IO::Uncompress::Adapter::Inflate;
IO::Uncompress::Unzip;
IPC::Msg;
IPC::Open2;
IPC::Open3;
IPC::Semaphore;
IPC::SharedMem;
IPC::SysV;
List::Util;
List::Util::XS;
LWP;
LWP::Authen::Basic;
LWP::Authen::Digest;
LWP::Authen::Ntlm;
LWP::ConnCache;
LWP::DebugFile;
LWP::Debug;  # legacy
LWP::MediaTypes;
LWP::MemberMixin;
LWP::Protocol;
LWP::Protocol::cpan;
LWP::Protocol::data;
LWP::Protocol::file;
LWP::Protocol::ftp;
LWP::Protocol::GHTTP;
LWP::Protocol::gopher;
LWP::Protocol::http;
LWP::Protocol::http::Socket;
LWP::Protocol::http::SocketMethods;
LWP::Protocol::loopback;
LWP::Protocol::mailto;
LWP::Protocol::nntp;
LWP::Protocol::nogo;
LWP::RobotUA;
LWP::Simple;
LWP::UserAgent;
Math::BigFloat;
Math::BigFloat::Trace;
Math::BigInt;
Math::BigInt::Calc;
Math::BigInt::CalcEmu;
Math::BigInt::FastCalc;
Math::BigInt::Trace;
Math::BigRat;
Math::Complex;
Math::Trig;
Memoize;
Memoize::AnyDBM_File;
Memoize::Expire;
Memoize::ExpireFile;
Memoize::ExpireTest;
Memoize::NDBM_File;
Memoize::SDBM_File;
Memoize::Storable;
MIME::Base64;
MIME::QuotedPrint;
Module::CoreList::TieHashDelta;
Mozilla::CA;
NDBM_File;
Net::Cmd;
Net::Config;
Net::Domain;
Net::FTP;
Net::FTP::A;
Net::FTP::dataconn;
Net::FTP::E;
Net::FTP::I;
Net::FTP::L;
Net::hostent;
Net::HTTP;
Net::HTTP::Methods;
Net::HTTP::NB;
Net::HTTPS;
Net::LibIDN;
Net::netent;
Net::Netrc;
Net::NNTP;
Net::Ping;
Net::POP3;
Net::protoent;
Net::servent;
Net::SMTP;
Net::SSLeay;
Net::SSLeay::Handle;
Net::Time;
NEXT;
NEXT::ACTUAL::DISTINCT; @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::ACTUAL;           @ISA = 'NEXT';     NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::ACTUAL::UNSEEN;   @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::DISTINCT::ACTUAL; @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::DISTINCT;         @ISA = 'NEXT';     NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT;                                  NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::UNSEEN::ACTUAL;   @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::UNSEEN;           @ISA = 'NEXT';     NEXT::ELSEWHERE::buildAUTOLOAD();
ODBM_File;
Opcode;
PerlIO;
PerlIO::encoding;
PerlIO::mmap;
PerlIO::scalar;
PerlIO::via;
PerlIO::via::QuotedPrint;
Pod::Escapes;
Pod::Functions;
Pod::Html;
Pod::Man;
Pod::ParseLink;
Pod::Perldoc;
Pod::Perldoc::BaseTo;
Pod::Perldoc::GetOptsOO;
Pod::Perldoc::ToANSI;
Pod::Perldoc::ToChecker;
Pod::Perldoc::ToMan;
Pod::Perldoc::ToNroff;
Pod::Perldoc::ToPod;
Pod::Perldoc::ToRtf;
Pod::Perldoc::ToTerm;
Pod::Perldoc::ToText;
Pod::Perldoc::ToTk;
Pod::Perldoc::ToXml;
Pod::Simple;
Pod::Simple::BlackBox;
Pod::Simple::Checker;
Pod::Simple::Debug;
Pod::Simple::DumpAsText;
Pod::Simple::DumpAsXML;
Pod::Simple::HTML;
Pod::Simple::HTMLBatch;
Pod::Simple::HTMLLegacy;
Pod::Simple::LinkSection;
Pod::Simple::Methody;
Pod::Simple::Progress;
Pod::Simple::PullParser;
Pod::Simple::PullParserEndToken;
Pod::Simple::PullParserStartToken;
Pod::Simple::PullParserTextToken;
Pod::Simple::PullParserToken;
Pod::Simple::RTF;
Pod::Simple::Search;
Pod::Simple::SimpleTree;
Pod::Simple::Text;
Pod::Simple::TextContent;
Pod::Simple::TiedOutFH;
Pod::Simple::Transcode;
Pod::Simple::TranscodeDumb;
Pod::Simple::TranscodeSmart;
Pod::Simple::XHTML;
Pod::Simple::XHTML::LocalPodLinks;
Pod::Simple::XMLOutStream;
Pod::Text;
Pod::Text::Color;
Pod::Text::Overstrike;
Pod::Text::Termcap;
Pod::Usage;
POSIX;
POSIX::SigAction;
POSIX::SigRt;
POSIX::SigSet;
Safe;
Scalar::Util;
SDBM_File;
Search::Dict;
SelectSaver;
SelfLoader;
Socket;
Storable; @ISA = qw(Exporter);
Symbol;
Sys::Hostname;
Term::ANSIColor;
Term::Cap;
Term::Complete;
Term::ReadKey;
Term::ReadKey;    # return to package ReadKey so AutoSplit is happy
Term::ReadLine;         # So late to allow the above code be defined?
Term::ReadLine::Stub;
Term::ReadLine::TermCap;
Term::ReadLine::Tk;
Test;
Text::Abbrev;
Text::Balanced;
Text::Balanced::ErrorMsg;
Text::Balanced::Extractor;
Text::ParseWords;
Text::Tabs;
Text::Wrap;
Thread;
Thread::Semaphore;
Tie::Array;
Tie::ExtraHash;
Tie::File;
Tie::File::Cache;
Tie::File::Heap;
Tie::Handle;
Tie::Hash;
Tie::Hash::NamedCapture;
Tie::Memoize;
Tie::RefHash;
Tie::RefHash::Nestable;
Tie::Scalar;
Tie::StdArray;
Tie::StdHandle;
Tie::StdHash;
Tie::StdScalar;
Tie::SubstrHash;
Time::gmtime;
Time::HiRes;
Time::Local;
Time::localtime;
Time::tm;
Time::Zone;
U64;
Unicode::Collate;
Unicode::Collate::CJK::Big5;
Unicode::Collate::CJK::GB2312;
Unicode::Collate::CJK::JISX0208;
Unicode::Collate::CJK::Korean;
Unicode::Collate::CJK::Pinyin;
Unicode::Collate::CJK::Stroke;
Unicode::Collate::Locale;
Unicode::Normalize;
Unicode::UCD;
UNIVERSAL;
URI;
URI::data;  # RFC 2397
URI::Escape;
URI::file;
URI::file::Base;
URI::file::FAT;
URI::file::Mac;
URI::file::OS2;
URI::file::QNX;
URI::file::Unix;
URI::file::Win32;
URI::_foreign;
URI::ftp;
URI::_generic;
URI::gopher;  # <draft-murali-url-gopher>, Dec 4, 1996
URI::Heuristic;
URI::http;
URI::https;
URI::_idna;
URI::IRI;
URI::_ldap;
URI::ldap;
URI::ldapi;
URI::ldaps;
URI::_login;
URI::mailto;  # RFC 2368
URI::mms;
URI::news;  # draft-gilman-news-url-01
URI::nntp;  # draft-gilman-news-url-01
URI::pop;   # RFC 2384
URI::_punycode;
URI::_query;
URI::QueryParam;
URI::rlogin;
URI::rsync;  # http://rsync.samba.org/
URI::rtsp;
URI::rtspu;
URI::_segment;
URI::_server;
URI::sip;
URI::sips;
URI::snews;  # draft-gilman-news-url-01
URI::Split;
URI::ssh;
URI::telnet;
URI::tn3270;
URI::URL;
URI::urn::isbn;  # RFC 3187
URI::urn::oid;  # RFC 2061
URI::urn;  # RFC 2141
URI::_userpass;
URI::WithBase;
User::grent;
User::pwent;
WWW::RobotRules;
WWW::RobotRules::AnyDBM_File;
WWW::RobotRules::InCore;
XSLoader;
Yet::Another::AutoSplit;
Yet::More::Attributes;
```

</details>

### Modules on Ubuntu 22.04

<details markdown="block">

```text
Algorithm::Diff::XS;
Algorithm::Diff::_impl;
Algorithm::Diff;
Algorithm::Merge;
AnyDBM_File;
App::Cpan;
App::Prove::State::Result::Test;
App::Prove::State::Result;
App::Prove::State;
App::Prove;
Archive::Tar::Constant;
Archive::Tar::File;
Archive::Tar;
Attribute::Handlers;
AutoLoader;
AutoSplit;
B::Concise;
B::Deparse;
B::Op_private;
B::Showlex;
B::Terse;
B::Xref;
Benchmark;
CPAN::Author;
CPAN::Bundle;
CPAN::CacheMgr;
CPAN::Complete;
CPAN::Debug;
CPAN::DeferredCode;
CPAN::Distribution;
CPAN::Distroprefs::Iterator;
CPAN::Distroprefs::Pref;
CPAN::Distroprefs::Result::Error;
CPAN::Distroprefs::Result::Fatal;
CPAN::Distroprefs::Result::Success;
CPAN::Distroprefs::Result::Warning;
CPAN::Distroprefs::Result;
CPAN::Distroprefs;
CPAN::Distrostatus;
CPAN::Exception::RecursiveDependency;
CPAN::Exception::blocked_urllist;
CPAN::Exception::yaml_not_installed;
CPAN::Exception::yaml_process_error;
CPAN::FTP::netrc;
CPAN::FTP;
CPAN::FirstTime;
CPAN::HTTP::Client;
CPAN::HTTP::Credentials;
CPAN::HandleConfig;
CPAN::Index;
CPAN::InfoObj;
CPAN::Kwalify;
CPAN::LWP::UserAgent;
CPAN::Meta::Converter;
CPAN::Meta::Feature;
CPAN::Meta::History;
CPAN::Meta::Merge;
CPAN::Meta::Prereqs;
CPAN::Meta::Requirements;
CPAN::Meta::Spec;
CPAN::Meta::Validator;
CPAN::Meta::YAML; # git description: v1.68-2-gcc5324e
CPAN::Meta;
CPAN::Mirrored::By;
CPAN::Mirrors;
CPAN::Module;
CPAN::Nox;
CPAN::Plugin::Specfile;
CPAN::Plugin;
CPAN::Prompt;
CPAN::Queue::Item;
CPAN::Queue;
CPAN::Shell;
CPAN::Tarzip;
CPAN::URL;
CPAN::Version;
CPAN;
Carp::Heavy;
Carp;
Class::Struct;
Compress::Raw::Bzip2;
Compress::Raw::Zlib;
Compress::Zlib;
Config::Extensions;
Config::Perl::V;
Config;
Cwd;
DB::Obj;
DB::fake;
DB;
DB;    # Do not trace this 1; below!
Data::Dumper;
Debconf::AutoSelect;
Debconf::Base;
Debconf::Client::ConfModule;
Debconf::ConfModule;
Debconf::Config;
Debconf::Db;
Debconf::DbDriver::Backup;
Debconf::DbDriver::Cache;
Debconf::DbDriver::Copy;
Debconf::DbDriver::Debug;
Debconf::DbDriver::DirTree;
Debconf::DbDriver::Directory;
Debconf::DbDriver::File;
Debconf::DbDriver::LDAP;
Debconf::DbDriver::PackageDir;
Debconf::DbDriver::Pipe;
Debconf::DbDriver::Stack;
Debconf::DbDriver;
Debconf::Element::Dialog::Boolean;
Debconf::Element::Dialog::Error;
Debconf::Element::Dialog::Multiselect;
Debconf::Element::Dialog::Note;
Debconf::Element::Dialog::Password;
Debconf::Element::Dialog::Progress;
Debconf::Element::Dialog::Select;
Debconf::Element::Dialog::String;
Debconf::Element::Dialog::Text;
Debconf::Element::Editor::Boolean;
Debconf::Element::Editor::Error;
Debconf::Element::Editor::Multiselect;
Debconf::Element::Editor::Note;
Debconf::Element::Editor::Password;
Debconf::Element::Editor::Progress;
Debconf::Element::Editor::Select;
Debconf::Element::Editor::String;
Debconf::Element::Editor::Text;
Debconf::Element::Gnome::Boolean;
Debconf::Element::Gnome::Error;
Debconf::Element::Gnome::Multiselect;
Debconf::Element::Gnome::Note;
Debconf::Element::Gnome::Password;
Debconf::Element::Gnome::Progress;
Debconf::Element::Gnome::Select;
Debconf::Element::Gnome::String;
Debconf::Element::Gnome::Text;
Debconf::Element::Gnome;
Debconf::Element::Multiselect;
Debconf::Element::Noninteractive::Boolean;
Debconf::Element::Noninteractive::Error;
Debconf::Element::Noninteractive::Multiselect;
Debconf::Element::Noninteractive::Note;
Debconf::Element::Noninteractive::Password;
Debconf::Element::Noninteractive::Progress;
Debconf::Element::Noninteractive::Select;
Debconf::Element::Noninteractive::String;
Debconf::Element::Noninteractive::Text;
Debconf::Element::Noninteractive;
Debconf::Element::Select;
Debconf::Element::Teletype::Boolean;
Debconf::Element::Teletype::Error;
Debconf::Element::Teletype::Multiselect;
Debconf::Element::Teletype::Note;
Debconf::Element::Teletype::Password;
Debconf::Element::Teletype::Progress;
Debconf::Element::Teletype::Select;
Debconf::Element::Teletype::String;
Debconf::Element::Teletype::Text;
Debconf::Element::Web::Boolean;
Debconf::Element::Web::Error;
Debconf::Element::Web::Multiselect;
Debconf::Element::Web::Note;
Debconf::Element::Web::Password;
Debconf::Element::Web::Progress;
Debconf::Element::Web::Select;
Debconf::Element::Web::String;
Debconf::Element::Web::Text;
Debconf::Element;
Debconf::Encoding;
Debconf::Format::822;
Debconf::Format;
Debconf::FrontEnd::Dialog;
Debconf::FrontEnd::Editor;
Debconf::FrontEnd::Gnome;
Debconf::FrontEnd::Kde;
Debconf::FrontEnd::Noninteractive;
Debconf::FrontEnd::Passthrough;
Debconf::FrontEnd::Readline;
Debconf::FrontEnd::ScreenSize;
Debconf::FrontEnd::Teletype;
Debconf::FrontEnd::Text;
Debconf::FrontEnd::Web;
Debconf::FrontEnd;
Debconf::Gettext;
Debconf::Iterator;
Debconf::Log;
Debconf::Path;
Debconf::Priority;
Debconf::Question;
Debconf::Template::Transient;
Debconf::Template;
Debconf::TmpFile;
Debian::DebConf::Client::ConfModule;
DebianLinux;
Devel::PPPort;
Devel::Peek;
Devel::SelfStubber;
Digest::MD5;
Digest::SHA;
Digest::base;
Digest::file;
Digest;
DirHandle;
Dpkg::Arch;
Dpkg::Build::Env;
Dpkg::Build::Info;
Dpkg::Build::Types;
Dpkg::BuildFlags;
Dpkg::BuildOptions;
Dpkg::BuildProfiles;
Dpkg::Changelog::Debian;
Dpkg::Changelog::Entry::Debian;
Dpkg::Changelog::Entry;
Dpkg::Changelog::Parse;
Dpkg::Changelog;
Dpkg::Checksums;
Dpkg::Compression::FileHandle;
Dpkg::Compression::Process;
Dpkg::Compression;
Dpkg::Conf;
Dpkg::Control::Changelog;
Dpkg::Control::Fields;
Dpkg::Control::FieldsCore;
Dpkg::Control::Hash;
Dpkg::Control::HashCore::Tie;
Dpkg::Control::HashCore;
Dpkg::Control::Info;
Dpkg::Control::Tests::Entry;
Dpkg::Control::Tests;
Dpkg::Control::Types;
Dpkg::Control;
Dpkg::Deps::AND;
Dpkg::Deps::KnownFacts;
Dpkg::Deps::Multiple;
Dpkg::Deps::OR;
Dpkg::Deps::Simple;
Dpkg::Deps::Union;
Dpkg::Deps;
Dpkg::Dist::Files;
Dpkg::ErrorHandling;
Dpkg::Exit;
Dpkg::File;
Dpkg::Getopt;
Dpkg::Gettext;
Dpkg::IPC;
Dpkg::Index;
Dpkg::Interface::Storable;
Dpkg::Lock;
Dpkg::OpenPGP;
Dpkg::Package;
Dpkg::Path;
Dpkg::Shlibs::Cppfilt;
Dpkg::Shlibs::Objdump::Object;
Dpkg::Shlibs::Objdump;
Dpkg::Shlibs::Symbol;
Dpkg::Shlibs::SymbolFile;
Dpkg::Shlibs;
Dpkg::Source::Archive;
Dpkg::Source::BinaryFiles;
Dpkg::Source::Format;
Dpkg::Source::Functions;
Dpkg::Source::Package::V1;
Dpkg::Source::Package::V2;
Dpkg::Source::Package::V3::Bzr;
Dpkg::Source::Package::V3::Custom;
Dpkg::Source::Package::V3::Git;
Dpkg::Source::Package::V3::Native;
Dpkg::Source::Package::V3::Quilt;
Dpkg::Source::Package;
Dpkg::Source::Patch;
Dpkg::Source::Quilt;
Dpkg::Substvars;
Dpkg::Vars;
Dpkg::Vendor::Debian;
Dpkg::Vendor::Default;
Dpkg::Vendor::Ubuntu;
Dpkg::Vendor;
Dpkg::Version;
Dpkg;
Dumpvalue;
DynaLoader;
EVERY::LAST;   @ISA = 'EVERY';   EVERY::ELSEWHERE::buildAUTOLOAD();
Encode::Alias;
Encode::Byte;
Encode::CJKConstants;
Encode::CN::HZ;
Encode::CN;
Encode::Config;
Encode::ConfigLocal;
Encode::EBCDIC;
Encode::Encoder;
Encode::Encoding;
Encode::GSM0338;
Encode::Guess;
Encode::JP::H2Z;
Encode::JP::JIS7;
Encode::JP;
Encode::KR::2022_KR;
Encode::KR;
Encode::MIME::Header::ISO_2022_JP;
Encode::MIME::Header;
Encode::MIME::Name;
Encode::Symbol;
Encode::TW;
Encode::Unicode::UTF7;
Encode::Unicode;
Encode;
English;
Env::Array::VMS;
Env::Array;
Env;
Errno;
Error::Simple;
Error::WarnDie;
Error::subs;
Error;
Exporter::Heavy;
Exporter;
ExtUtils::CBuilder::Base;
ExtUtils::CBuilder::Platform::Unix;
ExtUtils::CBuilder::Platform::VMS;
ExtUtils::CBuilder::Platform::Windows::BCC;
ExtUtils::CBuilder::Platform::Windows::GCC;
ExtUtils::CBuilder::Platform::Windows::MSVC;
ExtUtils::CBuilder::Platform::Windows;
ExtUtils::CBuilder::Platform::aix;
ExtUtils::CBuilder::Platform::android;
ExtUtils::CBuilder::Platform::cygwin;
ExtUtils::CBuilder::Platform::darwin;
ExtUtils::CBuilder::Platform::dec_osf;
ExtUtils::CBuilder::Platform::os2;
ExtUtils::CBuilder;
ExtUtils::Command::MM;
ExtUtils::Command;
ExtUtils::Constant::Base;
ExtUtils::Constant::ProxySubs;
ExtUtils::Constant::Utils;
ExtUtils::Constant::XS;
ExtUtils::Constant;
ExtUtils::Embed;
ExtUtils::Install::Warn;
ExtUtils::Install;
ExtUtils::Installed;
ExtUtils::Liblist::Kid;
ExtUtils::Liblist;
ExtUtils::MM;
ExtUtils::MM_AIX;
ExtUtils::MM_Any;
ExtUtils::MM_BeOS;
ExtUtils::MM_Cygwin;
ExtUtils::MM_DOS;
ExtUtils::MM_Darwin;
ExtUtils::MM_MacOS;
ExtUtils::MM_NW5;
ExtUtils::MM_OS2;
ExtUtils::MM_OS390;
ExtUtils::MM_QNX;
ExtUtils::MM_UWIN;
ExtUtils::MM_Unix;
ExtUtils::MM_VMS;
ExtUtils::MM_VOS;
ExtUtils::MM_Win32;
ExtUtils::MM_Win95;
ExtUtils::MY;
ExtUtils::MakeMaker::Config;
ExtUtils::MakeMaker::FAQ;
ExtUtils::MakeMaker::Locale;
ExtUtils::MakeMaker::Tutorial;
ExtUtils::MakeMaker::version;
ExtUtils::MakeMaker;
ExtUtils::Manifest; # git description: 1.72-7-g54209ce
ExtUtils::Miniperl;
ExtUtils::Mkbootstrap;
ExtUtils::Mksymlists;
ExtUtils::PL2Bat;
ExtUtils::Packlist;
ExtUtils::ParseXS::Constants;
ExtUtils::ParseXS::CountLines;
ExtUtils::ParseXS::Eval;
ExtUtils::ParseXS::Utilities;
ExtUtils::ParseXS;
ExtUtils::Typemaps::Cmd;
ExtUtils::Typemaps::InputMap;
ExtUtils::Typemaps::OutputMap;
ExtUtils::Typemaps::Type;
ExtUtils::Typemaps;
ExtUtils::testlib;
Fatal;
Fcntl;
File::Basename;
File::Compare;
File::Copy;
File::DosGlob;
File::FcntlLock::Core;
File::FcntlLock::Errors;
File::FcntlLock::Inline;
File::FcntlLock::Pure;
File::FcntlLock::XS;
File::FcntlLock;
File::Fetch;
File::Find;
File::Glob;
File::GlobMapper;
File::Path;
File::Spec::AmigaOS;
File::Spec::Cygwin;
File::Spec::Epoc;
File::Spec::Functions;
File::Spec::Mac;
File::Spec::OS2;
File::Spec::Unix;
File::Spec::VMS;
File::Spec::Win32;
File::Spec;
File::Temp; # git description: v0.2310-3-gc7148fe
File::stat;
FileCache;
FileHandle;
Filter::Simple;
FindBin;
GDBM_File;
Getopt::Long::CallBack;
Getopt::Long::Parser;
Getopt::Long;
Getopt::Std;
Git::I18N;
Git::IndexInfo;
Git::LoadCPAN::Error;
Git::LoadCPAN::Mail::Address;
Git::LoadCPAN;
Git::Packet;
Git::activestate_pipe;
Git;
HTTP::Tiny;
Hash::Util::FieldHash;
Hash::Util;
I18N::Collate;
I18N::LangTags::Detect;
I18N::LangTags::List;
I18N::LangTags;
I18N::Langinfo;
IO::Compress::Base::Common;
IO::Compress::Gzip::Constants;
IO::Compress::Zip::Constants;
IO::Compress::Zlib::Extra;
IO::Dir;
IO::File;
IO::Handle;
IO::Pipe::End;
IO::Pipe;
IO::Poll;
IO::Seekable;
IO::Select;
IO::Socket::INET;
IO::Socket::IP;
IO::Socket::UNIX;
IO::Socket;
IO::Uncompress::Adapter::Bunzip2;
IO::Uncompress::Adapter::Identity;
IO::Uncompress::Adapter::Inflate;
IO::Uncompress::Unzip;
IO::Zlib;
IO;
IPC::Cmd;
IPC::Msg;
IPC::Open2;
IPC::Open3;
IPC::Semaphore;
IPC::SharedMem;
IPC::SysV;
JSON::PP::Boolean;
JSON::PP::IncrParser;
JSON::PP;
List::Util::XS;
List::Util;
Locale::Maketext::Guts;
Locale::Maketext::GutsLoader;
Locale::Maketext::Simple;
Locale::Maketext;
Locale::Messages;
Locale::Recode::_Aliases;
Locale::Recode::_Conversions;
Locale::Recode;
Locale::RecodeData::ASMO_449;
Locale::RecodeData::ATARI_ST;
Locale::RecodeData::ATARI_ST_EURO;
Locale::RecodeData::CP10007;
Locale::RecodeData::CP1250;
Locale::RecodeData::CP1251;
Locale::RecodeData::CP1252;
Locale::RecodeData::CP1253;
Locale::RecodeData::CP1254;
Locale::RecodeData::CP1256;
Locale::RecodeData::CP1257;
Locale::RecodeData::CSN_369103;
Locale::RecodeData::CWI;
Locale::RecodeData::DEC_MCS;
Locale::RecodeData::EBCDIC_AT_DE;
Locale::RecodeData::EBCDIC_AT_DE_A;
Locale::RecodeData::EBCDIC_CA_FR;
Locale::RecodeData::EBCDIC_DK_NO;
Locale::RecodeData::EBCDIC_DK_NO_A;
Locale::RecodeData::EBCDIC_ES;
Locale::RecodeData::EBCDIC_ES_A;
Locale::RecodeData::EBCDIC_ES_S;
Locale::RecodeData::EBCDIC_FI_SE;
Locale::RecodeData::EBCDIC_FI_SE_A;
Locale::RecodeData::EBCDIC_FR;
Locale::RecodeData::EBCDIC_IS_FRISS;
Locale::RecodeData::EBCDIC_IT;
Locale::RecodeData::EBCDIC_PT;
Locale::RecodeData::EBCDIC_UK;
Locale::RecodeData::EBCDIC_US;
Locale::RecodeData::ECMA_CYRILLIC;
Locale::RecodeData::GEORGIAN_ACADEMY;
Locale::RecodeData::GEORGIAN_PS;
Locale::RecodeData::GOST_19768_74;
Locale::RecodeData::GREEK7;
Locale::RecodeData::GREEK7_OLD;
Locale::RecodeData::GREEK_CCITT;
Locale::RecodeData::HP_ROMAN8;
Locale::RecodeData::IBM037;
Locale::RecodeData::IBM038;
Locale::RecodeData::IBM1004;
Locale::RecodeData::IBM1026;
Locale::RecodeData::IBM1047;
Locale::RecodeData::IBM256;
Locale::RecodeData::IBM273;
Locale::RecodeData::IBM274;
Locale::RecodeData::IBM275;
Locale::RecodeData::IBM277;
Locale::RecodeData::IBM278;
Locale::RecodeData::IBM280;
Locale::RecodeData::IBM281;
Locale::RecodeData::IBM284;
Locale::RecodeData::IBM285;
Locale::RecodeData::IBM290;
Locale::RecodeData::IBM297;
Locale::RecodeData::IBM420;
Locale::RecodeData::IBM423;
Locale::RecodeData::IBM424;
Locale::RecodeData::IBM437;
Locale::RecodeData::IBM500;
Locale::RecodeData::IBM850;
Locale::RecodeData::IBM851;
Locale::RecodeData::IBM852;
Locale::RecodeData::IBM855;
Locale::RecodeData::IBM857;
Locale::RecodeData::IBM860;
Locale::RecodeData::IBM861;
Locale::RecodeData::IBM862;
Locale::RecodeData::IBM863;
Locale::RecodeData::IBM864;
Locale::RecodeData::IBM865;
Locale::RecodeData::IBM866;
Locale::RecodeData::IBM868;
Locale::RecodeData::IBM869;
Locale::RecodeData::IBM870;
Locale::RecodeData::IBM871;
Locale::RecodeData::IBM874;
Locale::RecodeData::IBM875;
Locale::RecodeData::IBM880;
Locale::RecodeData::IBM891;
Locale::RecodeData::IBM903;
Locale::RecodeData::IBM904;
Locale::RecodeData::IBM905;
Locale::RecodeData::IBM918;
Locale::RecodeData::IEC_P27_1;
Locale::RecodeData::INIS;
Locale::RecodeData::INIS_8;
Locale::RecodeData::INIS_CYRILLIC;
Locale::RecodeData::ISO_10367_BOX;
Locale::RecodeData::ISO_2033_1983;
Locale::RecodeData::ISO_5427;
Locale::RecodeData::ISO_5427_EXT;
Locale::RecodeData::ISO_5428;
Locale::RecodeData::ISO_8859_10;
Locale::RecodeData::ISO_8859_11;
Locale::RecodeData::ISO_8859_13;
Locale::RecodeData::ISO_8859_14;
Locale::RecodeData::ISO_8859_15;
Locale::RecodeData::ISO_8859_16;
Locale::RecodeData::ISO_8859_1;
Locale::RecodeData::ISO_8859_2;
Locale::RecodeData::ISO_8859_3;
Locale::RecodeData::ISO_8859_4;
Locale::RecodeData::ISO_8859_5;
Locale::RecodeData::ISO_8859_6;
Locale::RecodeData::ISO_8859_7;
Locale::RecodeData::ISO_8859_8;
Locale::RecodeData::ISO_8859_9;
Locale::RecodeData::KOI8_R;
Locale::RecodeData::KOI8_RU;
Locale::RecodeData::KOI8_T;
Locale::RecodeData::KOI8_U;
Locale::RecodeData::KOI_8;
Locale::RecodeData::LATIN_GREEK;
Locale::RecodeData::LATIN_GREEK_1;
Locale::RecodeData::MACARABIC;
Locale::RecodeData::MACCROATIAN;
Locale::RecodeData::MACCYRILLIC;
Locale::RecodeData::MACGREEK;
Locale::RecodeData::MACHEBREW;
Locale::RecodeData::MACICELAND;
Locale::RecodeData::MACINTOSH;
Locale::RecodeData::MACROMANIA;
Locale::RecodeData::MACTHAI;
Locale::RecodeData::MACTURKISH;
Locale::RecodeData::MACUKRAINE;
Locale::RecodeData::MAC_IS;
Locale::RecodeData::MAC_SAMI;
Locale::RecodeData::MAC_UK;
Locale::RecodeData::NATS_DANO;
Locale::RecodeData::NATS_SEFI;
Locale::RecodeData::NEXTSTEP;
Locale::RecodeData::SAMI_WS2;
Locale::RecodeData::TIS_620;
Locale::RecodeData::US_ASCII;
Locale::RecodeData::UTF_8;
Locale::RecodeData::VISCII;
Locale::RecodeData::_Encode;
Locale::RecodeData;
Locale::TextDomain;
Locale::Util;
Locale::gettext;
Locale::gettext_dumb;
Locale::gettext_pp;
MIME::Base64;
MIME::QuotedPrint;
MY;
Math::BigFloat::Trace;
Math::BigFloat;
Math::BigInt::Calc;
Math::BigInt::FastCalc;
Math::BigInt::Lib;
Math::BigInt::Trace;
Math::BigInt;
Math::BigRat;
Math::Complex;
Math::Trig;
Memoize::AnyDBM_File;
Memoize::Expire;
Memoize::ExpireFile;
Memoize::ExpireTest;
Memoize::NDBM_File;
Memoize::SDBM_File;
Memoize::Storable;
Memoize;
Module::CoreList::Utils;
Module::CoreList;
Module::Find;
Module::Load::Conditional;
Module::Load;
Module::Loaded;
Module::Metadata; # git description: v1.000036-4-g435a294
Module::ScanDeps::Cache;
Module::ScanDeps;
NDBM_File;
NEXT::ACTUAL::DISTINCT; @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::ACTUAL::UNSEEN;   @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::ACTUAL;           @ISA = 'NEXT';     NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::DISTINCT::ACTUAL; @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::DISTINCT;         @ISA = 'NEXT';     NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::UNSEEN::ACTUAL;   @ISA = 'NEXT'; NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT::UNSEEN;           @ISA = 'NEXT';     NEXT::ELSEWHERE::buildAUTOLOAD();
NEXT;
NEXT;                                  NEXT::ELSEWHERE::buildAUTOLOAD();
NeedRestart::CONT::LXC;
NeedRestart::CONT::docker;
NeedRestart::CONT::machined;
NeedRestart::CONT;
NeedRestart::Interp::Java;
NeedRestart::Interp::Perl;
NeedRestart::Interp::Python;
NeedRestart::Interp::Ruby;
NeedRestart::Interp;
NeedRestart::Kernel::Linux;
NeedRestart::Kernel::kFreeBSD;
NeedRestart::Kernel;
NeedRestart::Strings;
NeedRestart::UI::Debconf;
NeedRestart::UI::stdio;
NeedRestart::UI;
NeedRestart::Utils;
NeedRestart::uCode::AMD;
NeedRestart::uCode::Intel;
NeedRestart::uCode;
NeedRestart;
Net::Cmd;
Net::Config;
Net::Domain;
Net::FTP::A;
Net::FTP::E;
Net::FTP::I;
Net::FTP::L;
Net::FTP::dataconn;
Net::FTP;
Net::NNTP;
Net::Netrc;
Net::POP3;
Net::Ping;
Net::SMTP;
Net::Time;
Net::hostent;
Net::netent;
Net::protoent;
Net::servent;
ODBM_File;
Opcode;
POSIX::SigAction;
POSIX::SigRt;
POSIX::SigSet;
POSIX;
Params::Check;
Parse::CPAN::Meta;
Perl::OSType;
PerlIO::encoding;
PerlIO::mmap;
PerlIO::scalar;
PerlIO::via::QuotedPrint;
PerlIO::via;
PerlIO;
Pod::Checker::Hyperlink;
Pod::Checker;
Pod::Escapes;
Pod::Functions;
Pod::Html;
Pod::Man;
Pod::ParseLink;
Pod::Perldoc::BaseTo;
Pod::Perldoc::GetOptsOO;
Pod::Perldoc::ToANSI;
Pod::Perldoc::ToChecker;
Pod::Perldoc::ToMan;
Pod::Perldoc::ToNroff;
Pod::Perldoc::ToPod;
Pod::Perldoc::ToRtf;
Pod::Perldoc::ToTerm;
Pod::Perldoc::ToText;
Pod::Perldoc::ToTk;
Pod::Perldoc::ToXml;
Pod::Perldoc;
Pod::Simple::BlackBox;
Pod::Simple::Checker;
Pod::Simple::Debug;
Pod::Simple::DumpAsText;
Pod::Simple::DumpAsXML;
Pod::Simple::HTML;
Pod::Simple::HTMLBatch;
Pod::Simple::HTMLLegacy;
Pod::Simple::JustPod;
Pod::Simple::LinkSection;
Pod::Simple::Methody;
Pod::Simple::Progress;
Pod::Simple::PullParser;
Pod::Simple::PullParserEndToken;
Pod::Simple::PullParserStartToken;
Pod::Simple::PullParserTextToken;
Pod::Simple::PullParserToken;
Pod::Simple::RTF;
Pod::Simple::Search;
Pod::Simple::SimpleTree;
Pod::Simple::Text;
Pod::Simple::TextContent;
Pod::Simple::TiedOutFH;
Pod::Simple::Transcode;
Pod::Simple::TranscodeDumb;
Pod::Simple::TranscodeSmart;
Pod::Simple::XHTML::LocalPodLinks;
Pod::Simple::XHTML;
Pod::Simple::XMLOutStream;
Pod::Simple;
Pod::Text::Color;
Pod::Text::Overstrike;
Pod::Text::Termcap;
Pod::Text;
Pod::Usage;
Proc::Killall;
Proc::Killfam;
Proc::ProcessTable::Process;
Proc::ProcessTable;
SDBM_File;
Safe;
Scalar::Util;
Search::Dict;
SelectSaver;
SelfLoader;
Socket;
Sort::Naturally;  # Time-stamp: "2004-12-29 18:30:03 AST"
Storable;
Sub::Util;
Symbol;
Sys::Hostname;
Sys::Syslog;
TAP::Base;
TAP::Formatter::Base;
TAP::Formatter::Color;
TAP::Formatter::Console::ParallelSession;
TAP::Formatter::Console::Session;
TAP::Formatter::Console;
TAP::Formatter::File::Session;
TAP::Formatter::File;
TAP::Formatter::Session;
TAP::Harness::Env;
TAP::Harness;
TAP::Object;
TAP::Parser::Aggregator;
TAP::Parser::Grammar;
TAP::Parser::Iterator::Array;
TAP::Parser::Iterator::Process;
TAP::Parser::Iterator::Stream;
TAP::Parser::Iterator;
TAP::Parser::IteratorFactory;
TAP::Parser::Multiplexer;
TAP::Parser::Result::Bailout;
TAP::Parser::Result::Comment;
TAP::Parser::Result::Plan;
TAP::Parser::Result::Pragma;
TAP::Parser::Result::Test;
TAP::Parser::Result::Unknown;
TAP::Parser::Result::Version;
TAP::Parser::Result::YAML;
TAP::Parser::Result;
TAP::Parser::ResultFactory;
TAP::Parser::Scheduler::Job;
TAP::Parser::Scheduler::Spinner;
TAP::Parser::Scheduler;
TAP::Parser::Source;
TAP::Parser::SourceHandler::Executable;
TAP::Parser::SourceHandler::File;
TAP::Parser::SourceHandler::Handle;
TAP::Parser::SourceHandler::Perl;
TAP::Parser::SourceHandler::RawTAP;
TAP::Parser::SourceHandler;
TAP::Parser::YAMLish::Reader;
TAP::Parser::YAMLish::Writer;
TAP::Parser;
Term::ANSIColor;
Term::Cap;
Term::Complete;
Term::ReadKey;
Term::ReadLine::Stub;
Term::ReadLine::TermCap;
Term::ReadLine::Tk;
Term::ReadLine;         # So late to allow the above code be defined?
Test2::API::Breakage;
Test2::API::Context;
Test2::API::Instance;
Test2::API::InterceptResult::Event;
Test2::API::InterceptResult::Facet;
Test2::API::InterceptResult::Hub;
Test2::API::InterceptResult::Squasher;
Test2::API::InterceptResult;
Test2::API::Stack;
Test2::API;
Test2::Event::Bail;
Test2::Event::Diag;
Test2::Event::Encoding;
Test2::Event::Exception;
Test2::Event::Fail;
Test2::Event::Generic;
Test2::Event::Note;
Test2::Event::Ok;
Test2::Event::Pass;
Test2::Event::Plan;
Test2::Event::Skip;
Test2::Event::Subtest;
Test2::Event::TAP::Version;
Test2::Event::V2;
Test2::Event::Waiting;
Test2::Event;
Test2::EventFacet::About;
Test2::EventFacet::Amnesty;
Test2::EventFacet::Assert;
Test2::EventFacet::Control;
Test2::EventFacet::Error;
Test2::EventFacet::Hub;
Test2::EventFacet::Info::Table;
Test2::EventFacet::Info;
Test2::EventFacet::Meta;
Test2::EventFacet::Parent;
Test2::EventFacet::Plan;
Test2::EventFacet::Render;
Test2::EventFacet::Trace;
Test2::EventFacet;
Test2::Formatter::TAP;
Test2::Formatter;
Test2::Hub::Interceptor::Terminator;
Test2::Hub::Interceptor;
Test2::Hub::Subtest;
Test2::Hub;
Test2::IPC::Driver::Files;
Test2::IPC::Driver;
Test2::IPC;
Test2::Tools::Tiny;
Test2::Util::ExternalMeta;
Test2::Util::Facets2Legacy;
Test2::Util::HashBase;
Test2::Util::Trace;
Test2::Util;
Test2;
Test::Builder::Formatter;
Test::Builder::IO::Scalar;
Test::Builder::Module;
Test::Builder::Tester::Color;
Test::Builder::Tester::Tie;
Test::Builder::Tester;
Test::Builder::TodoDiag;
Test::Builder;
Test::Harness;
Test::More;
Test::Simple;
Test::Tester::Capture;
Test::Tester::CaptureRunner;
Test::Tester::Delegate;
Test::Tester;
Test::use::ok;
Test;
Text::Abbrev;
Text::Balanced::ErrorMsg;
Text::Balanced::Extractor;
Text::Balanced;
Text::ParseWords;
Text::Tabs;
Text::Wrap;
Thread::Queue;
Thread::Semaphore;
Thread;
Tie::Array;
Tie::ExtraHash;
Tie::File::Cache;
Tie::File::Heap;
Tie::File;
Tie::Handle;
Tie::Hash::NamedCapture;
Tie::Hash;
Tie::Memoize;
Tie::RefHash; # git description: Tie-RefHash-1.39-10-g2cfa4bd
Tie::Scalar;
Tie::StdArray;
Tie::StdHandle;
Tie::StdHash;
Tie::StdScalar;
Tie::SubstrHash;
Time::HiRes;
Time::Local;
Time::Piece;
Time::Seconds;
Time::gmtime;
Time::localtime;
Time::tm;
U64;
UNIVERSAL;
Unicode::Collate::CJK::Big5;
Unicode::Collate::CJK::GB2312;
Unicode::Collate::CJK::JISX0208;
Unicode::Collate::CJK::Korean;
Unicode::Collate::CJK::Pinyin;
Unicode::Collate::CJK::Stroke;
Unicode::Collate::CJK::Zhuyin;
Unicode::Collate::Locale;
Unicode::Collate;
Unicode::Normalize;
Unicode::UCD;
User::grent;
User::pwent;
XSLoader;
Yet::Another::AutoSplit;
Yet::More::Attributes;
```

</details>

[//begin]: # "Autogenerated link references for markdown compatibility"
[openSUSE/dev-env#Perl]: ../notes-OS/Linux/openSUSE/dev-env.md "openSUSE Development Environment"
[//end]: # "Autogenerated link references"
