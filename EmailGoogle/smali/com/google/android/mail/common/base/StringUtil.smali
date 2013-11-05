.class public final Lcom/google/android/mail/common/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/base/StringUtil$1;,
        Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;,
        Lcom/google/android/mail/common/base/StringUtil$JsEscapingMode;
    }
.end annotation


# static fields
.field private static final CJK_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_MATCHER:Lcom/google/android/mail/common/base/CharMatcher;

.field static final ESCAPE_STRINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final FANCY_DOUBLE_QUOTE:Lcom/google/android/mail/common/base/CharMatcher;

.field private static final FANCY_SINGLE_QUOTE:Lcom/google/android/mail/common/base/CharMatcher;

.field private static final HEX_CHARS:[C

.field static final HEX_LETTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_ESCAPE:Lcom/google/android/mail/common/base/CharEscaper;

.field private static final JSON_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final JS_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LT_GT_ESCAPE:Lcom/google/android/mail/common/base/CharEscaper;

.field private static final NEWLINE_SPLITTER:Lcom/google/android/mail/common/base/Splitter;

.field private static final OCTAL_CHARS:[C

.field private static final REGEX_ESCAPE:Lcom/google/android/mail/common/base/CharEscaper;

.field private static final TO_WORDS:Lcom/google/android/mail/common/base/Splitter;

.field private static final characterReferencePattern:Ljava/util/regex/Pattern;

.field private static final dbSpecPattern:Ljava/util/regex/Pattern;

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    #v7=(PosByte);
    const/16 v6, 0x3e

    #v6=(PosByte);
    const/16 v5, 0x3c

    #v5=(PosByte);
    const/16 v4, 0xa

    #v4=(PosByte);
    const/4 v3, 0x0

    .line 396
    #v3=(Null);
    invoke-static {v4}, Lcom/google/android/mail/common/base/Splitter;->on(C)Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/android/mail/common/base/Splitter;->omitEmptyStrings()Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/android/mail/common/base/Splitter;

    .line 450
    sget-object v0, Lcom/google/android/mail/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    invoke-static {v0}, Lcom/google/android/mail/common/base/Splitter;->on(Lcom/google/android/mail/common/base/CharMatcher;)Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/Splitter;->omitEmptyStrings()Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->TO_WORDS:Lcom/google/android/mail/common/base/Splitter;

    .line 721
    const-string v0, "\u0091\u0092\u2018\u2019"

    invoke-static {v0}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 723
    const-string v0, "\u0093\u0094\u201c\u201d"

    invoke-static {v0}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 997
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    const/16 v1, 0xfc

    #v1=(PosShort);
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 999
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nbsp"

    #v1=(Reference);
    const/16 v2, 0xa0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iexcl"

    const/16 v2, 0xa1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cent"

    const/16 v2, 0xa2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&pound"

    const/16 v2, 0xa3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&curren"

    const/16 v2, 0xa4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&yen"

    const/16 v2, 0xa5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&brvbar"

    const/16 v2, 0xa6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sect"

    const/16 v2, 0xa7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uml"

    const/16 v2, 0xa8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&copy"

    const/16 v2, 0xa9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ordf"

    const/16 v2, 0xaa

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&laquo"

    const/16 v2, 0xab

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&not"

    const/16 v2, 0xac

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&shy"

    const/16 v2, 0xad

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&reg"

    const/16 v2, 0xae

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&macr"

    const/16 v2, 0xaf

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&deg"

    const/16 v2, 0xb0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&plusmn"

    const/16 v2, 0xb1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup2"

    const/16 v2, 0xb2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup3"

    const/16 v2, 0xb3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&acute"

    const/16 v2, 0xb4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&micro"

    const/16 v2, 0xb5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&para"

    const/16 v2, 0xb6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&middot"

    const/16 v2, 0xb7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cedil"

    const/16 v2, 0xb8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup1"

    const/16 v2, 0xb9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ordm"

    const/16 v2, 0xba

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&raquo"

    const/16 v2, 0xbb

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frac14"

    const/16 v2, 0xbc

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frac12"

    const/16 v2, 0xbd

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frac34"

    const/16 v2, 0xbe

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iquest"

    const/16 v2, 0xbf

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Agrave"

    const/16 v2, 0xc0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Aacute"

    const/16 v2, 0xc1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Acirc"

    const/16 v2, 0xc2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Atilde"

    const/16 v2, 0xc3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Auml"

    const/16 v2, 0xc4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Aring"

    const/16 v2, 0xc5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&AElig"

    const/16 v2, 0xc6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ccedil"

    const/16 v2, 0xc7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Egrave"

    const/16 v2, 0xc8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Eacute"

    const/16 v2, 0xc9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ecirc"

    const/16 v2, 0xca

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Euml"

    const/16 v2, 0xcb

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Igrave"

    const/16 v2, 0xcc

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Iacute"

    const/16 v2, 0xcd

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Icirc"

    const/16 v2, 0xce

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Iuml"

    const/16 v2, 0xcf

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ETH"

    const/16 v2, 0xd0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ntilde"

    const/16 v2, 0xd1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ograve"

    const/16 v2, 0xd2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Oacute"

    const/16 v2, 0xd3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ocirc"

    const/16 v2, 0xd4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Otilde"

    const/16 v2, 0xd5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ouml"

    const/16 v2, 0xd6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&times"

    const/16 v2, 0xd7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Oslash"

    const/16 v2, 0xd8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ugrave"

    const/16 v2, 0xd9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Uacute"

    const/16 v2, 0xda

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Ucirc"

    const/16 v2, 0xdb

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Uuml"

    const/16 v2, 0xdc

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Yacute"

    const/16 v2, 0xdd

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&THORN"

    const/16 v2, 0xde

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&szlig"

    const/16 v2, 0xdf

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&agrave"

    const/16 v2, 0xe0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&aacute"

    const/16 v2, 0xe1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&acirc"

    const/16 v2, 0xe2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&atilde"

    const/16 v2, 0xe3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&auml"

    const/16 v2, 0xe4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&aring"

    const/16 v2, 0xe5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&aelig"

    const/16 v2, 0xe6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ccedil"

    const/16 v2, 0xe7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&egrave"

    const/16 v2, 0xe8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&eacute"

    const/16 v2, 0xe9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ecirc"

    const/16 v2, 0xea

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&euml"

    const/16 v2, 0xeb

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&igrave"

    const/16 v2, 0xec

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iacute"

    const/16 v2, 0xed

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&icirc"

    const/16 v2, 0xee

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iuml"

    const/16 v2, 0xef

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&eth"

    const/16 v2, 0xf0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ntilde"

    const/16 v2, 0xf1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ograve"

    const/16 v2, 0xf2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oacute"

    const/16 v2, 0xf3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ocirc"

    const/16 v2, 0xf4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&otilde"

    const/16 v2, 0xf5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ouml"

    const/16 v2, 0xf6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&divide"

    const/16 v2, 0xf7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oslash"

    const/16 v2, 0xf8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ugrave"

    const/16 v2, 0xf9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uacute"

    const/16 v2, 0xfa

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ucirc"

    const/16 v2, 0xfb

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uuml"

    const/16 v2, 0xfc

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&yacute"

    const/16 v2, 0xfd

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&thorn"

    const/16 v2, 0xfe

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&yuml"

    const/16 v2, 0xff

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&fnof"

    const/16 v2, 0x192

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Alpha"

    const/16 v2, 0x391

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Beta"

    const/16 v2, 0x392

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Gamma"

    const/16 v2, 0x393

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Delta"

    const/16 v2, 0x394

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Epsilon"

    const/16 v2, 0x395

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Zeta"

    const/16 v2, 0x396

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Eta"

    const/16 v2, 0x397

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Theta"

    const/16 v2, 0x398

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Iota"

    const/16 v2, 0x399

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Kappa"

    const/16 v2, 0x39a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Lambda"

    const/16 v2, 0x39b

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Mu"

    const/16 v2, 0x39c

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Nu"

    const/16 v2, 0x39d

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Xi"

    const/16 v2, 0x39e

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Omicron"

    const/16 v2, 0x39f

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Pi"

    const/16 v2, 0x3a0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Rho"

    const/16 v2, 0x3a1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Sigma"

    const/16 v2, 0x3a3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Tau"

    const/16 v2, 0x3a4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Upsilon"

    const/16 v2, 0x3a5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Phi"

    const/16 v2, 0x3a6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Chi"

    const/16 v2, 0x3a7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Psi"

    const/16 v2, 0x3a8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Omega"

    const/16 v2, 0x3a9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&alpha"

    const/16 v2, 0x3b1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&beta"

    const/16 v2, 0x3b2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&gamma"

    const/16 v2, 0x3b3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&delta"

    const/16 v2, 0x3b4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&epsilon"

    const/16 v2, 0x3b5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&zeta"

    const/16 v2, 0x3b6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&eta"

    const/16 v2, 0x3b7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&theta"

    const/16 v2, 0x3b8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&iota"

    const/16 v2, 0x3b9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&kappa"

    const/16 v2, 0x3ba

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lambda"

    const/16 v2, 0x3bb

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&mu"

    const/16 v2, 0x3bc

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nu"

    const/16 v2, 0x3bd

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&xi"

    const/16 v2, 0x3be

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&omicron"

    const/16 v2, 0x3bf

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&pi"

    const/16 v2, 0x3c0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rho"

    const/16 v2, 0x3c1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sigmaf"

    const/16 v2, 0x3c2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sigma"

    const/16 v2, 0x3c3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&tau"

    const/16 v2, 0x3c4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&upsilon"

    const/16 v2, 0x3c5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&phi"

    const/16 v2, 0x3c6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&chi"

    const/16 v2, 0x3c7

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&psi"

    const/16 v2, 0x3c8

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&omega"

    const/16 v2, 0x3c9

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&thetasym"

    const/16 v2, 0x3d1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&upsih"

    const/16 v2, 0x3d2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&piv"

    const/16 v2, 0x3d6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&bull"

    const/16 v2, 0x2022

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&hellip"

    const/16 v2, 0x2026

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&prime"

    const/16 v2, 0x2032

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Prime"

    const/16 v2, 0x2033

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oline"

    const/16 v2, 0x203e

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&frasl"

    const/16 v2, 0x2044

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&weierp"

    const/16 v2, 0x2118

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&image"

    const/16 v2, 0x2111

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&real"

    const/16 v2, 0x211c

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&trade"

    const/16 v2, 0x2122

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&alefsym"

    const/16 v2, 0x2135

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&larr"

    const/16 v2, 0x2190

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uarr"

    const/16 v2, 0x2191

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rarr"

    const/16 v2, 0x2192

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&darr"

    const/16 v2, 0x2193

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&harr"

    const/16 v2, 0x2194

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&crarr"

    const/16 v2, 0x21b5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lArr"

    const/16 v2, 0x21d0

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&uArr"

    const/16 v2, 0x21d1

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rArr"

    const/16 v2, 0x21d2

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&dArr"

    const/16 v2, 0x21d3

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&hArr"

    const/16 v2, 0x21d4

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&forall"

    const/16 v2, 0x2200

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&part"

    const/16 v2, 0x2202

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&exist"

    const/16 v2, 0x2203

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&empty"

    const/16 v2, 0x2205

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nabla"

    const/16 v2, 0x2207

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&isin"

    const/16 v2, 0x2208

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&notin"

    const/16 v2, 0x2209

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ni"

    const/16 v2, 0x220b

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&prod"

    const/16 v2, 0x220f

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sum"

    const/16 v2, 0x2211

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&minus"

    const/16 v2, 0x2212

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lowast"

    const/16 v2, 0x2217

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&radic"

    const/16 v2, 0x221a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&prop"

    const/16 v2, 0x221d

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&infin"

    const/16 v2, 0x221e

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ang"

    const/16 v2, 0x2220

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&and"

    const/16 v2, 0x2227

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&or"

    const/16 v2, 0x2228

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cap"

    const/16 v2, 0x2229

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cup"

    const/16 v2, 0x222a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&int"

    const/16 v2, 0x222b

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&there4"

    const/16 v2, 0x2234

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sim"

    const/16 v2, 0x223c

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&cong"

    const/16 v2, 0x2245

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&asymp"

    const/16 v2, 0x2248

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ne"

    const/16 v2, 0x2260

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&equiv"

    const/16 v2, 0x2261

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&le"

    const/16 v2, 0x2264

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ge"

    const/16 v2, 0x2265

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sub"

    const/16 v2, 0x2282

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sup"

    const/16 v2, 0x2283

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&nsub"

    const/16 v2, 0x2284

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sube"

    const/16 v2, 0x2286

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&supe"

    const/16 v2, 0x2287

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oplus"

    const/16 v2, 0x2295

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&otimes"

    const/16 v2, 0x2297

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&perp"

    const/16 v2, 0x22a5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sdot"

    const/16 v2, 0x22c5

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lceil"

    const/16 v2, 0x2308

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rceil"

    const/16 v2, 0x2309

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lfloor"

    const/16 v2, 0x230a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rfloor"

    const/16 v2, 0x230b

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lang"

    const/16 v2, 0x2329

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rang"

    const/16 v2, 0x232a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&loz"

    const/16 v2, 0x25ca

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&spades"

    const/16 v2, 0x2660

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&clubs"

    const/16 v2, 0x2663

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&hearts"

    const/16 v2, 0x2665

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&diams"

    const/16 v2, 0x2666

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&quot"

    const/16 v2, 0x22

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&amp"

    const/16 v2, 0x26

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lt"

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&gt"

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&OElig"

    const/16 v2, 0x152

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&oelig"

    const/16 v2, 0x153

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Scaron"

    const/16 v2, 0x160

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&scaron"

    const/16 v2, 0x161

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Yuml"

    const/16 v2, 0x178

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&circ"

    const/16 v2, 0x2c6

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&tilde"

    const/16 v2, 0x2dc

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ensp"

    const/16 v2, 0x2002

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&emsp"

    const/16 v2, 0x2003

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&thinsp"

    const/16 v2, 0x2009

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&zwnj"

    const/16 v2, 0x200c

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&zwj"

    const/16 v2, 0x200d

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lrm"

    const/16 v2, 0x200e

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rlm"

    const/16 v2, 0x200f

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ndash"

    const/16 v2, 0x2013

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&mdash"

    const/16 v2, 0x2014

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lsquo"

    const/16 v2, 0x2018

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rsquo"

    const/16 v2, 0x2019

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&sbquo"

    const/16 v2, 0x201a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&ldquo"

    const/16 v2, 0x201c

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rdquo"

    const/16 v2, 0x201d

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&bdquo"

    const/16 v2, 0x201e

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&dagger"

    const/16 v2, 0x2020

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&Dagger"

    const/16 v2, 0x2021

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&permil"

    const/16 v2, 0x2030

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&lsaquo"

    const/16 v2, 0x2039

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&rsaquo"

    const/16 v2, 0x203a

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string v1, "&euro"

    const/16 v2, 0x20ac

    #v2=(PosShort);
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    const/16 v1, 0xc

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    .line 1254
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x41

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x62

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1257
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x42

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x63

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1259
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x43

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1260
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x64

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x44

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1262
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x65

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1263
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x45

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1264
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x66

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v1, 0x46

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1405
    new-instance v0, Lcom/google/android/mail/common/base/CharEscaperBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "&lt;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&gt;"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/android/mail/common/base/CharEscaper;

    .line 1411
    const-string v0, "</?[a-zA-Z][^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    .line 1749
    const-string v0, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u000b\u000c\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff"

    invoke-static {v0}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/android/mail/common/base/CharMatcher;

    .line 1804
    new-instance v0, Lcom/google/android/mail/common/base/CharEscaperBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "\\n"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\r"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x9

    #v1=(PosByte);
    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&lt;"

    #v1=(Reference);
    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&gt;"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x27

    #v1=(PosByte);
    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->JAVA_ESCAPE:Lcom/google/android/mail/common/base/CharEscaper;

    .line 1831
    new-instance v0, Lcom/google/android/mail/common/base/CharEscaperBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;-><init>()V

    #v0=(Reference);
    const/16 v1, 0x28

    const-string v2, "\\("

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x29

    const-string v2, "\\)"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    const-string v2, "\\|"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    const-string v2, "\\*"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    const-string v2, "\\+"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    const-string v2, "\\?"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const-string v2, "\\."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    const-string v2, "\\{"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    const-string v2, "\\}"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    const-string v2, "\\["

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    const-string v2, "\\]"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x24

    const-string v2, "\\$"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5e

    const-string v2, "\\^"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/android/mail/common/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/CharEscaperBuilder;->toEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->REGEX_ESCAPE:Lcom/google/android/mail/common/base/CharEscaper;

    .line 2345
    const-string v0, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    .line 2397
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2398
    #v0=(Reference);
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2399
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2400
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2401
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2402
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2403
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2404
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2405
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2406
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2407
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2408
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2409
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2410
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2411
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2412
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2413
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2414
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2415
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2416
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2417
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2418
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2419
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 2674
    const/16 v0, 0x10

    #v0=(PosByte);
    new-array v0, v0, [C

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_CHARS:[C

    .line 2677
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->HEX_CHARS:[C

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->OCTAL_CHARS:[C

    .line 2733
    const-string v0, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    .line 3155
    new-instance v0, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;-><init>(Lcom/google/android/mail/common/base/StringUtil$1;)V

    #v0=(Reference);
    const/16 v1, 0xad

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x600

    const/16 v2, 0x603

    #v2=(PosShort);
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x6dd

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x70f

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x17b4

    const/16 v2, 0x17b5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x200b

    const/16 v2, 0x200f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x202a

    const/16 v2, 0x202e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x2060

    const/16 v2, 0x2064

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x206a

    const/16 v2, 0x206f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const v1, 0xfeff

    #v1=(Char);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const v1, 0xfff9

    const v2, 0xfffb

    #v2=(Char);
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const v1, 0x1d173

    #v1=(Integer);
    const v2, 0x1d17a

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const v1, 0xe0001

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const v1, 0xe0020

    const v2, 0xe007f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x2028

    #v1=(PosShort);
    const/16 v2, 0x2029

    #v2=(PosShort);
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "\'"

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "\""

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "&"

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "<"

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, ">"

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "="

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "\\"

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->create()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->JS_ESCAPE_CHARS:Ljava/util/Set;

    .line 3187
    new-instance v0, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;-><init>(Lcom/google/android/mail/common/base/StringUtil$1;)V

    #v0=(Reference);
    const-string v1, "\""

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const-string v1, "\\"

    #v1=(Reference);
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    const/16 v1, 0x1f

    #v1=(PosByte);
    invoke-virtual {v0, v3, v1}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/StringUtil$UnicodeSetBuilder;->create()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->JSON_ESCAPE_CHARS:Ljava/util/Set;

    return-void

    .line 2674
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static final unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 1282
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lcom/google/android/mail/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static final unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .parameter "s"
    .parameter "emulateBrowsers"

    .prologue
    .line 1303
    const/16 v20, 0x26

    #v20=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1304
    .local v10, index:I
    #v10=(Integer);
    const/16 v20, -0x1

    #v20=(Byte);
    move/from16 v0, v20

    #v0=(Byte);
    if-ne v10, v0, :cond_0

    .line 1401
    .end local p0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    return-object p0

    .line 1310
    .restart local p0
    :cond_0
    #v0=(Byte);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v21=(Uninit);v22=(Uninit);
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1311
    .local v6, chars:[C
    #v6=(Reference);
    array-length v0, v6

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    move/from16 v0, v20

    new-array v7, v0, [C

    .line 1312
    .local v7, escaped:[C
    #v7=(Reference);
    const/16 v20, 0x0

    #v20=(Null);
    const/16 v21, 0x0

    #v21=(Null);
    move/from16 v0, v20

    #v0=(Null);
    move/from16 v1, v21

    #v1=(Null);
    invoke-static {v6, v0, v7, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1315
    move/from16 v16, v10

    .line 1317
    .local v16, pos:I
    #v16=(Integer);
    move v8, v10

    .local v8, i:I
    :goto_1
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Integer);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Integer);v21=(Conflicted);v22=(Conflicted);
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_11

    .line 1318
    aget-char v20, v6, v8

    #v20=(Char);
    const/16 v21, 0x26

    #v21=(PosByte);
    move/from16 v0, v20

    #v0=(Char);
    move/from16 v1, v21

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 1319
    add-int/lit8 v17, v16, 0x1

    .end local v16           #pos:I
    .local v17, pos:I
    #v17=(Integer);
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    #v9=(Integer);
    aget-char v20, v6, v8

    aput-char v20, v7, v16

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    move/from16 v16, v17

    .line 1320
    .end local v17           #pos:I
    .restart local v16       #pos:I
    goto :goto_1

    .line 1324
    :cond_1
    #v9=(Conflicted);v17=(Conflicted);
    add-int/lit8 v14, v8, 0x1

    .line 1325
    .local v14, j:I
    #v14=(Integer);
    const/4 v13, 0x0

    .line 1326
    .local v13, isNumericEntity:Z
    #v13=(Null);
    array-length v0, v6

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    aget-char v20, v6, v14

    #v20=(Char);
    const/16 v21, 0x23

    move/from16 v0, v20

    #v0=(Char);
    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1327
    add-int/lit8 v14, v14, 0x1

    .line 1328
    const/4 v13, 0x1

    .line 1332
    :cond_2
    #v0=(Integer);v13=(Boolean);v20=(Integer);
    const/4 v12, 0x0

    .line 1333
    .local v12, isHexEntity:Z
    #v12=(Null);
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    aget-char v20, v6, v14

    #v20=(Char);
    const/16 v21, 0x78

    move/from16 v0, v20

    #v0=(Char);
    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    aget-char v20, v6, v14

    const/16 v21, 0x58

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1334
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 1335
    const/4 v12, 0x1

    .line 1339
    :cond_4
    :goto_2
    #v0=(Integer);v12=(Boolean);v20=(Integer);v21=(Conflicted);
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 1340
    aget-char v3, v6, v14

    .line 1341
    .local v3, ch:C
    #v3=(Char);
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    .line 1342
    .local v11, isDigit:Z
    #v11=(Boolean);
    if-eqz v13, :cond_d

    .line 1344
    if-nez v12, :cond_c

    if-nez v11, :cond_c

    .line 1358
    .end local v3           #ch:C
    .end local v11           #isDigit:Z
    :cond_5
    #v3=(Conflicted);v11=(Conflicted);
    const/16 v19, 0x0

    .line 1359
    .local v19, replaced:Z
    #v19=(Null);
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v14, v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    aget-char v20, v6, v14

    #v20=(Char);
    const/16 v21, 0x3b

    #v21=(PosByte);
    move/from16 v0, v20

    #v0=(Char);
    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1362
    :cond_7
    #v0=(Integer);v20=(Integer);v21=(Conflicted);
    add-int/lit8 v20, v8, 0x2

    array-length v0, v6

    move/from16 v21, v0

    #v21=(Integer);
    move/from16 v0, v20

    move/from16 v1, v21

    #v1=(Integer);
    if-ge v0, v1, :cond_10

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    #v20=(Char);
    const/16 v21, 0x23

    #v21=(PosByte);
    move/from16 v0, v20

    #v0=(Char);
    move/from16 v1, v21

    #v1=(PosByte);
    if-ne v0, v1, :cond_10

    .line 1364
    const-wide/16 v4, 0x0

    .line 1365
    .local v4, charcode:J
    #v4=(LongLo);v5=(LongHi);
    add-int/lit8 v20, v8, 0x2

    :try_start_0
    #v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1366
    .restart local v3       #ch:C
    #v3=(Char);
    if-eqz v12, :cond_f

    .line 1367
    new-instance v20, Ljava/lang/String;

    #v20=(UninitRef);
    add-int/lit8 v21, v8, 0x3

    #v21=(Integer);
    sub-int v22, v14, v8

    #v22=(Integer);
    add-int/lit8 v22, v22, -0x3

    move-object/from16 v0, v20

    #v0=(UninitRef);
    move/from16 v1, v21

    move/from16 v2, v22

    #v2=(Integer);
    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #v0=(Reference);v20=(Reference);
    const/16 v21, 0x10

    #v21=(PosByte);
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1373
    :cond_8
    :goto_3
    #v2=(Conflicted);v20=(Conflicted);v21=(Integer);v22=(Conflicted);
    const-wide/16 v20, 0x0

    #v20=(LongLo);v21=(LongHi);
    cmp-long v20, v4, v20

    #v20=(Byte);
    if-lez v20, :cond_9

    const-wide/32 v20, 0x10000

    #v20=(LongLo);
    cmp-long v20, v4, v20

    #v20=(Byte);
    if-gez v20, :cond_9

    .line 1374
    add-int/lit8 v17, v16, 0x1

    .end local v16           #pos:I
    .restart local v17       #pos:I
    #v17=(Integer);
    long-to-int v0, v4

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    move/from16 v0, v20

    int-to-char v0, v0

    #v0=(Char);
    move/from16 v20, v0

    :try_start_1
    #v20=(Char);
    aput-char v20, v7, v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1375
    const/16 v19, 0x1

    #v19=(One);
    move/from16 v16, v17

    .line 1389
    .end local v3           #ch:C
    .end local v4           #charcode:J
    .end local v17           #pos:I
    .restart local v16       #pos:I
    :cond_9
    :goto_4
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v17=(Conflicted);v19=(Boolean);v20=(Conflicted);v21=(Conflicted);
    array-length v0, v6

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    aget-char v20, v6, v14

    #v20=(Char);
    const/16 v21, 0x3b

    #v21=(PosByte);
    move/from16 v0, v20

    #v0=(Char);
    move/from16 v1, v21

    #v1=(PosByte);
    if-ne v0, v1, :cond_a

    .line 1390
    add-int/lit8 v14, v14, 0x1

    .line 1394
    :cond_a
    #v0=(Integer);v1=(Integer);v20=(Integer);v21=(Conflicted);
    if-nez v19, :cond_b

    .line 1396
    sub-int v20, v14, v8

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v6, v8, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1397
    sub-int v20, v14, v8

    add-int v16, v16, v20

    .line 1399
    :cond_b
    move v8, v14

    .line 1400
    goto/16 :goto_1

    .line 1348
    .end local v19           #replaced:Z
    .restart local v3       #ch:C
    .restart local v11       #isDigit:Z
    :cond_c
    #v1=(PosByte);v3=(Char);v11=(Boolean);v19=(Conflicted);
    if-eqz v12, :cond_d

    if-nez v11, :cond_d

    sget-object v20, Lcom/google/android/mail/common/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    #v20=(Reference);
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    #v21=(Reference);
    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_5

    .line 1353
    :cond_d
    #v20=(Integer);v21=(Conflicted);
    if-nez v11, :cond_e

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_5

    .line 1339
    :cond_e
    #v20=(Integer);
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1369
    .end local v11           #isDigit:Z
    .restart local v4       #charcode:J
    .restart local v19       #replaced:Z
    :cond_f
    :try_start_2
    #v0=(Reference);v1=(Integer);v4=(LongLo);v5=(LongHi);v11=(Conflicted);v19=(Null);v21=(PosByte);
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_8

    .line 1370
    new-instance v20, Ljava/lang/String;

    #v20=(UninitRef);
    add-int/lit8 v21, v8, 0x2

    #v21=(Integer);
    sub-int v22, v14, v8

    #v22=(Integer);
    add-int/lit8 v22, v22, -0x2

    move-object/from16 v0, v20

    #v0=(UninitRef);
    move/from16 v1, v21

    move/from16 v2, v22

    #v2=(Integer);
    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #v0=(Reference);v20=(Reference);
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    goto :goto_3

    .line 1381
    .end local v3           #ch:C
    .end local v4           #charcode:J
    :cond_10
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v20=(Integer);v22=(Conflicted);
    new-instance v15, Ljava/lang/String;

    #v15=(UninitRef);
    sub-int v20, v14, v8

    move/from16 v0, v20

    invoke-direct {v15, v6, v8, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1382
    .local v15, key:Ljava/lang/String;
    #v15=(Reference);
    sget-object v20, Lcom/google/android/mail/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    #v20=(Reference);
    move-object/from16 v0, v20

    #v0=(Reference);
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Ljava/lang/Character;

    .line 1383
    .local v18, repl:Ljava/lang/Character;
    if-eqz v18, :cond_9

    .line 1384
    add-int/lit8 v17, v16, 0x1

    .end local v16           #pos:I
    .restart local v17       #pos:I
    #v17=(Integer);
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Character;->charValue()C

    move-result v20

    #v20=(Char);
    aput-char v20, v7, v16

    .line 1385
    const/16 v19, 0x1

    #v19=(One);
    move/from16 v16, v17

    .end local v17           #pos:I
    .restart local v16       #pos:I
    goto :goto_4

    .line 1401
    .end local v12           #isHexEntity:Z
    .end local v13           #isNumericEntity:Z
    .end local v14           #j:I
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #repl:Ljava/lang/Character;
    .end local v19           #replaced:Z
    :cond_11
    #v0=(Integer);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Integer);v21=(Conflicted);
    new-instance p0, Ljava/lang/String;

    .end local p0
    #p0=(UninitRef);
    const/16 v20, 0x0

    #v20=(Null);
    move-object/from16 v0, p0

    #v0=(UninitRef);
    move/from16 v1, v20

    #v1=(Null);
    move/from16 v2, v16

    #v2=(Integer);
    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #v0=(Reference);p0=(Reference);
    goto/16 :goto_0

    .line 1377
    .restart local v4       #charcode:J
    .restart local v12       #isHexEntity:Z
    .restart local v13       #isNumericEntity:Z
    .restart local v14       #j:I
    .restart local v19       #replaced:Z
    .restart local p0
    :catch_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v4=(LongLo);v5=(LongHi);v12=(Boolean);v13=(Boolean);v14=(Integer);v19=(Null);v20=(Conflicted);v21=(Integer);
    move-exception v20

    #v20=(Reference);
    goto/16 :goto_4

    .end local v16           #pos:I
    .restart local v3       #ch:C
    .restart local v17       #pos:I
    :catch_1
    #v0=(Char);v3=(Char);v17=(Integer);v20=(Char);v21=(LongHi);
    move-exception v20

    #v20=(Reference);
    move/from16 v16, v17

    .end local v17           #pos:I
    .restart local v16       #pos:I
    goto/16 :goto_4
.end method
