.class Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeScanner"
.end annotation


# instance fields
.field attrValueIsQuoted:Z

.field endNamePos:I

.field endValuePos:I

.field private final html:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field startNamePos:I

.field startValuePos:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    const/4 v0, -0x1

    .line 447
    #v0=(Byte);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 441
    #p0=(Reference);
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    .line 442
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    .line 443
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 444
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    .line 445
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    .line 448
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    .line 449
    return-void
.end method

.method private skipSpaces(II)I
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 566
    move v0, p1

    .local v0, pos:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, p2, :cond_0

    .line 567
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    #v1=(Char);
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 571
    :cond_0
    #v1=(Conflicted);
    return v0

    .line 566
    :cond_1
    #v1=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 575
    #v1=(Byte);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    #v0=(Integer);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    if-eq v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v0=(Reference);
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    #v1=(Integer);
    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    .line 578
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 582
    #v1=(Byte);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    #v0=(Integer);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    if-eq v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v0=(Reference);
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    #v1=(Integer);
    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    .line 585
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, -0x1

    .line 455
    #v0=(Byte);
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    .line 456
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    .line 457
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 458
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    .line 459
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    .line 460
    iput-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    .line 461
    iput-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    .line 462
    return-void
.end method

.method scanName(II)I
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0x3e

    .line 473
    #v3=(PosByte);
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    #v2=(Char);
    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 474
    if-ne p1, p2, :cond_1

    .line 490
    .end local p1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return p1

    .line 473
    .restart local p1
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Char);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0

    .line 480
    :cond_1
    #v2=(Boolean);
    add-int/lit8 v1, p1, 0x1

    .local v1, pos:I
    :goto_2
    #v0=(Conflicted);v1=(Integer);
    if-ge v1, p2, :cond_2

    .line 481
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 484
    .local v0, ch:C
    #v0=(Char);
    if-eq v0, v3, :cond_2

    const/16 v2, 0x3d

    #v2=(PosByte);
    if-eq v0, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 488
    .end local v0           #ch:C
    :cond_2
    #v0=(Conflicted);v2=(Conflicted);
    iput p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    .line 489
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    move p1, v1

    .line 490
    goto :goto_1

    .line 480
    .restart local v0       #ch:C
    :cond_3
    #v0=(Char);v2=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method scanValue(II)I
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, -0x1

    #v7=(Byte);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    .line 502
    #v4=(One);
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->skipSpaces(II)I

    move-result v1

    .line 505
    .local v1, pos:I
    #v1=(Integer);
    if-eq v1, p2, :cond_0

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #v3=(Char);
    const/16 v6, 0x3d

    #v6=(PosByte);
    if-eq v3, v6, :cond_1

    .line 554
    .end local p1
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v6=(Conflicted);
    return p1

    .line 512
    .restart local p1
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Char);v4=(One);v6=(PosByte);
    add-int/lit8 v1, v1, 0x1

    .line 513
    invoke-direct {p0, v1, p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->skipSpaces(II)I

    move-result v1

    .line 516
    if-ne v1, p2, :cond_2

    move p1, v1

    .line 517
    goto :goto_0

    .line 521
    :cond_2
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 522
    .local v0, ch:C
    #v0=(Char);
    const/16 v3, 0x27

    #v3=(PosByte);
    if-eq v0, v3, :cond_3

    const/16 v3, 0x22

    if-ne v0, v3, :cond_6

    .line 523
    :cond_3
    iput-boolean v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    .line 524
    add-int/lit8 v1, v1, 0x1

    .line 525
    move v2, v1

    .line 526
    .local v2, valueStart:I
    :goto_1
    #v2=(Integer);v3=(Char);
    if-ge v1, p2, :cond_4

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #v3=(Char);
    if-eq v3, v0, :cond_4

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_4
    iput v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 530
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    .line 531
    if-ge v1, p2, :cond_5

    .line 532
    add-int/lit8 v1, v1, 0x1

    .line 549
    :cond_5
    :goto_2
    iget v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    #v3=(Integer);
    if-le v3, v7, :cond_9

    move v3, v4

    :goto_3
    #v3=(Boolean);
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 550
    iget v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    #v3=(Integer);
    if-le v3, v7, :cond_a

    move v3, v4

    :goto_4
    #v3=(Boolean);
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 551
    iget v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    #v3=(Integer);
    iget v6, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    #v6=(Integer);
    if-gt v3, v6, :cond_b

    move v3, v4

    :goto_5
    #v3=(Boolean);
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 552
    if-gt v1, p2, :cond_c

    :goto_6
    #v4=(Boolean);
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    move p1, v1

    .line 554
    goto :goto_0

    .line 535
    .end local v2           #valueStart:I
    :cond_6
    #v2=(Uninit);v3=(PosByte);v4=(One);v6=(PosByte);
    move v2, v1

    .line 536
    .restart local v2       #valueStart:I
    :goto_7
    #v2=(Integer);
    if-ge v1, p2, :cond_7

    .line 537
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 541
    const/16 v3, 0x3e

    #v3=(PosByte);
    if-eq v0, v3, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_8

    .line 545
    :cond_7
    #v3=(PosByte);
    iput v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 546
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    goto :goto_2

    .line 536
    :cond_8
    #v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    #v3=(Integer);
    move v3, v5

    .line 549
    #v3=(Null);
    goto :goto_3

    :cond_a
    #v3=(Integer);
    move v3, v5

    .line 550
    #v3=(Null);
    goto :goto_4

    :cond_b
    #v3=(Integer);v6=(Integer);
    move v3, v5

    .line 551
    #v3=(Null);
    goto :goto_5

    :cond_c
    #v3=(Boolean);
    move v4, v5

    .line 552
    #v4=(Null);
    goto :goto_6
.end method
