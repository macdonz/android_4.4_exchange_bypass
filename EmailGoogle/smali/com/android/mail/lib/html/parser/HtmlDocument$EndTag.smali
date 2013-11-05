.class public Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;
.super Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndTag"
.end annotation


# instance fields
.field private final element:Lcom/android/mail/lib/html/parser/HTML$Element;

.field private final originalHtml:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "originalHtml"

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Node;-><init>()V

    .line 711
    #p0=(Reference);
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/android/mail/lib/base/X;->assertTrue(Z)V

    .line 712
    iput-object p1, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    .line 713
    iput-object p2, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;->originalHtml:Ljava/lang/String;

    .line 714
    return-void

    .line 711
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/lang/String;Lcom/android/mail/lib/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 696
    invoke-direct {p0, p1, p2}, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;-><init>(Lcom/android/mail/lib/html/parser/HTML$Element;Ljava/lang/String;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 735
    invoke-interface {p1, p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 736
    return-void
.end method

.method public getElement()Lcom/android/mail/lib/html/parser/HTML$Element;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v0=(Reference);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/lib/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "End Tag: "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;->element:Lcom/android/mail/lib/html/parser/HTML$Element;

    invoke-virtual {v1}, Lcom/android/mail/lib/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
