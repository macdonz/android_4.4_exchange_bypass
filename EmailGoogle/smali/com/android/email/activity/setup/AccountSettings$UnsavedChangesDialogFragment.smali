.class public Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsavedChangesDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstanceForBack()Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 819
    #v3=(One);
    new-instance v1, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;-><init>()V

    .line 820
    .local v1, f:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 821
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "UnsavedChangesDialogFragment.Back"

    #v2=(Reference);
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 822
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 823
    return-object v1
.end method

.method public static newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 807
    new-instance v1, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;-><init>()V

    .line 808
    .local v1, f:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 809
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "UnsavedChangesDialogFragment.Header"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 811
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/email/activity/setup/AccountSettings;

    .line 832
    .local v0, activity:Lcom/android/email/activity/setup/AccountSettings;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "UnsavedChangesDialogFragment.Header"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 833
    .local v2, position:I
    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UnsavedChangesDialogFragment.Back"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 835
    .local v1, isBack:Z
    #v1=(Boolean);
    new-instance v3, Landroid/app/AlertDialog$Builder;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    const v4, 0x1010355

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a01f1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0153

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0, v1, v0, v2}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;ZLcom/android/email/activity/setup/AccountSettings;I)V

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0154

    invoke-virtual {v0, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
