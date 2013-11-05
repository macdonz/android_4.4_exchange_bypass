.class public Lcom/google/android/mail/common/html/parser/HtmlParser;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlParser$1;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$State;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field public static final DEFAULT_WHITELIST:Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

.field static NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

.field private static final TRUNCATED_ENTITY:Ljava/util/regex/Pattern;


# instance fields
.field private clipLength:I

.field private clipped:Z

.field private html:Ljava/lang/String;

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final preserveAll:Z

.field private final preserveValidHtml:Z

.field private state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

.field private final unknownAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mail/common/html/parser/HTML$Attribute;",
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
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private whitelists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlWhitelist;",
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
    sput-boolean v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    .line 67
    invoke-static {}, Lcom/google/android/mail/common/html/parser/HTML4;->getWhitelist()Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    .line 175
    const-string v0, "[\"\'&<>=\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

    .line 312
    const-string v0, "\\& \\#? [0-9a-zA-Z]{0,8} $"

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->TRUNCATED_ENTITY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->NORMALIZE:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>(Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;)V

    .line 103
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;)V
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
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    .line 70
    new-array v0, v1, [Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    #v0=(Reference);
    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    #v3=(Reference);
    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    .line 593
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    .line 599
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    .line 111
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->PRESERVE_ALL:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    .line 112
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->PRESERVE_VALID:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    #v0=(Reference);
    if-ne p1, v0, :cond_1

    :cond_0
    #v0=(Conflicted);
    move v2, v1

    :cond_1
    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    .line 113
    return-void

    :cond_2
    #v0=(Reference);v2=(Null);
    move v0, v2

    .line 111
    #v0=(Null);
    goto :goto_0
.end method

.method private addAttribute(Ljava/util/ArrayList;Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;II)V
    .locals 10
    .parameter
    .parameter "scanner"
    .parameter "startPos"
    .parameter "endPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    if-ge p3, p4, :cond_2

    const/4 v7, 0x1

    :goto_0
    #v7=(Boolean);
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 968
    invoke-virtual {p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->getName()Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, name:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v1, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 970
    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v0

    .line 973
    .local v0, htmlAttribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    #v0=(Reference);
    invoke-virtual {p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 975
    .local v6, value:Ljava/lang/String;
    #v6=(Reference);
    if-nez v0, :cond_4

    .line 977
    sget-boolean v7, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Unknown attribute: "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->debug(Ljava/lang/String;)V

    .line 980
    :cond_0
    #v7=(Conflicted);v8=(Conflicted);
    iget-boolean v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 981
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, original:Ljava/lang/String;
    #v3=(Reference);
    invoke-direct {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupUnknownAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v7

    invoke-static {v7, v6, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v3           #original:Ljava/lang/String;
    :cond_1
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    return-void

    .line 966
    .end local v0           #htmlAttribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_0

    .line 969
    .restart local v1       #name:Ljava/lang/String;
    :cond_3
    #v1=(Reference);v7=(Boolean);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1

    .line 986
    .restart local v0       #htmlAttribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .restart local v6       #value:Ljava/lang/String;
    :cond_4
    #v0=(Reference);v6=(Reference);v7=(Boolean);
    if-nez v6, :cond_5

    const/4 v5, 0x0

    .line 987
    .local v5, unescapedValue:Ljava/lang/String;
    :goto_3
    #v5=(Reference);
    iget-boolean v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v7, :cond_6

    .line 988
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 986
    .end local v5           #unescapedValue:Ljava/lang/String;
    :cond_5
    #v5=(Uninit);v7=(Boolean);
    invoke-static {v6}, Lcom/google/android/mail/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    goto :goto_3

    .line 990
    .restart local v5       #unescapedValue:Ljava/lang/String;
    :cond_6
    iget-boolean v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v7, :cond_f

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 997
    .local v3, original:Ljava/lang/StringBuilder;
    #v3=(Reference);
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    #v7=(Integer);
    if-gt p3, v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    #v7=(Boolean);
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 998
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v7=(Reference);
    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    #v8=(Integer);
    invoke-virtual {v7, p3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\S+"

    #v8=(Reference);
    const-string v9, ""

    #v9=(Reference);
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, originalPrefix:Ljava/lang/String;
    #v4=(Reference);
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    #v7=(Integer);
    if-nez v7, :cond_7

    .line 1001
    const-string v4, " "

    .line 1003
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    if-nez v6, :cond_a

    .line 1008
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    if-ge v7, p4, :cond_9

    const/4 v7, 0x1

    :goto_5
    #v7=(Boolean);
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1009
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v7=(Reference);
    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    #v8=(Integer);
    invoke-virtual {v7, v8, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1010
    .local v2, nameEtc:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .end local v2           #nameEtc:Ljava/lang/String;
    :goto_6
    #v2=(Conflicted);v9=(Conflicted);
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 997
    .end local v4           #originalPrefix:Ljava/lang/String;
    :cond_8
    #v2=(Uninit);v4=(Uninit);v7=(Integer);v8=(Uninit);v9=(Uninit);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_4

    .line 1008
    .restart local v4       #originalPrefix:Ljava/lang/String;
    :cond_9
    #v4=(Reference);v7=(Integer);v8=(Reference);v9=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_5

    .line 1014
    :cond_a
    #v7=(Integer);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7, v1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    #v7=(Integer);
    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    #v8=(Integer);
    if-ge v7, v8, :cond_b

    const/4 v7, 0x1

    :goto_7
    #v7=(Boolean);
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1020
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v7=(Reference);
    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    iget v9, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    #v9=(Integer);
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    iget-boolean v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    #v7=(Boolean);
    if-eqz v7, :cond_c

    .line 1026
    const-string v7, "<"

    #v7=(Reference);
    const-string v8, "&lt;"

    #v8=(Reference);
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :goto_8
    #v7=(Conflicted);v8=(Conflicted);
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    #v7=(Integer);
    if-gt v7, p4, :cond_e

    const/4 v7, 0x1

    :goto_9
    #v7=(Boolean);
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1041
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v7=(Reference);
    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    #v8=(Integer);
    invoke-virtual {v7, v8, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1019
    :cond_b
    #v7=(Integer);v9=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_7

    .line 1030
    :cond_c
    #v7=(Boolean);v9=(Integer);
    sget-object v7, Lcom/google/android/mail/common/html/parser/HtmlParser;->NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

    #v7=(Reference);
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_d

    .line 1031
    const/16 v7, 0x22

    #v7=(PosByte);
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1032
    const-string v7, "\""

    #v7=(Reference);
    const-string v8, "&quot;"

    #v8=(Reference);
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const/16 v7, 0x22

    #v7=(PosByte);
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1035
    :cond_d
    #v7=(Boolean);v8=(Integer);
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1040
    :cond_e
    #v7=(Integer);v8=(Conflicted);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_9

    .line 1047
    .end local v3           #original:Ljava/lang/StringBuilder;
    .end local v4           #originalPrefix:Ljava/lang/String;
    :cond_f
    #v3=(Uninit);v4=(Uninit);v7=(Boolean);v8=(Uninit);v9=(Uninit);
    invoke-static {v0, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private addEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V
    .locals 9
    .parameter "element"
    .parameter "startPos"
    .parameter "startAttributesPos"
    .parameter "endPos"

    .prologue
    const/16 v8, 0x3e

    #v8=(PosByte);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    .line 913
    #v6=(Null);
    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    #v4=(Boolean);
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 914
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    #v4=(Char);
    const/16 v7, 0x3c

    #v7=(PosByte);
    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_1
    #v4=(Boolean);
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 915
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v4=(Reference);
    add-int/lit8 v7, p2, 0x1

    #v7=(Integer);
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    #v4=(Char);
    const/16 v7, 0x2f

    #v7=(PosByte);
    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_2
    #v4=(Boolean);
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 917
    iget-boolean v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v4, :cond_4

    .line 919
    if-ge p2, p4, :cond_3

    :goto_3
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 920
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v4, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, content:Ljava/lang/String;
    #v0=(Reference);
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    .end local v0           #content:Ljava/lang/String;
    :goto_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Integer);
    return-void

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(One);v7=(Uninit);
    move v4, v6

    .line 913
    #v4=(Null);
    goto :goto_0

    :cond_1
    #v4=(Char);v7=(PosByte);
    move v4, v6

    .line 914
    #v4=(Null);
    goto :goto_1

    :cond_2
    #v4=(Char);
    move v4, v6

    .line 915
    #v4=(Null);
    goto :goto_2

    :cond_3
    #v4=(Boolean);
    move v5, v6

    .line 919
    #v5=(Null);
    goto :goto_3

    .line 922
    :cond_4
    #v5=(One);
    iget-boolean v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v4, :cond_8

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    const-string v4, "</"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    .local v3, validContent:Ljava/lang/StringBuilder;
    #v3=(Reference);
    if-ge p2, p3, :cond_6

    move v4, v5

    :goto_5
    #v4=(Boolean);
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 932
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v4=(Reference);
    add-int/lit8 v7, p2, 0x2

    #v7=(Integer);
    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, tagName:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    if-gt p3, p4, :cond_7

    :goto_6
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 938
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v4, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, endOfTag:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    #v4=(Char);
    if-eq v4, v8, :cond_5

    .line 940
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 944
    :cond_5
    #v4=(Conflicted);
    const-string v4, "\\S+.*>"

    #v4=(Reference);
    const-string v5, ">"

    #v5=(Reference);
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1           #endOfTag:Ljava/lang/String;
    .end local v2           #tagName:Ljava/lang/String;
    :cond_6
    #v1=(Uninit);v2=(Uninit);v5=(One);v7=(PosByte);
    move v4, v6

    .line 931
    #v4=(Null);
    goto :goto_5

    .restart local v2       #tagName:Ljava/lang/String;
    :cond_7
    #v2=(Reference);v4=(Reference);v7=(Integer);
    move v5, v6

    .line 937
    #v5=(Null);
    goto :goto_6

    .line 949
    .end local v2           #tagName:Ljava/lang/String;
    .end local v3           #validContent:Ljava/lang/StringBuilder;
    :cond_8
    #v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(One);v7=(PosByte);
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v4=(Reference);
    invoke-static {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private addStartTag(Lcom/google/android/mail/common/html/parser/HTML$Element;IIIIZLjava/util/ArrayList;)V
    .locals 7
    .parameter "element"
    .parameter "startPos"
    .parameter "startAttributesPos"
    .parameter "endAttributesPos"
    .parameter "endPos"
    .parameter "isSingleTag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "IIIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p7, attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    if-ge p2, p3, :cond_0

    const/4 v5, 0x1

    :goto_0
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 850
    if-gt p3, p4, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 851
    if-gt p4, p5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 853
    iget-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v5, :cond_4

    .line 854
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, beforeAttrs:Ljava/lang/String;
    #v1=(Reference);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, afterAttrs:Ljava/lang/String;
    #v0=(Reference);
    if-eqz p6, :cond_3

    invoke-static {p1, p7, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    .line 861
    .local v3, tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_3
    #v3=(Reference);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    .end local v0           #afterAttrs:Ljava/lang/String;
    .end local v1           #beforeAttrs:Ljava/lang/String;
    :goto_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-void

    .line 849
    .end local v3           #tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_0

    .line 850
    :cond_1
    #v5=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_1

    .line 851
    :cond_2
    #v5=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_2

    .line 856
    .restart local v0       #afterAttrs:Ljava/lang/String;
    .restart local v1       #beforeAttrs:Ljava/lang/String;
    :cond_3
    #v0=(Reference);v1=(Reference);v5=(Reference);
    invoke-static {p1, p7, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    #v3=(Reference);
    goto :goto_3

    .line 862
    .end local v0           #afterAttrs:Ljava/lang/String;
    .end local v1           #beforeAttrs:Ljava/lang/String;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v5=(Boolean);
    iget-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v5, :cond_c

    .line 867
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    #v5=(Char);
    const/16 v6, 0x3c

    #v6=(PosByte);
    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_5
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    const-string v5, "<"

    #v5=(Reference);
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    .local v1, beforeAttrs:Ljava/lang/StringBuilder;
    #v1=(Reference);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v6, p2, 0x1

    #v6=(Integer);
    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, tagName:Ljava/lang/String;
    #v4=(Reference);
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    add-int/lit8 v2, p5, -0x1

    .line 874
    .local v2, endContentPos:I
    #v2=(Integer);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    #v5=(Char);
    const/16 v6, 0x3e

    #v6=(PosByte);
    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_6
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 875
    if-eqz p6, :cond_5

    .line 876
    add-int/lit8 v2, v2, -0x1

    .line 877
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    #v5=(Char);
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    :goto_7
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 879
    :cond_5
    if-gt p4, v2, :cond_9

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 883
    if-ge p4, p5, :cond_a

    const/4 v5, 0x1

    :goto_9
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 884
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {v5, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 887
    .restart local v0       #afterAttrs:Ljava/lang/String;
    #v0=(Reference);
    if-eqz p6, :cond_b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p7, v5, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    .line 892
    .restart local v3       #tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_a
    #v3=(Reference);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 867
    .end local v0           #afterAttrs:Ljava/lang/String;
    .end local v1           #beforeAttrs:Ljava/lang/StringBuilder;
    .end local v2           #endContentPos:I
    .end local v3           #tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_6
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Char);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_5

    .line 874
    .restart local v1       #beforeAttrs:Ljava/lang/StringBuilder;
    .restart local v2       #endContentPos:I
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_7
    #v1=(Reference);v2=(Integer);v4=(Reference);v5=(Char);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_6

    .line 877
    :cond_8
    #v5=(Char);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_7

    .line 879
    :cond_9
    #v5=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_8

    .line 883
    :cond_a
    #v5=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_9

    .line 887
    .restart local v0       #afterAttrs:Ljava/lang/String;
    :cond_b
    #v0=(Reference);v5=(Reference);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p7, v5, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    #v3=(Reference);
    goto :goto_a

    .line 895
    .end local v0           #afterAttrs:Ljava/lang/String;
    .end local v1           #beforeAttrs:Ljava/lang/StringBuilder;
    .end local v2           #endContentPos:I
    .end local v4           #tagName:Ljava/lang/String;
    :cond_c
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);
    if-eqz p6, :cond_d

    invoke-static {p1, p7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    .line 898
    .restart local v3       #tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_b
    #v3=(Reference);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v5=(Reference);
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 895
    .end local v3           #tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_d
    #v3=(Uninit);v5=(Boolean);
    invoke-static {p1, p7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    #v3=(Reference);
    goto :goto_b
.end method

.method static coalesceTextNodes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    #v4=(Integer);
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v2, out:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    #v2=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 257
    .local v3, textNodes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;>;"
    #v3=(Reference);
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 258
    .local v1, node:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    instance-of v4, v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v4, :cond_0

    .line 259
    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .end local v1           #node:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .restart local v1       #node:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-static {v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->mergeTextNodes(Ljava/util/LinkedList;Ljava/util/List;)V

    .line 262
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v1           #node:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_1
    #v1=(Conflicted);
    invoke-static {v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->mergeTextNodes(Ljava/util/LinkedList;Ljava/util/List;)V

    .line 266
    return-object v2
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1129
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method private lookupUnknownAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 2
    .parameter "name"

    .prologue
    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 628
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 629
    .local v0, result:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .end local v0           #result:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p1, v1}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    .line 631
    .restart local v0       #result:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    #v0=(Reference);
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_0
    return-object v0
.end method

.method private lookupUnknownElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 607
    #v2=(Null);
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 608
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 609
    .local v0, result:Lcom/google/android/mail/common/html/parser/HTML$Element;
    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .end local v0           #result:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v0=(UninitRef);
    const/4 v4, 0x1

    #v4=(One);
    sget-object v6, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->NONE:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    #v6=(Reference);
    move-object v1, p1

    move v3, v2

    #v3=(Null);
    move v5, v2

    #v5=(Null);
    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HTML$Element;-><init>(Ljava/lang/String;IZZZLcom/google/android/mail/common/html/parser/HTML$Element$Flow;)V

    .line 616
    .restart local v0       #result:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v0=(Reference);
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v0
.end method

.method private static mergeTextNodes(Ljava/util/LinkedList;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, textNodes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;>;"
    .local p1, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    .line 279
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v7

    #v7=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    if-ne v7, v8, :cond_1

    .line 280
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 282
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(One);
    const/4 v3, 0x0

    .line 283
    .local v3, combinedTextLen:I
    #v3=(Null);
    const/4 v1, 0x0

    .line 284
    .local v1, combinedInputLen:I
    #v1=(Null);
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    #v1=(Integer);v3=(Integer);v4=(Reference);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 285
    .local v6, text:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    #v7=(Integer);
    add-int/2addr v3, v7

    .line 286
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    if-eqz v7, :cond_2

    .line 287
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    #v7=(Integer);
    add-int/2addr v1, v7

    goto :goto_1

    .line 290
    .end local v6           #text:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_3
    #v6=(Conflicted);v7=(Boolean);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 291
    .local v2, combinedText:Ljava/lang/StringBuilder;
    #v2=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v0, combinedInput:Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    #v0=(Reference);v7=(Conflicted);
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_5

    .line 293
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 294
    .restart local v6       #text:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 296
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 299
    .end local v6           #text:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_5
    #v6=(Conflicted);v7=(Boolean);
    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, originalInput:Ljava/lang/String;
    :goto_3
    #v5=(Reference);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-static {v7, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v5           #originalInput:Ljava/lang/String;
    :cond_6
    #v5=(Uninit);v7=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_3
.end method

.method private scanComment(II)I
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, -0x1

    .line 1061
    #v5=(Byte);
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "<!--"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "<!--"

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1064
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "-->"

    const-string v3, "<!--"

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1065
    .local v0, pos:I
    #v0=(Integer);
    if-eq v0, v5, :cond_1

    .line 1066
    const-string v1, "-->"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    .line 1077
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-boolean v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createHtmlComment(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return v0

    .line 1069
    :cond_1
    #v1=(Reference);v2=(Reference);
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    const/16 v2, 0x3e

    #v2=(PosByte);
    add-int/lit8 v3, p1, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1070
    if-eq v0, v5, :cond_2

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    :cond_2
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 4
    .parameter "name"

    .prologue
    .line 824
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    #v2=(Reference);
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 825
    .local v1, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/mail/common/html/parser/HtmlWhitelist;>;"
    :cond_0
    #v0=(Conflicted);v1=(Reference);
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 826
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    invoke-interface {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;->lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v0

    .line 827
    .local v0, attr:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 831
    .end local v0           #attr:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    :goto_0
    #v2=(Conflicted);
    return-object v0

    :cond_1
    #v0=(Conflicted);v2=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 4
    .parameter "name"

    .prologue
    .line 805
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    #v2=(Reference);
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 806
    .local v1, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/mail/common/html/parser/HtmlWhitelist;>;"
    :cond_0
    #v0=(Conflicted);v1=(Reference);
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 807
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    invoke-interface {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;->lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 808
    .local v0, elem:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 812
    .end local v0           #elem:Lcom/google/android/mail/common/html/parser/HTML$Element;
    :goto_0
    #v2=(Conflicted);
    return-object v0

    :cond_1
    #v0=(Conflicted);v2=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;
    .locals 9
    .parameter "html"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 188
    #v6=(Null);
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v5

    #v5=(Reference);
    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    .line 192
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 194
    iput-boolean v6, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 196
    .local v2, end:I
    #v2=(Integer);
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    #v5=(Integer);
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    .local v0, clipEnd:I
    #v0=(Integer);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v3=(Integer);v4=(Conflicted);v8=(Conflicted);
    if-ge v3, v2, :cond_7

    iget-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    #v5=(Boolean);
    if-nez v5, :cond_7

    .line 202
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser$1;->$SwitchMap$com$google$android$mail$common$html$parser$HtmlParser$State:[I

    #v5=(Reference);
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v8=(Reference);
    invoke-virtual {v8}, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->ordinal()I

    move-result v8

    #v8=(Integer);
    aget v5, v5, v8

    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 226
    new-instance v5, Ljava/lang/Error;

    #v5=(UninitRef);
    const-string v6, "Unknown state!"

    #v6=(Reference);
    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #v5=(Reference);
    throw v5

    .line 205
    :pswitch_0
    #v5=(Integer);v6=(Null);
    invoke-virtual {p0, v3, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanText(II)I

    move-result v4

    .line 206
    .local v4, pos:I
    #v4=(Integer);
    if-gt v4, v3, :cond_0

    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v5=(Reference);
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v8=(Reference);
    if-eq v5, v8, :cond_1

    :cond_0
    #v5=(Conflicted);v8=(Conflicted);
    move v5, v7

    :goto_1
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 229
    :goto_2
    move v3, v4

    .line 232
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    #v5=(Integer);
    if-lt v4, v5, :cond_6

    move v5, v7

    :goto_3
    #v5=(Boolean);
    iput-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    goto :goto_0

    :cond_1
    #v5=(Reference);v8=(Reference);
    move v5, v6

    .line 206
    #v5=(Null);
    goto :goto_1

    .line 210
    .end local v4           #pos:I
    :pswitch_1
    #v4=(Conflicted);v5=(Integer);v8=(Integer);
    invoke-virtual {p0, v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanTag(II)I

    move-result v4

    .line 211
    .restart local v4       #pos:I
    #v4=(Integer);
    if-le v4, v3, :cond_2

    move v5, v7

    :goto_4
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto :goto_2

    :cond_2
    #v5=(Integer);
    move v5, v6

    #v5=(Null);
    goto :goto_4

    .line 215
    .end local v4           #pos:I
    :pswitch_2
    #v4=(Conflicted);v5=(Integer);
    invoke-direct {p0, v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanComment(II)I

    move-result v4

    .line 216
    .restart local v4       #pos:I
    #v4=(Integer);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v5=(Reference);
    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 217
    if-le v4, v3, :cond_3

    move v5, v7

    :goto_5
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto :goto_2

    :cond_3
    #v5=(Reference);
    move v5, v6

    #v5=(Null);
    goto :goto_5

    .line 221
    .end local v4           #pos:I
    :pswitch_3
    #v4=(Conflicted);v5=(Integer);
    invoke-virtual {p0, v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanCDATA(II)I

    move-result v4

    .line 222
    .restart local v4       #pos:I
    #v4=(Integer);
    if-gt v4, v3, :cond_4

    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v5=(Reference);
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_CDATA:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v8=(Reference);
    if-eq v5, v8, :cond_5

    :cond_4
    #v5=(Conflicted);v8=(Conflicted);
    move v5, v7

    :goto_6
    #v5=(Boolean);
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto :goto_2

    :cond_5
    #v5=(Reference);v8=(Reference);
    move v5, v6

    #v5=(Null);
    goto :goto_6

    :cond_6
    #v5=(Integer);v8=(Conflicted);
    move v5, v6

    .line 232
    #v5=(Null);
    goto :goto_3

    .line 235
    .end local v4           #pos:I
    :cond_7
    #v4=(Conflicted);v5=(Integer);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v5=(Reference);
    invoke-static {v5}, Lcom/google/android/mail/common/html/parser/HtmlParser;->coalesceTextNodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    .line 237
    new-instance v1, Lcom/google/android/mail/common/html/parser/HtmlDocument;

    #v1=(UninitRef);
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-direct {v1, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    .line 238
    .local v1, doc:Lcom/google/android/mail/common/html/parser/HtmlDocument;
    #v1=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    .line 239
    const/4 p1, 0x0

    .line 240
    #p1=(Null);
    return-object v1

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method scanCDATA(II)I
    .locals 10
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v4, 0x0

    .line 1090
    #v4=(Null);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v0=(Reference);
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1091
    .local v9, tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v9}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v7

    .line 1092
    .local v7, element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v7=(Reference);
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->SCRIPT_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v0=(Reference);
    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1095
    move v8, p1

    .local v8, pos:I
    :goto_1
    #v0=(Integer);v3=(Conflicted);v5=(Conflicted);v8=(Integer);
    if-ge v8, p2, :cond_1

    .line 1096
    add-int/lit8 v0, v8, 0x2

    if-ge v0, p2, :cond_4

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    #v0=(Char);
    const/16 v2, 0x3c

    #v2=(PosByte);
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v0=(Reference);
    add-int/lit8 v2, v8, 0x1

    #v2=(Integer);
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    #v0=(Char);
    const/16 v2, 0x2f

    #v2=(PosByte);
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v0=(Reference);
    add-int/lit8 v2, v8, 0x2

    #v2=(Integer);
    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    #v5=(Integer);
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 1106
    :cond_1
    #v0=(Integer);v3=(Conflicted);v5=(Conflicted);
    if-le v8, p1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createCDATA(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;

    move-result-object v6

    .line 1109
    .local v6, cdata:Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
    #v6=(Reference);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    .end local v6           #cdata:Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
    :cond_2
    #v0=(Conflicted);v6=(Conflicted);
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TAG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 1113
    return v8

    .end local v8           #pos:I
    :cond_3
    #v0=(Boolean);v3=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);
    move v0, v4

    .line 1092
    #v0=(Null);
    goto :goto_0

    .line 1095
    .restart local v8       #pos:I
    :cond_4
    #v0=(Integer);v3=(Conflicted);v5=(Conflicted);v8=(Integer);
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method scanTag(II)I
    .locals 21
    .parameter "start"
    .parameter "end"

    .prologue
    .line 644
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    move/from16 v0, p1

    #v0=(Integer);
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    #v2=(Char);
    const/16 v4, 0x3c

    #v4=(PosByte);
    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 648
    add-int/lit8 v13, p1, 0x1

    .line 652
    .local v13, nameStart:I
    #v13=(Integer);
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v2=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 655
    const/4 v12, 0x0

    .line 656
    .local v12, isEndTag:Z
    #v12=(Null);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    #v2=(Char);
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_0

    .line 657
    const/4 v12, 0x1

    .line 658
    #v12=(One);
    add-int/lit8 v13, v13, 0x1

    .line 662
    :cond_0
    #v12=(Boolean);
    new-instance v17, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;

    #v17=(UninitRef);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    move-object/from16 v0, v17

    #v0=(UninitRef);
    invoke-direct {v0, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;-><init>(Ljava/lang/String;)V

    .line 663
    .local v17, tagNameScanner:Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
    #v0=(Reference);v17=(Reference);
    move-object/from16 v0, v17

    move/from16 v1, p2

    #v1=(Integer);
    invoke-virtual {v0, v13, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->scanName(II)I

    move-result v7

    .line 664
    .local v7, pos:I
    #v7=(Integer);
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->getTagName()Ljava/lang/String;

    move-result-object v16

    .line 665
    .local v16, tagName:Ljava/lang/String;
    #v16=(Reference);
    const/4 v3, 0x0

    .line 666
    .local v3, element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v3=(Null);
    if-nez v16, :cond_7

    .line 670
    if-nez v12, :cond_3

    .line 672
    const-string v4, "<"

    #v4=(Reference);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    const-string v2, "<"

    :goto_1
    #v2=(Reference);
    invoke-static {v4, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v18

    .line 673
    .local v18, text:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    #v18=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 793
    .end local v13           #nameStart:I
    .end local v18           #text:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return v13

    .line 644
    .end local v3           #element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v7           #pos:I
    .end local v12           #isEndTag:Z
    .end local v16           #tagName:Ljava/lang/String;
    .end local v17           #tagNameScanner:Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
    :cond_1
    #v0=(Integer);v1=(Uninit);v2=(Char);v3=(Uninit);v4=(PosByte);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0

    .line 672
    .restart local v3       #element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    .restart local v7       #pos:I
    .restart local v12       #isEndTag:Z
    .restart local v13       #nameStart:I
    .restart local v16       #tagName:Ljava/lang/String;
    .restart local v17       #tagNameScanner:Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
    :cond_2
    #v0=(Reference);v1=(Integer);v2=(Boolean);v3=(Null);v4=(Reference);v7=(Integer);v12=(Boolean);v13=(Integer);v16=(Reference);v17=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 678
    :cond_3
    #v2=(Reference);v4=(PosByte);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 679
    const-string v2, ""

    #v2=(Reference);
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupUnknownElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    .line 695
    :cond_4
    :goto_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);
    const/4 v8, 0x0

    .line 696
    .local v8, isSingleTag:Z
    #v8=(Null);
    const/4 v9, 0x0

    .line 697
    .local v9, attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    #v9=(Null);
    move v5, v7

    .line 698
    .local v5, allAttributesStartPos:I
    #v5=(Integer);
    move v6, v7

    .line 699
    .local v6, nextAttributeStartPos:I
    #v6=(Integer);
    new-instance v10, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;

    #v10=(UninitRef);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-direct {v10, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;-><init>(Ljava/lang/String;)V

    .line 700
    .local v10, attributeScanner:Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    :goto_4
    #v0=(Conflicted);v2=(Conflicted);v9=(Reference);v10=(Reference);v11=(Conflicted);v15=(Conflicted);
    move/from16 v0, p2

    #v0=(Integer);
    if-ge v7, v0, :cond_5

    .line 701
    move v15, v7

    .line 702
    .local v15, startPos:I
    #v15=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 705
    .local v11, ch:C
    #v11=(Char);
    add-int/lit8 v2, v7, 0x1

    #v2=(Integer);
    move/from16 v0, p2

    #v0=(Integer);
    if-ge v2, v0, :cond_9

    const/16 v2, 0x2f

    #v2=(PosByte);
    if-ne v11, v2, :cond_9

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    add-int/lit8 v4, v7, 0x1

    #v4=(Integer);
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    #v2=(Char);
    const/16 v4, 0x3e

    #v4=(PosByte);
    if-ne v2, v4, :cond_9

    .line 706
    const/4 v8, 0x1

    .line 707
    #v8=(One);
    add-int/lit8 v7, v7, 0x1

    .line 755
    .end local v11           #ch:C
    .end local v15           #startPos:I
    :cond_5
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v8=(Boolean);v11=(Conflicted);v15=(Conflicted);
    move/from16 v0, p2

    #v0=(Integer);
    if-ne v7, v0, :cond_14

    .line 756
    move/from16 v0, p1

    move/from16 v1, p2

    #v1=(Integer);
    if-ge v0, v1, :cond_12

    const/4 v2, 0x1

    :goto_5
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 757
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    move/from16 v0, p1

    #v0=(Integer);
    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 758
    .local v19, textNodeContent:Ljava/lang/String;
    #v19=(Reference);
    const/4 v14, 0x0

    .line 759
    .local v14, originalContent:Ljava/lang/String;
    #v14=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v2=(Boolean);
    if-eqz v2, :cond_13

    .line 760
    move-object/from16 v14, v19

    .line 767
    :cond_6
    :goto_6
    #v2=(Conflicted);v14=(Reference);v20=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v2=(Reference);
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEscapedText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v13, p2

    .line 768
    goto :goto_2

    .line 682
    .end local v5           #allAttributesStartPos:I
    .end local v6           #nextAttributeStartPos:I
    .end local v8           #isSingleTag:Z
    .end local v9           #attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v10           #attributeScanner:Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    .end local v14           #originalContent:Ljava/lang/String;
    .end local v19           #textNodeContent:Ljava/lang/String;
    :cond_7
    #v3=(Null);v4=(PosByte);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v14=(Uninit);v15=(Uninit);v19=(Uninit);v20=(Uninit);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    .line 683
    #v3=(Reference);
    if-nez v3, :cond_4

    .line 684
    sget-boolean v2, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_8

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v4, "Unknown element: "

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->debug(Ljava/lang/String;)V

    .line 688
    :cond_8
    #v2=(Conflicted);v4=(Conflicted);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupUnknownElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    goto/16 :goto_3

    .line 710
    .restart local v5       #allAttributesStartPos:I
    .restart local v6       #nextAttributeStartPos:I
    .restart local v8       #isSingleTag:Z
    .restart local v9       #attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .restart local v10       #attributeScanner:Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    .restart local v11       #ch:C
    .restart local v15       #startPos:I
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v5=(Integer);v6=(Integer);v8=(Null);v9=(Reference);v10=(Reference);v11=(Char);v15=(Integer);
    const/16 v2, 0x3e

    #v2=(PosByte);
    if-eq v11, v2, :cond_5

    .line 715
    if-eqz v12, :cond_b

    const/16 v2, 0x3c

    if-ne v2, v11, :cond_b

    .line 719
    if-eqz v3, :cond_a

    .line 720
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, p1

    #v1=(Integer);
    invoke-direct {v0, v3, v1, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V

    .line 722
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v2=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move v13, v7

    .line 723
    goto/16 :goto_2

    .line 726
    :cond_b
    #v0=(Conflicted);v2=(PosByte);
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_d

    .line 728
    add-int/lit8 v7, v7, 0x1

    .line 751
    :cond_c
    :goto_7
    #v2=(Conflicted);
    if-le v7, v15, :cond_11

    const/4 v2, 0x1

    :goto_8
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto/16 :goto_4

    .line 731
    :cond_d
    invoke-virtual {v10}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->reset()V

    .line 732
    move/from16 v0, p2

    #v0=(Integer);
    invoke-virtual {v10, v7, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->scanName(II)I

    move-result v7

    .line 733
    if-le v7, v15, :cond_10

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 736
    invoke-virtual {v10}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    if-eqz v2, :cond_c

    .line 737
    move/from16 v0, p2

    invoke-virtual {v10, v7, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->scanValue(II)I

    move-result v7

    .line 740
    if-eqz v3, :cond_f

    .line 741
    if-nez v9, :cond_e

    .line 742
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .restart local v9       #attributes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    :cond_e
    #v9=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v9, v10, v6, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addAttribute(Ljava/util/ArrayList;Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;II)V

    .line 746
    :cond_f
    #v0=(Conflicted);
    move v6, v7

    goto :goto_7

    .line 733
    :cond_10
    #v0=(Integer);v2=(Boolean);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_9

    .line 751
    :cond_11
    #v0=(Conflicted);v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_8

    .line 756
    .end local v11           #ch:C
    .end local v15           #startPos:I
    :cond_12
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v8=(Boolean);v11=(Conflicted);v15=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto/16 :goto_5

    .line 761
    .restart local v14       #originalContent:Ljava/lang/String;
    .restart local v19       #textNodeContent:Ljava/lang/String;
    :cond_13
    #v0=(Reference);v2=(Boolean);v14=(Null);v19=(Reference);
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v2, :cond_6

    .line 764
    const/16 v2, 0x3c

    #v2=(PosByte);
    invoke-static {v2}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v2

    #v2=(Reference);
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v4=(Reference);
    move/from16 v0, p1

    #v0=(Integer);
    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v20, "&lt;"

    #v20=(Reference);
    move-object/from16 v0, v20

    #v0=(Reference);
    invoke-virtual {v2, v4, v0}, Lcom/google/android/mail/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    #v14=(Reference);
    goto/16 :goto_6

    .line 772
    .end local v14           #originalContent:Ljava/lang/String;
    .end local v19           #textNodeContent:Ljava/lang/String;
    :cond_14
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v14=(Uninit);v19=(Uninit);v20=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    #v2=(Char);
    const/16 v4, 0x3e

    #v4=(PosByte);
    if-ne v2, v4, :cond_16

    const/4 v2, 0x1

    :goto_a
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 773
    add-int/lit8 v7, v7, 0x1

    .line 777
    if-eqz v3, :cond_15

    .line 778
    if-eqz v12, :cond_17

    .line 779
    move-object/from16 v0, p0

    move/from16 v1, p1

    #v1=(Integer);
    invoke-direct {v0, v3, v1, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V

    :cond_15
    :goto_b
    #v1=(Conflicted);v2=(Conflicted);v4=(Integer);
    move v13, v7

    .line 793
    goto/16 :goto_2

    .line 772
    :cond_16
    #v2=(Char);v4=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_a

    .line 783
    :cond_17
    #v2=(Boolean);
    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->SCRIPT_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v2=(Reference);
    invoke-virtual {v2, v3}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_18

    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v2=(Reference);
    invoke-virtual {v2, v3}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_19

    .line 784
    :cond_18
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_CDATA:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v2=(Reference);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    :cond_19
    #v2=(Conflicted);
    move-object/from16 v2, p0

    #v2=(Reference);
    move/from16 v4, p1

    .line 787
    #v4=(Integer);
    invoke-direct/range {v2 .. v9}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addStartTag(Lcom/google/android/mail/common/html/parser/HTML$Element;IIIIZLjava/util/ArrayList;)V

    goto :goto_b
.end method

.method scanText(II)I
    .locals 13
    .parameter "start"
    .parameter "end"

    .prologue
    .line 323
    move v6, p1

    .local v6, pos:I
    :goto_0
    #v0=(Conflicted);v6=(Integer);v8=(Conflicted);v9=(Conflicted);
    if-ge v6, p2, :cond_1

    .line 324
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, ch:C
    #v0=(Char);
    const/16 v8, 0x3c

    #v8=(PosByte);
    if-ne v0, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    #v8=(Integer);
    if-ge v8, p2, :cond_6

    .line 327
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v8=(Reference);
    add-int/lit8 v9, v6, 0x1

    #v9=(Integer);
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 328
    const/16 v8, 0x2f

    #v8=(PosByte);
    if-eq v0, v8, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_0

    const/16 v8, 0x21

    #v8=(PosByte);
    if-eq v0, v8, :cond_0

    const/16 v8, 0x3f

    if-ne v0, v8, :cond_6

    .line 331
    :cond_0
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v8=(Reference);
    add-int/lit8 v9, v6, 0x1

    const-string v10, "!--"

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x3

    #v12=(PosByte);
    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_5

    .line 332
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_COMMENT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v8=(Reference);
    iput-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 341
    .end local v0           #ch:C
    :cond_1
    :goto_1
    #v0=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    if-le v6, p1, :cond_4

    .line 342
    move v1, v6

    .line 343
    .local v1, finalPos:I
    #v1=(Integer);
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v8, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, htmlTail:Ljava/lang/String;
    #v2=(Reference);
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    #v8=(Integer);
    if-ne v6, v8, :cond_2

    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    iget-object v9, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    #v9=(Reference);
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    #v9=(Integer);
    if-ge v8, v9, :cond_2

    .line 352
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser;->TRUNCATED_ENTITY:Ljava/util/regex/Pattern;

    #v8=(Reference);
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 353
    .local v4, matcher:Ljava/util/regex/Matcher;
    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_2

    .line 354
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 357
    .local v3, matchStart:I
    #v3=(Integer);
    add-int v1, p1, v3

    .line 358
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 362
    .end local v3           #matchStart:I
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);v8=(Integer);v9=(Conflicted);
    if-le v1, p1, :cond_4

    .line 363
    const/4 v5, 0x0

    .line 364
    .local v5, originalHtml:Ljava/lang/String;
    #v5=(Null);
    iget-boolean v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    #v8=(Boolean);
    if-eqz v8, :cond_7

    .line 365
    move-object v5, v2

    .line 376
    :cond_3
    :goto_2
    #v5=(Reference);v8=(Conflicted);
    invoke-static {v2, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEscapedText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v7

    .line 377
    .local v7, textnode:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    #v7=(Reference);
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    #v8=(Reference);
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v1           #finalPos:I
    .end local v2           #htmlTail:Ljava/lang/String;
    .end local v5           #originalHtml:Ljava/lang/String;
    .end local v7           #textnode:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v6

    .line 334
    .restart local v0       #ch:C
    :cond_5
    #v0=(Char);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Integer);v10=(Reference);v11=(Null);v12=(PosByte);
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TAG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    #v8=(Reference);
    iput-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    goto :goto_1

    .line 323
    :cond_6
    #v8=(Integer);v9=(Conflicted);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 366
    .end local v0           #ch:C
    .restart local v1       #finalPos:I
    .restart local v2       #htmlTail:Ljava/lang/String;
    .restart local v5       #originalHtml:Ljava/lang/String;
    :cond_7
    #v0=(Conflicted);v1=(Integer);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Null);v8=(Boolean);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    iget-boolean v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v8, :cond_3

    .line 373
    const/16 v8, 0x3c

    #v8=(PosByte);
    invoke-static {v8}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v8

    #v8=(Reference);
    const-string v9, "&lt;"

    #v9=(Reference);
    invoke-virtual {v8, v2, v9}, Lcom/google/android/mail/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    goto :goto_2
.end method
