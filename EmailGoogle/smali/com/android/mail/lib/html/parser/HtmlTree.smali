.class public Lcom/android/mail/lib/html/parser/HtmlTree;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HtmlTree$2;,
        Lcom/android/mail/lib/html/parser/HtmlTree$DefaultPlainTextConverter;,
        Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextPrinter;,
        Lcom/android/mail/lib/html/parser/HtmlTree$Block;,
        Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverter;,
        Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverterFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONVERTER_FACTORY:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverterFactory;

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

.field private converterFactory:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverterFactory;

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
            "Lcom/android/mail/lib/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private parent:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlTree$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/lib/html/parser/HtmlTree$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 117
    const-class v0, Lcom/android/mail/lib/html/parser/HtmlTree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/mail/lib/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->nodes:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    .line 101
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    .line 112
    sget-object v0, Lcom/android/mail/lib/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverterFactory;

    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->converterFactory:Lcom/android/mail/lib/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 123
    return-void
.end method

.method private addNode(Lcom/android/mail/lib/html/parser/HtmlDocument$Node;II)V
    .locals 2
    .parameter "n"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method


# virtual methods
.method addEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 927
    .local v0, nodenum:I
    #v0=(Integer);
    iget v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    #v1=(Integer);
    invoke-direct {p0, p1, v1, v0}, Lcom/android/mail/lib/html/parser/HtmlTree;->addNode(Lcom/android/mail/lib/html/parser/HtmlDocument$Node;II)V

    .line 929
    iget v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v1, v2, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    #v1=(Reference);
    iget v2, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    #v2=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    .line 935
    return-void
.end method

.method addSingularTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 940
    .local v0, nodenum:I
    #v0=(Integer);
    invoke-direct {p0, p1, v0, v0}, Lcom/android/mail/lib/html/parser/HtmlTree;->addNode(Lcom/android/mail/lib/html/parser/HtmlDocument$Node;II)V

    .line 941
    return-void
.end method

.method addStartTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 916
    .local v0, nodenum:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-direct {p0, p1, v0, v1}, Lcom/android/mail/lib/html/parser/HtmlTree;->addNode(Lcom/android/mail/lib/html/parser/HtmlDocument$Node;II)V

    .line 918
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    #v1=(Reference);
    iget v2, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 919
    iput v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    .line 920
    return-void
.end method

.method addText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->nodes:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 949
    .local v0, nodenum:I
    #v0=(Integer);
    invoke-direct {p0, p1, v0, v0}, Lcom/android/mail/lib/html/parser/HtmlTree;->addNode(Lcom/android/mail/lib/html/parser/HtmlDocument$Node;II)V

    .line 950
    return-void
.end method

.method finish()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 907
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/android/mail/lib/base/X;->assertTrue(Z)V

    .line 908
    iget v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    #v0=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v0, v3, :cond_1

    :goto_1
    #v1=(Boolean);
    invoke-static {v1}, Lcom/android/mail/lib/base/X;->assertTrue(Z)V

    .line 909
    return-void

    :cond_0
    #v1=(One);v3=(Uninit);
    move v0, v2

    .line 907
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);v3=(Byte);
    move v1, v2

    .line 908
    #v1=(Null);
    goto :goto_1
.end method

.method start()V
    .locals 1

    .prologue
    .line 901
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    .line 902
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/lib/html/parser/HtmlTree;->parent:I

    .line 903
    return-void
.end method
