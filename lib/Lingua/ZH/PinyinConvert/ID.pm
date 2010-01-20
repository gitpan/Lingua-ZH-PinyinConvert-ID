package Lingua::ZH::PinyinConvert::ID;
our $VERSION = '0.01';
# ABSTRACT: Convert between Hanyu Pinyin and Indonesian transliteration


use strict;
use warnings;

# notes:

# * for 'w' as alternative spelling to 'u'/'o', only those occuring
# after vowel is listed (e.g. taw, but not khwai), except kwa/kwe/kwi
# and hwaX (commonly encountered)

my %hy2id = (
    a      => 'a',
    ai     => 'ai',
    an     => 'an',
    ang    => 'ang',
    ao     => ['au', 'ao', 'aw'],

    ba     => 'pa',
    bai    => 'pai',
    ban    => 'pan',
    bang   => 'pang',
    bao    => ['pau', 'pao', 'paw'],
    bei    => 'pei',
    ben    => 'pen',
    beng   => 'peng',
    bi     => 'pi',
    bian   => 'pien',
    biao   => ['piau', 'piao', 'piaw'],
    bie    => 'pie',
    bin    => 'pin',
    bing   => 'ping',
    bo     => ['po', 'puo'], #pwo
    bu     => 'pu',

    ca     => 'cha',
    cai    => 'chai',
    can    => 'chan',
    cang   => 'chang',
    cao    => ['chau', 'chao', 'chaw'],
    ce     => 'che',
    cen    => 'chen',
    ceng   => 'cheng',
    cha    => 'cha',
    chai   => 'chai',
    chan   => 'chan',
    chang  => 'chang',
    chao   => ['chau', 'chao', 'chaw'],
    che    => 'che',
    chen   => 'chen',
    cheng  => 'cheng',
    chi    => 'che',
    chong  => 'chung',
    chou   => ['chou', 'chow', 'cheu'], # chEw
    chu    => 'chu',
    chuai  => ['chuai'],# 'chwai'],
    chuan  => ['chuan'],# 'chwan'],
    chuang => ['chuang'],# 'chwang'],
    chui   => ['chuei'],# 'chwei'],
    chun   => ['chuen'],# 'chwen'],
    chuo   => ['chuo'],# 'chwo'],
    ci     => 'che',
    cong   => 'chung',
    cou    => ['chou', 'chow', 'chew'], # chEw
    cu     => 'chu',
    cuan   => ['chuan'],# 'chwan'],
    cui    => ['chuei'],# 'chwei'],
    cun    => ['chuen'],# 'chwen'],
    cuo    => ['chuo'],# 'chwo'],

    da     => 'ta',
    dai    => 'tai',
    dan    => 'tan',
    dang   => 'tang',
    dao    => ['tau', 'tao', 'taw'],
    de     => 'te',
    dei    => 'tei',
    deng   => 'teng',
    di     => 'ti',
    dian   => 'tien',
    diao   => ['tiau', 'tiao', 'tiaw'],
    die    => 'tie',
    ding   => 'ting',
    diu    => 'tiu',
    dong   => 'tung',
    dou    => ['tou', 'tow', 'teu', 'tew'],
    du     => 'tu',
    duan   => ['tuan'],# 'twan'],
    dui    => ['tuei'],# 'twei'],
    dun    => ['tuen'],# 'twen'],
    duo    => 'tuo', # two

    e      => 'e',
    en     => 'en',
    er     => ['er', 'el'],

    fa     => 'fa',
    fan    => 'fan',
    fang   => 'fang',
    fei    => 'fei',
    fen    => 'fen',
    feng   => 'feng',
    fo     => ['fo', 'fuo'], # fwo
    fou    => ['fou', 'fow'],
    fu     => 'fu',

    ga     => 'ka',
    gai    => 'kai',
    gan    => 'kan',
    gang   => 'kang',
    gao    => ['kau', 'kao', 'kaw'],
    ge     => 'ke',
    gei    => 'kei',
    gen    => 'ken',
    geng   => 'keng',
    gong   => 'kung',
    gou    => ['kou', 'kow', 'keu'], # kEw
    gu     => 'ku',
    gua    => ['kua', 'kwa'],
    guai   => ['kuai', 'kwai'],
    guan   => ['kuan', 'kwan'],
    guang  => ['kuang', 'kwang'],
    gui    => ['kuei', 'kwei'],
    gun    => ['kuen'],# 'kwen'],
    guo    => ['kuo'],# 'kwo'],

    ha     => 'ha',
    hai    => 'hai',
    han    => 'han',
    hang   => 'hang',
    hao    => ['hau', 'hao', 'haw'],
    he     => 'he',
    hei    => 'hei',
    hen    => 'hen',
    heng   => 'heng',
    hong   => 'hung',
    hou    => ['hou', 'how', 'heu'], # hEw
    hu     => 'hu',
    hua    => ['hua', 'hwa'],
    huai   => ['huai', 'hwai'],
    huan   => ['huan', 'hwan'],
    huang  => ['huang', 'hwang'],
    hui    => ['huei', 'hwei'],
    hun    => ['huen'],# 'hwen'],
    huo    => 'huo', # hwo

    ji     => 'ci',
    jia    => 'cia',
    jian   => 'cien',
    jiang  => 'ciang',
    jiao   => ['ciau', 'ciao', 'ciaw'],
    jie    => 'cie',
    jin    => 'cin',
    jing   => 'cing',
    jiong  => 'ciung',
    jiu    => 'ciu',
    ju     => 'cu', #?
    juan   => 'cien', #?
    jue    => 'cue', #?
    jun    => ['cun', 'cin'], #?

    ka     => 'kha',
    kai    => 'khai',
    kan    => 'khan',
    kang   => 'khang',
    kao    => ['khau', 'khao', 'khaw'],
    ke     => 'khe',
    ken    => 'khen',
    keng   => 'kheng',
    kong   => 'khung',
    kou    => ['khou', 'khow', 'kheu'], # khEw
    ku     => 'khu',
    kua    => ['khua'],# 'khwa'],
    kuai   => ['khuai'],# 'khwai'],
    kuan   => ['khuan'],# 'khwan'],
    kuang  => ['khuang'],# 'khwang'],
    kui    => ['khuei'],# 'khwei'],
    kun    => 'khuen', # khwen
    kuo    => 'khuo', # khwo

    la     => 'la',
    lai    => 'lai',
    lan    => 'lan',
    lang   => 'lang',
    lao    => ['lau', 'lao'],
    le     => 'le',
    lei    => 'lei',
    leng   => 'leng',
    li     => 'li',
    lia    => 'lia',
    lian   => 'lien',
    liang  => 'liang',
    liao   => ['liau', 'liao', 'liaw'],
    lie    => 'lie',
    lin    => 'lin',
    ling   => 'ling',
    liu    => 'liu',
    long   => 'lung',
    lou    => ['lou', 'low', 'leu'],#, 'lEw']
    lu     => 'lu',
    lv     => ['li'], # lu
    luan   => ['luan'], # lwan
    lve    => ['lie'], #'lue'], # lwe
    lun    => ['luen'], # lwen
    luo    => ['luo'], # lwo

    ma     => 'ma',
    mai    => 'mai',
    man    => 'man',
    mang   => 'mang',
    mao    => ['mau', 'mao', 'maw'],
    me     => 'me',
    mei    => 'mei',
    men    => 'men',
    meng   => 'meng',
    mi     => 'mi',
    mian   => 'mien',
    miao   => ['miau', 'miao', 'miaw'],
    mie    => 'mie',
    min    => 'min',
    ming   => 'ming',
    miu    => 'miu',
    mo     => ['mo', 'muo'], # mwo
    mou    => ['mou', 'mow'],
    mu     => 'mu',

    na     => 'na',
    nai    => 'nai',
    nan    => 'nan',
    nang   => 'nang',
    nao    => ['nau', 'nao'],
    ne     => 'ne',
    nei    => 'nei',
    nen    => 'nen',
    neng   => 'neng',
    ni     => 'ni',
    nian   => 'nien',
    niang  => 'niang',
    niao   => ['niau', 'niao'],
    nie    => 'nie',
    nin    => 'nin',
    ning   => 'ning',
    niu    => 'niu',
    nong   => 'nung',
    nou    => ['nou'], # now
    nu     => 'nu',
    nv     => ['ni'], # nu
    nuan   => 'nuan',
    nve    => 'nie', #nue?
    nuo    => 'nuo',

    o      => 'o',
    ou     => ['ou', 'ow'],

    pa     => 'pha',
    pai    => 'phai',
    pan    => 'phan',
    pang   => 'phang',
    pao    => ['phau', 'phao', 'phaw'],
    pei    => 'phei',
    pen    => 'phen',
    peng   => 'pheng',
    pi     => 'phi',
    pian   => 'phien',
    piao   => ['phiau', 'phiao', 'phiaw'],
    pie    => 'phie',
    pin    => 'phin',
    ping   => 'phing',
    po     => ['pho', 'phuo'],
    pou    => ['phou', 'phow'],
    pu     => 'phu',

    qi     => 'chi',
    qia    => 'chia',
    qian   => 'chien',
    qiang  => 'chiang',
    qiao   => ['chiau', 'chiao', 'chiaw'],
    qie    => 'chie',
    qin    => 'chin',
    qing   => 'ching',
    qiong  => 'chiung',
    qiu    => 'chiu',
    qu     => 'chi',
    quan   => 'chuen', #?
    que    => 'chue',
    qun    => 'chuen',

    ran    => ['ran', 'jan'],
    rang   => ['rang', 'jang'],
    rao    => ['rau', 'rao', 'raw', 'jau', 'jao', 'jaw'],
    re     => ['re', 'je'],
    ren    => ['ren', 'jen'],
    reng   => ['reng', 'jeng'],
    ri     => ['re', 'je'],
    rong   => ['rung', 'jung'],
    rou    => ['rou', 'row', 'jou', 'jow', 'reu', 'jeu'], # rEw
    ru     => ['ru', 'ju'],
    ruan   => ['ruan', 'juan'],
    rui    => ['ruei', 'juei'],
    run    => ['ruen', 'juen'],
    ruo    => ['ruo', 'juo'],

    sa     => 'sa',
    sai    => 'sai',
    san    => 'san',
    sang   => 'sang',
    sao    => ['sau', 'sao', 'saw'],
    se     => 'se',
    sen    => 'sen',
    seng   => 'seng',
    sha    => 'sha',
    shai   => 'shai',
    shan   => 'shan',
    shang  => 'shang',
    shao   => ['shau', 'shao', 'shaw'],
    she    => 'she',
    shei   => 'shei',
    shen   => 'shen',
    sheng  => 'sheng',
    shi    => 'she',
    shou   => ['shou', 'sheu'],# 'shEw', 'show'],
    shu    => 'shu',
    shua   => 'shua',
    shuai  => 'shuai',
    shuan  => 'shuan',
    shuang => 'shuang',
    shui   => 'shuei',
    shun   => 'shuen',
    shuo   => 'shuo',
    si     => 'se',
    song   => 'sung',
    sou    => ['sou', 'sow', 'seu', 'sew'],
    su     => 'su',
    suan   => 'suan',
    sui    => 'suei',
    sun    => 'suen',
    suo    => 'suo',

    ta     => 'tha',
    tai    => 'thai',
    tan    => 'than',
    tang   => 'thang',
    tao    => ['thau', 'thao', 'thaw'],
    te     => 'the',
    teng   => 'theng',
    ti     => 'thi',
    tian   => 'thien',
    tiao   => ['thiau', 'thiao', 'thiaw'],
    tie    => 'thie',
    ting   => 'thing',
    tong   => 'thung',
    tou    => ['thou', 'thow', 'theu', 'thew'],
    tu     => 'thu',
    tuan   => 'thuan',
    tui    => 'thuei',
    tun    => 'thuen',
    tuo    => 'thuo',

    wa     => 'wa',
    wai    => 'wai',
    wan    => 'wan',
    wang   => 'wang',
    wei    => 'wei',
    wen    => 'wen',
    weng   => 'weng',
    wo     => 'wo',
    wu     => 'wu',

    xi     => 'si',
    xia    => 'sia',
    xian   => 'sien',
    xiang  => 'siang',
    xiao   => ['siau', 'siao', 'siau'],
    xie    => 'sie',
    xin    => 'sin',
    xing   => 'sing',
    xiong  => 'siung',
    xiu    => 'siu',
    xu     => ['si', 'syu'],
    xuan   => ['suan', 'swan'],
    xue    => ['sie'],# 'sue'],
    xun    => 'suen',

    ya     => 'ya',
    yai    => 'yai',
    yan    => 'yen',
    yang   => 'yang',
    yao    => ['yau', 'yao', 'yaw'],
    ye     => 'ye',
    yi     => ['i', 'yi'],
    yin    => ['in', 'yin'],
    ying   => ['ing', 'ying'],
    yong   => 'yung',
    you    => ['yu', 'you'],# 'yow'],
    yu     => ['yi', 'yu'],
    yuan   => 'yuen',
    yue    => ['yue', 'ye'],
    yun    => ['yun', 'yin'],

    za     => 'ca',
    zai    => 'cai',
    zan    => 'can',
    zang   => 'cang',
    zao    => ['cau', 'cao', 'caw'],
    ze     => 'ce',
    zei    => 'cei',
    zen    => 'cen',
    zeng   => 'ceng',
    zha    => 'ca',
    zhai   => 'cai',
    zhan   => 'can',
    zhang  => 'cang',
    zhao   => ['cau', 'cao', 'caw'],
    zhe    => 'ce',
    zhei   => 'cei',
    zhen   => 'cen',
    zheng  => 'ceng',
    zhi    => 'ce',
    zhong  => 'cung',
    zhou   => ['cou', 'ceu', 'cew'], #cow
    zhu    => 'cu',
    zhua   => 'cua',
    zhuai  => 'cuai',
    zhuan  => 'cuan',
    zhuang => 'cuang',
    zhui   => 'cuei',
    zhun   => 'cuen',
    zhuo   => 'cuo',
    zi     => 'ce',
    zong   => 'cung',
    zou    => ['cou', 'ceu', 'cew'], #cow
    zu     => 'cu',
    zuan   => 'cuan',
    zui    => 'cuei',
    zun    => 'cuen',
    zuo    => 'cuo',
);

my %id2hy;
for (keys %hy2id) {
    my $l = ref($hy2id{$_}) eq 'ARRAY' ? $hy2id{$_} : [$hy2id{$_}];
    for my $id (@$l) {
        if (exists $id2hy{$id}) {
            $id2hy{$id} = [$id2hy{$id}] unless ref($id2hy{$id}) eq 'ARRAY';
            push @{ $id2hy{$id} }, $_;
        } else {
            $id2hy{$id} = $_;
        }
    }
}
#use Data::Dumper; print Dumper \%id2hy;

my $hy_re = join("|", sort { length($b) <=> length($a) } keys %hy2id); $hy_re = qr/(?:$hy_re)/;
my $id_re = join("|", sort { length($b) <=> length($a) } keys %id2hy); $id_re = qr/(?:$id_re)/;



sub new {
    my ($class, %opts) = @_;
    bless {}, $class;
}


sub hanyu2id {
    my ($self, $text) = @_;
    my $sub1 = sub {
        my $t = shift;
        $t =~ s/($hy_re)([12345]?)/(ref($hy2id{$1}) ? $hy2id{$1}[0] : $hy2id{$1}) . $2/eg;
        $t;
    };
    $text =~ s/\b((?:$hy_re[12345]?)+)\b/$sub1->($1)/eg;
    $text;
}


sub id2hanyu {
    my ($self, $text, $opts) = @_;
    if (!defined($opts)) { $opts = {} }
    my $sub2 = sub {
        my $t = shift;
        if ($opts->{list_all}) {
            $t =~ s/($id_re)([12345]?)/
                (ref($id2hy{$1}) ? "(".join("|", sort(@{ $id2hy{$1} })).")" : $id2hy{$1}) . $2/eg;
        } else {
            $t =~ s/($id_re)([12345]?)/
                (ref($id2hy{$1}) ? die("ambiguous") : $id2hy{$1}) . $2/eg;
        }
        $t;
    };
    eval {
        $text =~ s/\b((?:$id_re[12345]?)+)\b/$sub2->($1)/eg;
    };
    $@ ? undef : $text;
}


sub detect {
    my ($self, $text) = @_;
    my $n_hy = 0;
    my $n_id = 0;

    my $sub1 = sub {
        my $t = shift;
        $n_hy++ while $t =~ /$hy_re[12345]?/g;
        $t;
    };

    my $sub2 = sub {
        my $t = shift;
        $n_id++ while $t =~ /$id_re[12345]?/g;
        $t;
    };

    $text =~ s/\b((?:$hy_re[12345]?)+)\b/$sub1->($1)/eg;
    $text =~ s/\b((?:$id_re[12345]?)+)\b/$sub2->($1)/eg;

    return "neither"   if !$n_hy && !$n_id;
    return "hanyu"     if  $n_hy >   $n_id;
    return "id"        if  $n_hy <   $n_id;
    return "ambiguous" if  $n_hy ==  $n_id;
}


sub list_hanyu {
    my ($self) = @_;
    keys %hy2id;
}


sub list_id {
    my ($self) = @_;
    keys %id2hy;
}


1;

__END__
=pod

=head1 NAME

Lingua::ZH::PinyinConvert::ID - Convert between Hanyu Pinyin and Indonesian transliteration

=head1 VERSION

version 0.01

=head1 SYNOPSIS

    use Lingua::ZH::PinyinConvert::ID;

    my $conv = Lingua::ZH::PinyinConvert::ID;

    # convert Hanyu pinyin to Indonesian pinyin

    my $id = $conv->hanyu2id("zhongwen"); # "cungwen"
       $id = $conv->hanyu2id("zhong1 wen2"); # "cung1 wen2"

    # convert Indonesian pinyin to Hanyu pinyin, if possible. if
    # ambiguous, then will return undef.

    my $hanyu = $conv->id2hanyu("i sheng"); # "yi sheng"
       $hanyu = $conv->id2hanyu("ce"); # undef, ambiguous between ze/zhe/zhi/zi
       $hanyu = $conv->id2hanyu("ce", {list_all=>1}); "(ze|zhe|zhi|zi)"

    # detect Hanyu pinyin or Indonesian pinyin in text. return
    # "hanyu", "id", "neither", or "ambiguous".
    print $conv->detect("x"); # "neither"
    print $conv->detect("wo de xin"); # "hanyu"
    print $conv->detect("wo de sin"); # "id"
    print $conv->detect("wo ai ni"); # "ambiguous"

=head1 DESCRIPTION

This module converts between Hanyu Pinyin system and "Indonesian
Pinyin". The latter is not really a pinyin system as much as an
informal and inaccurate transliteration convention of Mandarin sounds
into Indonesian.

Hanyu Pinyin is getting more popular in Indonesia, but you can still
encounter Indonesian transliteration in some places, e.g. in Karaoke
video subtitles or old textbooks. Indonesian transliteration is useful
for those unfamiliar with both Hanzi characters and Hanyu pinyin.

=head1 METHODS

=head2 new(%opts)

Create a new instance. Currently there are no known options.

=head2 hanyu2id($text)

Convert Hanyu pinyin to Indonesian pinyin. Pinyins are expected to be
written in lowercase. Unknown characters will just be returned as-is.

=head2 id2hanyu($text[, $opts])

Convert Indonesian pinyin to Hanyu pinyin. Pinyins are expected to be
written in lowercase. Since Indonesian pinyin can be ambiguous
(e.g. Mandarin sounds 'ze', 'zhe', 'zhi', 'zi' are usually all
transliterated as 'ce'), conversion is not always possible. When this
is the case, undef is returned.

$opts is an optional hashref. If you specify 'list_all'=>1 pair, then
instead of undef, all possible Hanyu pinyin alternatives will be
listed instead.

=head2 detect($text)

Detect Hanyu pinyin or Indonesian pinyin in text. Pinyins are expected
to be written in lowercase. Can return "hanyu", "id", "neither", or
"ambiguous".

=head2 list_hanyu()

Return all Hanyu pinyin syllables.

=head2 list_id()

Return all Indonesian transliteration syllables.

=head1 SEE ALSO

L<Lingua::ZH::PinyinConvert>

L<Lingua::Han::PinYin>

=head1 AUTHOR

  Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

