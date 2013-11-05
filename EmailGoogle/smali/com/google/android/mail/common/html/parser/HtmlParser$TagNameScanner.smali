.class Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagNameScanner"
.end annotation


# instance fields
.field private endNamePos:I

.field private final html:Ljava/lang/String;

.field private startNamePos:I

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    const/4 v0, -0x1

    .line 392
    #v0=(Byte);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 389
    #p0=(Reference);
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    .line 390
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    .line 393
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->html:Ljava/lang/String;

    .line 394
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 423
    #v1=(Byte);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->tagName:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    #v0=(Integer);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->html:Ljava/lang/String;

    #v0=(Reference);
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    #v1=(Integer);
    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->tagName:Ljava/lang/String;

    .line 426
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->tagName:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public scanName(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 404
    move v1, p1

    .local v1, pos:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);
    if-ge v1, p2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 408
    .local v0, ch:C
    #v0=(Char);
    const/16 v2, 0x3e

    #v2=(PosByte);
    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 412
    .end local v0           #ch:C
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    if-le v1, p1, :cond_1

    .line 413
    iput p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    .line 414
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    .line 416
    :cond_1
    return v1

    .line 404
    .restart local v0       #ch:C
    :cond_2
    #v0=(Char);v2=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
