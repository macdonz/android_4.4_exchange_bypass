.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisitorWrapper"
.end annotation


# instance fields
.field private final wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->finish()V

    .line 1159
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->start()V

    .line 1139
    return-void
.end method

.method public visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V

    .line 1155
    return-void
.end method

.method public visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 1151
    return-void
.end method

.method public visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 1147
    return-void
.end method

.method public visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V

    .line 1143
    return-void
.end method
