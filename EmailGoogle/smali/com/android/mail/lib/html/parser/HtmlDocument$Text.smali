.class public abstract Lcom/android/mail/lib/html/parser/HtmlDocument$Text;
.super Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Text"
.end annotation


# instance fields
.field private final originalHtml:Ljava/lang/String;


# virtual methods
.method public accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 392
    invoke-interface {p1, p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V

    .line 393
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 367
    #v2=(Null);
    if-ne p1, p0, :cond_1

    .line 376
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Reference);v3=(Conflicted);
    return v1

    .line 370
    :cond_1
    #v0=(Uninit);v1=(One);v2=(Null);v3=(Uninit);
    instance-of v3, p1, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;

    #v3=(Boolean);
    if-eqz v3, :cond_3

    move-object v0, p1

    .line 371
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;

    .line 373
    .local v0, that:Lcom/android/mail/lib/html/parser/HtmlDocument$Text;
    iget-object v3, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    #v3=(Reference);
    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    #v1=(Null);
    goto :goto_0

    :cond_2
    #v1=(One);
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, v0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .end local v0           #that:Lcom/android/mail/lib/html/parser/HtmlDocument$Text;
    :cond_3
    #v0=(Uninit);v1=(One);v2=(Null);v3=(Boolean);
    move v1, v2

    .line 376
    #v1=(Null);
    goto :goto_0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public isWhitespace()Z
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, text:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 357
    .local v1, len:I
    #v1=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v3=(Conflicted);
    if-ge v0, v1, :cond_1

    .line 358
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #v3=(Char);
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 359
    const/4 v3, 0x0

    .line 362
    :goto_1
    return v3

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_1
    #v3=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
