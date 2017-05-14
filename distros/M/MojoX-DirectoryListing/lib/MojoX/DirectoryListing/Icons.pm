package MojoX::DirectoryListing::Icons;
use base 'Exporter';
use strict;
use warnings;

our @EXPORT = qw(choose_icon get_icon);
our $VERSION = '0.09';
our %BYTES;

sub get_icon {
    my $word = shift;
    return $BYTES{$word} // $BYTES{"unknown"};
}

sub choose_icon {
    my $item = shift;
    my ($name,$type) = ($item->{name}, $item->{type});
    if ($name eq '..') {
	return "back";
    }
    if ($item->{is_dir}) {
	return "folder";
    }
    if ($name eq 'README') {
	return "hand-right";
    }
    if ($name =~ /Makefile($|\.)/i) {
	return "text";
    }
    # text file types from App::Ack
    if ($type =~ /^( ad[abs] | asm | s | bat | cmd | c | h | xs |
			cf[cm] | cfml | clj | cpp | cc | cxx | m | hpp |
			hh | hxx | css? | pas | int | dfm | nfm | dof |
			dpk | dproj | el | erl | hrl | f | f\d\d |
			for | ftn | fpp | go | groovy | gtmpl | gpp |
			grunit | hs | lhs | html? | [sx]html | java |
			properties | js | jspx? | jhtm | jhtml | li?sp |
			lua | mas | mhtml | mpl | mtxt | mm | mli? |
			pir | pasm | pmc | ops | pod | pg | tg | pl | pm6? |
			pod | t | php[t345]? | phtml | c?pt | metadata |
			cpy | py | Rakefiles | rb | rhtml | rjs | rxml |
			erb | rake | spec | scala | scm | ss | sh | bash |
			csh | tcsh | ksh | zsh | st | sql | ctl | i?tcl |
			itl | tex | cls | sty | te?xt | latex | tt |
			tt2 | ttml | bas | cls | frm | ctl | vb | resx |
			v | vh | sv | vhd | vhdl | vim | yaml | yml |
			xml | dtd | xslt? | ent | json | ini | Changes )$/ix) {
	return "text";
    }
    if ($type =~ /^( jpe?g | gif | png | tiff? | icon? | xbm | ps )$/ix) {
	return "image";
    }
    return "unknown";
}

# v0.07: icon identifiers are matched with a  :icon  placeholder
#        so the keys in this hash must never contain '/' or '.'

our %ICONS = (

    text => "47494638396114001600C20000FFFFFFCCFFFF99999933333300000000000000000000000021FE4E546869732061727420697320696E20746865207075626C696320646F6D61696E2E204B6576696E204875676865732C206B6576696E68406569742E636F6D2C2053657074656D62657220313939350021F90401000001002C000000001400160000035838BABCF1300C40AB9D23BE693BCF11D75522B88DD7057144EB52C410CF270ABB6E8DB796E00B849AADF20B4A6EBB1705281C128DACA412C03C3A7B50A4F4D9BC5645DAE9F78AED6E975932BAEBFC0E7EF0B84F1691DA8D09003",

    back => "47494638396114001600C20000FFFFFFCCFFFF99999966666633333300000000000000000021FE4E546869732061727420697320696E20746865207075626C696320646F6D61696E2E204B6576696E204875676865732C206B6576696E68406569742E636F6D2C2053657074656D62657220313939350021F90401000001002C000000001400160000034B18BADCFE2310F26A103353BBA2CEDCF5699C374E16768290740605372A451C6E586D2FFB92EB354650F103EA78C6A491A66C16284EA720DA8CC0A83A824018D55692DED055FCE891CF8B04003B",

    folder => "47494638396114001600C20000FFFFFFFFCC99CCFFFF99663333333300000000000000000021FE4E546869732061727420697320696E20746865207075626C696320646F6D61696E2E204B6576696E204875676865732C206B6576696E68406569742E636F6D2C2053657074656D62657220313939350021F90401000002002C000000001400160000035428BADCFE30CA4959B9F8CE12BAEF45C47D64A629C5407A6A8906432CC72B1C8EF51A13579E0F3C9C8F05EC0D4945E171673CB2824E2234DA495261569856C5DDC27882D46C3C2680C3E6B47ACD232C4CF08C3B01003B",

    "hand-right" => "47494638396114001600C20000FFFFFFFFCC99CCFFFF99663300000000000000000000000021FE4E546869732061727420697320696E20746865207075626C696320646F6D61696E2E204B6576696E204875676865732C206B6576696E68406569742E636F6D2C2053657074656D62657220313939350021F90401000002002C000000001400160000034C28BADCFE30CA491DB9B892C03B91572762E4258462306C29B7B6AC38CC74CC11C3589A699C7B8DC0E6F273A956C163B12874085BAAE3A7F1928D1E28EB6C8AED14B911DF5653AA98CF684A02003B",

    unknown => "47494638396114001600C20000FFFFFFCCFFFF99999933333300000000000000000000000021FE4E546869732061727420697320696E20746865207075626C696320646F6D61696E2E204B6576696E204875676865732C206B6576696E68406569742E636F6D2C2053657074656D62657220313939350021F90401000001002C000000001400160000036838BABCF1300C40AB9D23BE693BCF11070802619A22B851E5798A80CAB52E4A0C37B102AE30D6A79DABD223E9249D0A8D402AED2C4B13EB08FBD57CBF270588CD222DBD8EF34B3C25C7D52494DA198AD960F35BCB93AFE96A253C3F970C9A80812438114086410109003B",

    image => "47494638396114001600E30000FFFFFFFF3333CCFFFFCCCCCC9999996666666600003333330099CC00993300336600000000000000000000000000000021FE4E546869732061727420697320696E20746865207075626C696320646F6D61696E2E204B6576696E204875676865732C206B6576696E68406569742E636F6D2C2053657074656D62657220313939350021F90401000002002C0000000014001600000490F0C849A7B8581CC0BBDF47766D5E49861959762A3A02412C0703A0DAD836CB06B01CBFE06B17EB2D8EC8C590D8E3109E04A506364B5813350054AA932538036B56CB050C62DFF0953488BE060603F66ADD0C14EE6987BE1E20F0652C7C0507087F7937030757848687811D8A138E8F2F2B6694957A257E9980961E770AA3A49F9B9725880750ACAD4F401949B2B35211003B",

    );

%BYTES = map {
    my $ico = $ICONS{$_};
    my $bytes = pack "H*", $ico;
    $_ => $bytes
} keys %ICONS;

1;

=head1 NAME

MojoX::DirectoryListing::Icons - icon data for directory listing in
a web application

=head1 FUNCTIONS

=head2 choose_icon

Returns the appropriate icon id (like C<text> or C<back>)
for a directory listing item.

=head2 get_icon

Returns the binary data representing the specified icon.

=head1 SEE ALSO

L<MojoX::DirectoryListing>

=cut
