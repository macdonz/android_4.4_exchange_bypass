.class public Lcom/android/mail/compose/RecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    #p0=(Reference);
    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/RecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 27
    return-void
.end method
