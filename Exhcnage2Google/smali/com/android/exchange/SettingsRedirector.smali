.class public Lcom/android/exchange/SettingsRedirector;
.super Landroid/app/Activity;
.source "SettingsRedirector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.EDIT"

    #v1=(Reference);
    const-string v2, "settings"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    .local v0, redirect:Landroid/content/Intent;
    #v0=(Reference);
    const/high16 v1, 0x200

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/exchange/SettingsRedirector;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/exchange/SettingsRedirector;->finish()V

    .line 45
    return-void
.end method
