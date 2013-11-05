.class Lcom/android/mail/lib/html/parser/HtmlDocument$UnescapedText;
.super Lcom/android/mail/lib/html/parser/HtmlDocument$Text;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnescapedText"
.end annotation


# instance fields
.field protected final text:Ljava/lang/String;


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$UnescapedText;->text:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
