.class public Lcom/google/android/mail/common/html/parser/HtmlTree;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlTree$2;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$Block;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private static final HTML_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final begins:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private final ends:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private parent:I

.field private plainText:Ljava/lang/String;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textPositions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, " \t\u000c\u200b\r\n"

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->HTML_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 92
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 121
    const-class v0, Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    .line 105
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    .line 116
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 127
    return-void
.end method

.method private addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V
    .locals 2
    .parameter "n"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method private convertToPlainText()V
    .locals 5

    .prologue
    .line 557
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    #v3=(Reference);
    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    #v3=(Boolean);
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 559
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 563
    .local v2, numNodes:I
    #v2=(Integer);
    add-int/lit8 v3, v2, 0x1

    #v3=(Integer);
    new-array v3, v3, [I

    #v3=(Reference);
    iput-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    .line 565
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-interface {v3}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;->createInstance()Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;

    move-result-object v0

    .line 567
    .local v0, converter:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    #v0=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v4=(Conflicted);
    if-ge v1, v2, :cond_1

    .line 568
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->getPlainTextLength()I

    move-result v4

    #v4=(Integer);
    aput v4, v3, v1

    .line 569
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    invoke-interface {v0, v3, v1, v4}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v0           #converter:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    .end local v1           #i:I
    .end local v2           #numNodes:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0

    .line 573
    .restart local v0       #converter:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    .restart local v1       #i:I
    .restart local v2       #numNodes:I
    :cond_1
    #v0=(Reference);v1=(Integer);v2=(Integer);v3=(Reference);v4=(Conflicted);
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->getPlainTextLength()I

    move-result v4

    #v4=(Integer);
    aput v4, v3, v2

    .line 575
    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    .line 586
    return-void
.end method


# virtual methods
.method addEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 971
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 972
    .local v0, nodenum:I
    #v0=(Integer);
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    #v1=(Integer);
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 974
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v1, v2, :cond_0

    .line 975
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    #v1=(Reference);
    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    #v2=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    .line 979
    return-void
.end method

.method addSingularTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 983
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 984
    .local v0, nodenum:I
    #v0=(Integer);
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 985
    return-void
.end method

.method addStartTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 960
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 961
    .local v0, nodenum:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 963
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    #v1=(Reference);
    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 964
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    .line 965
    return-void
.end method

.method addText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 992
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 993
    .local v0, nodenum:I
    #v0=(Integer);
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 994
    return-void
.end method

.method finish()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 951
    #v2=(Null);
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 952
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    #v0=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v0, v3, :cond_1

    :goto_1
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 953
    return-void

    :cond_0
    #v1=(One);v3=(Uninit);
    move v0, v2

    .line 951
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);v3=(Byte);
    move v1, v2

    .line 952
    #v1=(Null);
    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->convertToPlainText()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    return-object v0
.end method

.method public setPlainTextConverterFactory(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    #v0=(UninitRef);
    const-string v1, "factory must not be null"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 137
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 138
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 945
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    .line 946
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    .line 947
    return-void
.end method
