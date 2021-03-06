.class public Lcom/google/android/mail/common/html/parser/HtmlDocument;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlDocument$1;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$DebugPrinter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterChain;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$EscapedText;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static createCDATA(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
    .locals 2
    .parameter "text"

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;-><init>(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    .locals 1
    .parameter "element"

    .prologue
    .line 139
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    .locals 2
    .parameter "element"
    .parameter "originalHtml"

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createEscapedText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .locals 2
    .parameter "htmlText"
    .parameter "original"

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EscapedText;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EscapedText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createHtmlComment(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;
    .locals 1
    .parameter "content"

    .prologue
    .line 193
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v0, 0x0

    .line 121
    #v0=(Null);
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .parameter "element"
    .parameter
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    #v0=(UninitRef);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v6, 0x0

    #v6=(Null);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v4, p2

    #v4=(Reference);
    move-object v5, p3

    #v5=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v0, 0x0

    .line 101
    #v0=(Null);
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .parameter "element"
    .parameter
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    #v0=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v4, p2

    #v4=(Reference);
    move-object v5, p3

    #v5=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .locals 1
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 153
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .locals 2
    .parameter "attr"
    .parameter "value"
    .parameter "originalHtml"

    .prologue
    .line 161
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 162
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0

    .line 161
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .locals 2
    .parameter "text"
    .parameter "original"

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 206
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->start()V

    .line 207
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 208
    .local v1, node:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V

    goto :goto_0

    .line 210
    .end local v1           #node:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    #v1=(Conflicted);
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->finish()V

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/io/StringWriter;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 92
    .local v0, strWriter:Ljava/io/StringWriter;
    #v0=(Reference);
    new-instance v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$DebugPrinter;

    #v1=(UninitRef);
    new-instance v2, Ljava/io/PrintWriter;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #v2=(Reference);
    invoke-direct {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$DebugPrinter;-><init>(Ljava/io/PrintWriter;)V

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
