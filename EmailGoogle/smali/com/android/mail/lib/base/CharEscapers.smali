.class public final Lcom/android/mail/lib/base/CharEscapers;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/base/CharEscapers$FallThroughCharEscaper;,
        Lcom/android/mail/lib/base/CharEscapers$HtmlCharEscaper;,
        Lcom/android/mail/lib/base/CharEscapers$JavascriptCharEscaper;,
        Lcom/android/mail/lib/base/CharEscapers$JavaCharEscaper;,
        Lcom/android/mail/lib/base/CharEscapers$FastCharEscaper;,
        Lcom/android/mail/lib/base/CharEscapers$HtmlEscaperHolder;
    }
.end annotation


# static fields
.field private static final ASCII_HTML_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final CPP_URI_ESCAPER:Lcom/android/mail/lib/base/Escaper;

.field private static final HEX_DIGITS:[C

.field private static final JAVASCRIPT_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final JAVA_CHAR_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final JAVA_STRING_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final JAVA_STRING_UNICODE_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final NULL_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final PYTHON_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final URI_ESCAPER:Lcom/android/mail/lib/base/Escaper;

.field private static final URI_ESCAPER_NO_PLUS:Lcom/android/mail/lib/base/Escaper;

.field private static final URI_PATH_ESCAPER:Lcom/android/mail/lib/base/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER:Lcom/android/mail/lib/base/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER_WITH_PLUS:Lcom/android/mail/lib/base/Escaper;

.field private static final XML_CONTENT_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

.field private static final XML_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    #v8=(PosByte);
    const/16 v7, 0xa

    #v7=(PosByte);
    const/16 v6, 0x9

    #v6=(PosByte);
    const/16 v5, 0x27

    #v5=(PosByte);
    const/16 v4, 0x22

    .line 40
    #v4=(PosByte);
    new-instance v0, Lcom/android/mail/lib/base/CharEscapers$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/base/CharEscapers$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->NULL_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 106
    invoke-static {}, Lcom/android/mail/lib/base/CharEscapers;->newBasicXmlEscapeBuilder()Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&quot;"

    #v1=(Reference);
    invoke-virtual {v0, v4, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&apos;"

    invoke-virtual {v0, v5, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/android/mail/lib/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->XML_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 133
    invoke-static {}, Lcom/android/mail/lib/base/CharEscapers;->newBasicXmlEscapeBuilder()Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/android/mail/lib/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->XML_CONTENT_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 428
    new-instance v0, Lcom/android/mail/lib/base/CharEscaperBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "&quot;"

    invoke-virtual {v0, v4, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "&#39;"

    invoke-virtual {v0, v5, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x26

    #v1=(PosByte);
    const-string v2, "&amp;"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/android/mail/lib/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->ASCII_HTML_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 637
    new-instance v0, Lcom/android/mail/lib/base/PercentEscaper;

    #v0=(UninitRef);
    const-string v1, "-_.*"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->URI_ESCAPER:Lcom/android/mail/lib/base/Escaper;

    .line 640
    new-instance v0, Lcom/android/mail/lib/base/PercentEscaper;

    #v0=(UninitRef);
    const-string v1, "-_.*"

    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->URI_ESCAPER_NO_PLUS:Lcom/android/mail/lib/base/Escaper;

    .line 643
    new-instance v0, Lcom/android/mail/lib/base/PercentEscaper;

    #v0=(UninitRef);
    const-string v1, "-_.!~*\'()@:$&,;="

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->URI_PATH_ESCAPER:Lcom/android/mail/lib/base/Escaper;

    .line 646
    new-instance v0, Lcom/android/mail/lib/base/PercentEscaper;

    #v0=(UninitRef);
    const-string v1, "-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/android/mail/lib/base/Escaper;

    .line 649
    new-instance v0, Lcom/android/mail/lib/base/PercentEscaper;

    #v0=(UninitRef);
    const-string v1, "-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->URI_QUERY_STRING_ESCAPER_WITH_PLUS:Lcom/android/mail/lib/base/Escaper;

    .line 692
    new-instance v0, Lcom/android/mail/lib/base/PercentEscaper;

    #v0=(UninitRef);
    const-string v1, "!()*-._~,/:"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->CPP_URI_ESCAPER:Lcom/android/mail/lib/base/Escaper;

    .line 714
    new-instance v0, Lcom/android/mail/lib/base/CharEscapers$JavaCharEscaper;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/mail/lib/base/CharEscaperBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;-><init>()V

    #v1=(Reference);
    const/16 v2, 0x8

    #v2=(PosByte);
    const-string v3, "\\b"

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\n"

    #v2=(Reference);
    invoke-virtual {v1, v7, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v4, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    #v2=(PosByte);
    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/lib/base/CharEscapers$JavaCharEscaper;-><init>([[C)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->JAVA_STRING_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 744
    new-instance v0, Lcom/android/mail/lib/base/CharEscapers$JavaCharEscaper;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/mail/lib/base/CharEscaperBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;-><init>()V

    #v1=(Reference);
    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\n"

    #v2=(Reference);
    invoke-virtual {v1, v7, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\\'"

    invoke-virtual {v1, v5, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v4, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    #v2=(PosByte);
    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/lib/base/CharEscapers$JavaCharEscaper;-><init>([[C)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->JAVA_CHAR_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 770
    new-instance v0, Lcom/android/mail/lib/base/CharEscapers$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/base/CharEscapers$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->JAVA_STRING_UNICODE_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 805
    new-instance v0, Lcom/android/mail/lib/base/CharEscaperBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "\\n"

    invoke-virtual {v0, v7, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\r"

    invoke-virtual {v0, v8, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\t"

    invoke-virtual {v0, v6, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x5c

    #v1=(PosByte);
    const-string v2, "\\\\"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\\""

    #v1=(Reference);
    invoke-virtual {v0, v4, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const-string v1, "\\\'"

    invoke-virtual {v0, v5, v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/android/mail/lib/base/CharEscaper;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->PYTHON_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 829
    new-instance v0, Lcom/android/mail/lib/base/CharEscapers$JavascriptCharEscaper;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/mail/lib/base/CharEscaperBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "\\x27"

    invoke-virtual {v1, v5, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\x22"

    invoke-virtual {v1, v4, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c

    #v2=(PosByte);
    const-string v3, "\\x3c"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    const-string v3, "\\x3d"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    const-string v3, "\\x3e"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x26

    const-string v3, "\\x26"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\t"

    #v2=(Reference);
    invoke-virtual {v1, v6, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc

    #v2=(PosByte);
    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string v2, "\\r"

    #v2=(Reference);
    invoke-virtual {v1, v8, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    #v2=(PosByte);
    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/lib/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/lib/base/CharEscapers$JavascriptCharEscaper;-><init>([[C)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->JAVASCRIPT_ESCAPER:Lcom/android/mail/lib/base/CharEscaper;

    .line 1101
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/base/CharEscapers;->HEX_DIGITS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$100()[C
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/mail/lib/base/CharEscapers;->HEX_DIGITS:[C

    #v0=(Reference);
    return-object v0
.end method

.method private static newBasicXmlEscapeBuilder()Lcom/android/mail/lib/base/CharEscaperBuilder;
    .locals 3

    .prologue
    .line 846
    new-instance v0, Lcom/android/mail/lib/base/CharEscaperBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/base/CharEscaperBuilder;-><init>()V

    #v0=(Reference);
    const/16 v1, 0x26

    #v1=(PosByte);
    const-string v2, "&amp;"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    const/16 v1, 0x1d

    new-array v1, v1, [C

    #v1=(Reference);
    fill-array-data v1, :array_0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/lib/base/CharEscaperBuilder;->addEscapes([CLjava/lang/String;)Lcom/android/mail/lib/base/CharEscaperBuilder;

    move-result-object v0

    return-object v0

    #v0=(Unknown);v1=(Unknown);v2=(Unknown);
    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
    .end array-data
.end method
