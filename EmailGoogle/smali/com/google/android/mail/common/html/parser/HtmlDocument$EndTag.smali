.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
.super Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndTag"
.end annotation


# instance fields
.field private final element:Lcom/google/android/mail/common/html/parser/HTML$Element;

.field private final originalHtml:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "originalHtml"

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 712
    #p0=(Reference);
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 713
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->element:Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 714
    iput-object p2, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->originalHtml:Ljava/lang/String;

    .line 715
    return-void

    .line 712
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 697
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 736
    invoke-interface {p1, p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 737
    return-void
.end method

.method public getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->element:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v0=(Reference);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->element:Lcom/google/android/mail/common/html/parser/HTML$Element;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "End Tag: "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->element:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
