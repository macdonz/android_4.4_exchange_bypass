.class public Lcom/android/mail/lib/html/parser/HtmlParser;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HtmlParser$1;,
        Lcom/android/mail/lib/html/parser/HtmlParser$AttributeScanner;,
        Lcom/android/mail/lib/html/parser/HtmlParser$TagNameScanner;,
        Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;,
        Lcom/android/mail/lib/html/parser/HtmlParser$State;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field public static final DEFAULT_WHITELIST:Lcom/android/mail/lib/html/parser/HtmlWhitelist;

.field static NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

.field private static final TRUNCATED_ENTITY:Ljava/util/regex/Pattern;


# instance fields
.field private clipLength:I

.field private final preserveAll:Z

.field private final preserveValidHtml:Z

.field private final unknownAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/lib/html/parser/HTML$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/lib/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private whitelists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlWhitelist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/android/mail/lib/html/parser/HtmlParser;->DEBUG:Z

    .line 67
    invoke-static {}, Lcom/android/mail/lib/html/parser/HTML4;->getWhitelist()Lcom/android/mail/lib/html/parser/HtmlWhitelist;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/android/mail/lib/html/parser/HtmlWhitelist;

    .line 175
    const-string v0, "[\"\'&<>=\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser;->NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

    .line 312
    const-string v0, "\\& \\#? [0-9a-zA-Z]{0,8} $"

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlParser;->TRUNCATED_ENTITY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->NORMALIZE:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/lib/html/parser/HtmlParser;-><init>(Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;)V

    .line 103
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;)V
    .locals 4
    .parameter "parseStyle"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 110
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    #p0=(Reference);
    const v0, 0x7fffffff

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->clipLength:I

    .line 70
    new-array v0, v1, [Lcom/android/mail/lib/html/parser/HtmlWhitelist;

    #v0=(Reference);
    sget-object v3, Lcom/android/mail/lib/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/android/mail/lib/html/parser/HtmlWhitelist;

    #v3=(Reference);
    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    .line 593
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    .line 599
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    .line 111
    sget-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->PRESERVE_ALL:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->preserveAll:Z

    .line 112
    iget-boolean v0, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->preserveAll:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;->PRESERVE_VALID:Lcom/android/mail/lib/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    if-ne p1, v0, :cond_1

    :cond_0
    #v0=(Conflicted);
    move v2, v1

    :cond_1
    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/mail/lib/html/parser/HtmlParser;->preserveValidHtml:Z

    .line 113
    return-void

    :cond_2
    #v0=(Reference);v2=(Null);
    move v0, v2

    .line 111
    #v0=(Null);
    goto :goto_0
.end method
