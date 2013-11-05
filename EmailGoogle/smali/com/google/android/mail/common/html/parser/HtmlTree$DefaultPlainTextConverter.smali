.class public Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.super Ljava/lang/Object;
.source "HtmlTree.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPlainTextConverter"
.end annotation


# static fields
.field private static final BLANK_LINE_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preDepth:I

.field private final printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

.field private styleDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 841
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->P_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v0=(Reference);
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v1=(Reference);
    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 839
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 847
    #p0=(Reference);
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    .line 849
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    .line 850
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V
    .locals 7
    .parameter "n"
    .parameter "nodeNum"
    .parameter "endNum"

    .prologue
    .line 854
    instance-of v5, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    #v5=(Boolean);
    if-eqz v5, :cond_2

    move-object v4, p1

    .line 856
    #v4=(Reference);
    check-cast v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 857
    .local v4, textNode:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, str:Ljava/lang/String;
    #v2=(Reference);
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    #v5=(Integer);
    if-lez v5, :cond_1

    .line 860
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    invoke-virtual {v5, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendPreText(Ljava/lang/String;)V

    .line 923
    .end local v2           #str:Ljava/lang/String;
    .end local v4           #textNode:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 862
    .restart local v2       #str:Ljava/lang/String;
    .restart local v4       #textNode:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Reference);v5=(Integer);v6=(Uninit);
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    if-gtz v5, :cond_0

    .line 865
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    invoke-virtual {v5, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    goto :goto_0

    .line 868
    .end local v2           #str:Ljava/lang/String;
    .end local v4           #textNode:Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_2
    #v2=(Uninit);v4=(Uninit);v5=(Boolean);
    instance-of v5, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v5, :cond_8

    move-object v3, p1

    .line 871
    #v3=(Reference);
    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 872
    .local v3, tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 874
    .local v0, element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v0=(Reference);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    #v5=(Reference);
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    .line 875
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    sget-object v6, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 891
    :cond_3
    :goto_1
    #v5=(Conflicted);v6=(Conflicted);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_6

    .line 892
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->incQuoteDepth()V

    goto :goto_0

    .line 877
    :cond_4
    #v5=(Boolean);v6=(Uninit);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->BR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    .line 879
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendForcedLineBreak()V

    goto :goto_1

    .line 881
    :cond_5
    #v5=(Boolean);
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 883
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    sget-object v6, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 885
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->HR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 886
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    const-string v6, "________________________________"

    invoke-virtual {v5, v6}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    .line 887
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v6, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v5, v6}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_1

    .line 894
    :cond_6
    #v5=(Boolean);v6=(Conflicted);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    .line 895
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    #v5=(Integer);
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    goto :goto_0

    .line 896
    :cond_7
    #v5=(Boolean);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 897
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    #v5=(Integer);
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    goto/16 :goto_0

    .line 900
    .end local v0           #element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v3           #tag:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_8
    #v0=(Uninit);v3=(Uninit);v5=(Boolean);v6=(Uninit);
    instance-of v5, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 903
    #v1=(Reference);
    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .line 904
    .local v1, endTag:Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 906
    .restart local v0       #element:Lcom/google/android/mail/common/html/parser/HTML$Element;
    #v0=(Reference);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    #v5=(Reference);
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_a

    .line 907
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    sget-object v6, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 914
    :cond_9
    :goto_2
    #v5=(Conflicted);v6=(Conflicted);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_b

    .line 915
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->decQuoteDepth()V

    goto/16 :goto_0

    .line 909
    :cond_a
    #v5=(Boolean);v6=(Uninit);
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 911
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v5=(Reference);
    sget-object v6, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_2

    .line 917
    :cond_b
    #v5=(Boolean);v6=(Conflicted);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_c

    .line 918
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    #v5=(Integer);
    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    goto/16 :goto_0

    .line 919
    :cond_c
    #v5=(Boolean);
    sget-object v5, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 920
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    #v5=(Integer);
    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    goto/16 :goto_0
.end method

.method public final getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlainTextLength()I
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->getTextLength()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
