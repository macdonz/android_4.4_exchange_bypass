.class public Lcom/android/email/service/EasTestAuthenticatorService;
.super Landroid/app/Service;
.source "EasTestAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 117
    const-string v0, "android.accounts.AccountAuthenticator"

    #v0=(Reference);
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p0}, Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;-><init>(Lcom/android/email/service/EasTestAuthenticatorService;Landroid/content/Context;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
