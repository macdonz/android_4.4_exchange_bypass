.class public Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;
.super Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HtmlDocument$Tag$SerializeType;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final element:Lcom/android/mail/lib/html/parser/HTML$Element;

.field private final isSelfTerminating:Z

.field private final originalHtmlAfterAttributes:Ljava/lang/String;

.field private final originalHtmlBeforeAttributes:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter
    .parameter "isSelfTerminating"
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/lib/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 536
    .local p2, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-direct {p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Node;-><init>()V

    .line 537
    #p0=(Reference);
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/android/mail/lib/base/X;->assertTrue(Z)V

    .line 538
    iput-object p1, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    .line 539
    iput-object p2, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    .line 540
    iput-boolean p3, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    .line 541
    iput-object p4, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    .line 542
    iput-object p5, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    .line 543
    return-void

    .line 537
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/android/mail/lib/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 502
    invoke-direct/range {p0 .. p5}, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;-><init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 621
    invoke-interface {p1, p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V

    .line 622
    return-void
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    #v0=(Reference);
    return-object v0
.end method

.method public getElement()Lcom/android/mail/lib/html/parser/HTML$Element;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v0=(Reference);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalHtmlAfterAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->originalHtmlAfterAttributes:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getOriginalHtmlBeforeAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->originalHtmlBeforeAttributes:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public isSelfTerminating()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->isSelfTerminating:Z

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v2, sb:Ljava/lang/StringBuilder;
    #v2=(Reference);
    const-string v3, "Start Tag: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v3, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    invoke-virtual {v3}, Lcom/android/mail/lib/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v3, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 610
    iget-object v3, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;->attributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;

    .line 611
    .local v0, attr:Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;
    const/16 v3, 0x20

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 615
    .end local v0           #attr:Lcom/android/mail/lib/html/parser/HtmlDocument$TagAttribute;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    return-object v3
.end method
