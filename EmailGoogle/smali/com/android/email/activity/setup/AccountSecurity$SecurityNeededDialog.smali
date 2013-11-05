.class public Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
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
    name = "SecurityNeededDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .locals 3
    .parameter "accountName"

    .prologue
    .line 321
    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;-><init>()V

    .line 322
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "account_name"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->setArguments(Landroid/os/Bundle;)V

    .line 325
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 348
    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->dismiss()V

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 350
    .local v0, activity:Lcom/android/email/activity/setup/AccountSecurity;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 371
    :goto_0
    #v2=(Conflicted);v3=(Reference);
    return-void

    .line 355
    :cond_0
    #v2=(Uninit);v3=(Null);
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 363
    :pswitch_0
    sget-boolean v1, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 364
    :cond_1
    const-string v1, "Email/AccountSecurity"

    #v1=(Reference);
    const-string v2, "User declines; repost notification"

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 366
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$200(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 368
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 357
    :pswitch_1
    #v2=(Uninit);v3=(Null);
    sget-boolean v1, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 358
    :cond_2
    const-string v1, "Email/AccountSecurity"

    #v1=(Reference);
    const-string v2, "User accepts; advance to next step"

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 355
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 330
    #v6=(Null);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "account_name"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, accountName:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 333
    .local v2, context:Landroid/content/Context;
    #v2=(Reference);
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 334
    .local v3, res:Landroid/content/res/Resources;
    #v3=(Reference);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef);
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v1, b:Landroid/app/AlertDialog$Builder;
    #v1=(Reference);
    const v4, 0x7f0a01de

    #v4=(Integer);
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 336
    const v4, 0x1010355

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 337
    const v4, 0x7f0a01df

    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    const v4, 0x7f0a0153

    #v4=(Integer);
    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v4, 0x7f0a0154

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 341
    :cond_0
    const-string v4, "Email/AccountSecurity"

    #v4=(Reference);
    const-string v5, "Posting security needed dialog"

    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
