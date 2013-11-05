.class public Lcom/android/mail/browse/EmailAddressSpan;
.super Landroid/text/style/URLSpan;
.source "EmailAddressSpan.java"


# instance fields
.field private final mAccount:Lcom/android/mail/providers/Account;

.field private final mEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "emailAddress"

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mailto:"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 34
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/EmailAddressSpan;->mAccount:Lcom/android/mail/providers/Account;

    .line 35
    iput-object p2, p0, Lcom/android/mail/browse/EmailAddressSpan;->mEmailAddress:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/EmailAddressSpan;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/EmailAddressSpan;->mEmailAddress:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/ComposeActivity;->composeToAddress(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 48
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 49
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 50
    return-void
.end method
