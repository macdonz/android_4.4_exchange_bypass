.class public Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
.super Landroid/app/DialogFragment;
.source "AccountSecurity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordExpirationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .locals 3
    .parameter "accountName"
    .parameter "expired"

    .prologue
    .line 387
    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;-><init>()V

    .line 388
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "account_name"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v2, "expired"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 392
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->dismiss()V

    .line 426
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 427
    .local v0, activity:Lcom/android/email/activity/setup/AccountSecurity;
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne p2, v2, :cond_0

    .line 428
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    .line 431
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 432
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    #v7=(Reference);
    const-string v8, "account_name"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, accountName:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "expired"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 405
    .local v4, expired:Z
    #v4=(Boolean);
    if-eqz v4, :cond_0

    const v6, 0x7f0a01ef

    .line 408
    .local v6, titleId:I
    :goto_0
    #v6=(Integer);
    if-eqz v4, :cond_1

    const v2, 0x7f0a01f0

    .line 412
    .local v2, contentId:I
    :goto_1
    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 413
    .local v3, context:Landroid/content/Context;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 414
    .local v5, res:Landroid/content/res/Resources;
    #v5=(Reference);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef);
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v1, b:Landroid/app/AlertDialog$Builder;
    #v1=(Reference);
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 416
    const v7, 0x1010355

    #v7=(Integer);
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 417
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v0, v7, v8

    invoke-virtual {v5, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 418
    const v7, 0x7f0a0153

    #v7=(Integer);
    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v7, 0x7f0a0154

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    #v7=(Reference);
    return-object v7

    .line 405
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #contentId:I
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #titleId:I
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Reference);
    const v6, 0x7f0a01ed

    #v6=(Integer);
    goto :goto_0

    .line 408
    .restart local v6       #titleId:I
    :cond_1
    const v2, 0x7f0a01ee

    #v2=(Integer);
    goto :goto_1
.end method
