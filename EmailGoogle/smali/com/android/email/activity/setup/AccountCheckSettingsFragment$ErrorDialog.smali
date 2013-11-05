.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 776
    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Lcom/android/emailcommon/mail/MessagingException;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .locals 4
    .parameter "context"
    .parameter "target"
    .parameter "ex"

    .prologue
    .line 780
    new-instance v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>()V

    .line 781
    .local v1, fragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 782
    .local v0, arguments:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "ErrorDialog.Message"

    #v2=(Reference);
    invoke-static {p0, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$300(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v2, "ErrorDialog.ExceptionId"

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 785
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, p1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 786
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 792
    .local v2, context:Landroid/content/Context;
    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 793
    .local v0, arguments:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v6, "ErrorDialog.Message"

    #v6=(Reference);
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, message:Ljava/lang/String;
    #v4=(Reference);
    const-string v6, "ErrorDialog.ExceptionId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 795
    .local v3, exceptionId:I
    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 798
    .local v5, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    #v6=(UninitRef);
    invoke-direct {v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v6=(Reference);
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 803
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference);
    const/16 v6, 0xb

    #v6=(PosByte);
    if-eq v3, v6, :cond_0

    .line 804
    const v6, 0x1010355

    #v6=(Integer);
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    #v6=(Reference);
    const v7, 0x7f0a01c0

    #v7=(Integer);
    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 808
    :cond_0
    #v6=(Conflicted);v7=(Conflicted);
    const/16 v6, 0x10

    #v6=(PosByte);
    if-ne v3, v6, :cond_1

    .line 811
    const v6, 0x104000a

    #v6=(Integer);
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;

    #v7=(UninitRef);
    invoke-direct {v7, p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    #v7=(Reference);
    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 820
    const/high16 v6, 0x104

    #v6=(Integer);
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$2;

    #v7=(UninitRef);
    invoke-direct {v7, p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$2;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    #v7=(Reference);
    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 843
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 832
    :cond_1
    #v6=(PosByte);v7=(Conflicted);
    const v6, 0x7f0a01e8

    #v6=(Integer);
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;

    #v7=(UninitRef);
    invoke-direct {v7, p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    #v7=(Reference);
    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
