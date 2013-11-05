.class public interface abstract Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract start()V
.end method

.method public abstract visitComment(Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;)V
.end method

.method public abstract visitEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V
.end method

.method public abstract visitTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V
.end method

.method public abstract visitText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V
.end method
