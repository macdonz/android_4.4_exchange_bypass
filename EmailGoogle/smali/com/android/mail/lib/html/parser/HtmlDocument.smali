.class public Lcom/android/mail/lib/html/parser/HtmlDocument;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HtmlDocument$1;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$DebugPrinter;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Builder;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$MultiplexFilterChain;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$SimpleMultiplexFilter;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$MultiplexFilterAdapter;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$MultiplexFilter;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Filter;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$CDATA;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$EscapedText;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$UnescapedText;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Text;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;,
        Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/lib/html/parser/HtmlDocument$Node;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/lib/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    .line 49
    return-void
.end method

.method public static createEndTag(Lcom/android/mail/lib/html/parser/HTML$Element;)Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;
    .locals 1
    .parameter "element"

    .prologue
    .line 138
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lcom/android/mail/lib/html/parser/HtmlDocument;->createEndTag(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static createEndTag(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;
    .locals 2
    .parameter "element"
    .parameter "originalHtml"

    .prologue
    .line 145
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;-><init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/lang/String;Lcom/android/mail/lib/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static createTag(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;)Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/lib/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;",
            ">;)",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v0, 0x0

    .line 100
    #v0=(Null);
    invoke-static {p0, p1, v0, v0}, Lcom/android/mail/lib/html/parser/HtmlDocument;->createTag(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static createTag(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;
    .locals 7
    .parameter "element"
    .parameter
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/lib/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;>;"
    new-instance v0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;

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
    invoke-direct/range {v0 .. v6}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;-><init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/android/mail/lib/html/parser/HtmlDocument$1;)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 205
    invoke-interface {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->start()V

    .line 206
    iget-object v2, p0, Lcom/android/mail/lib/html/parser/HtmlDocument;->nodes:Ljava/util/List;

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
    check-cast v1, Lcom/android/mail/lib/html/parser/HtmlDocument$Node;

    .line 207
    .local v1, node:Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Node;->accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V

    goto :goto_0

    .line 209
    .end local v1           #node:Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
    :cond_0
    #v1=(Conflicted);
    invoke-interface {p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->finish()V

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/io/StringWriter;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 91
    .local v0, strWriter:Ljava/io/StringWriter;
    #v0=(Reference);
    new-instance v1, Lcom/android/mail/lib/html/parser/HtmlDocument$DebugPrinter;

    #v1=(UninitRef);
    new-instance v2, Ljava/io/PrintWriter;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #v2=(Reference);
    invoke-direct {v1, v2}, Lcom/android/mail/lib/html/parser/HtmlDocument$DebugPrinter;-><init>(Ljava/io/PrintWriter;)V

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/lib/html/parser/HtmlDocument;->accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
