.class public Lcom/android/mail/providers/EmailAccountCacheProvider;
.super Lcom/android/mail/providers/MailAppProvider;
.source "EmailAccountCacheProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mail/providers/MailAppProvider;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.android.email2.accountcache"

    #v0=(Reference);
    return-object v0
.end method

.method protected getNoAccountsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v1, "android.intent.action.EDIT"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "content://ui.email.android.com/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    const-string v1, "AccountSettings.no_account"

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    return-object v0
.end method
