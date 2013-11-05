.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityRequiredDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    .locals 3
    .parameter "target"
    .parameter "hostName"

    .prologue
    .line 870
    new-instance v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;-><init>()V

    .line 871
    .local v1, fragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 872
    .local v0, arguments:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "SecurityRequiredDialog.HostName"

    #v2=(Reference);
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->setArguments(Landroid/os/Bundle;)V

    .line 874
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 875
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 880
    #v8=(One);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 881
    .local v1, context:Landroid/content/Context;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 882
    .local v0, arguments:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v4, "SecurityRequiredDialog.HostName"

    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, hostName:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 886
    .local v3, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    #v4=(UninitRef);
    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v4=(Reference);
    const v5, 0x1010355

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d9

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01da

    #v5=(Integer);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v2, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0153

    #v5=(Integer);
    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    new-instance v6, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;

    #v6=(UninitRef);
    invoke-direct {v6, p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    #v6=(Reference);
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0154

    #v5=(Integer);
    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    new-instance v6, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;

    #v6=(UninitRef);
    invoke-direct {v6, p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    #v6=(Reference);
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
