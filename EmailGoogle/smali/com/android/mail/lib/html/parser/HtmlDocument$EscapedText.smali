.class Lcom/android/mail/lib/html/parser/HtmlDocument$EscapedText;
.super Lcom/android/mail/lib/html/parser/HtmlDocument$Text;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EscapedText"
.end annotation


# instance fields
.field private final htmlText:Ljava/lang/String;

.field private text:Ljava/lang/String;


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EscapedText;->text:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EscapedText;->htmlText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/lib/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EscapedText;->text:Ljava/lang/String;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$EscapedText;->text:Ljava/lang/String;

    return-object v0
.end method
