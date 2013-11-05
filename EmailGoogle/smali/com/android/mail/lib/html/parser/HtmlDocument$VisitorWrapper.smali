.class public Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisitorWrapper"
.end annotation


# instance fields
.field private final wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->finish()V

    .line 1158
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->start()V

    .line 1138
    return-void
.end method

.method public visitComment(Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/android/mail/lib/html/parser/HtmlDocument$Comment;)V

    .line 1154
    return-void
.end method

.method public visitEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitEndTag(Lcom/android/mail/lib/html/parser/HtmlDocument$EndTag;)V

    .line 1150
    return-void
.end method

.method public visitTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/android/mail/lib/html/parser/HtmlDocument$Tag;)V

    .line 1146
    return-void
.end method

.method public visitText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/lib/html/parser/HtmlDocument$Visitor;->visitText(Lcom/android/mail/lib/html/parser/HtmlDocument$Text;)V

    .line 1142
    return-void
.end method
