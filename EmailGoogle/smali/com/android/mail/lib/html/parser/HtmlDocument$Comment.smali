.class public Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;
.super Lcom/android/mail/lib/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comment"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;


# virtual methods
.method public accept(Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 287
    invoke-interface {p1, p0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;)V

    .line 288
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
