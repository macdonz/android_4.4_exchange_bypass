.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckingDialog"
.end annotation


# instance fields
.field private final EXTRA_PROGRESS_STRING:Ljava/lang/String;

.field private mProgressString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 663
    #p0=(Reference);
    const-string v0, "CheckProgressDialog.Progress"

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->EXTRA_PROGRESS_STRING:Ljava/lang/String;

    .line 669
    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .locals 2
    .parameter "progress"

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, stringId:I
    #v0=(Null);
    packed-switch p1, :pswitch_data_0

    .line 755
    :goto_0
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 746
    :pswitch_0
    #v0=(Null);v1=(Uninit);
    const v0, 0x7f0a0186

    .line 747
    #v0=(Integer);
    goto :goto_0

    .line 749
    :pswitch_1
    #v0=(Null);
    const v0, 0x7f0a0187

    .line 750
    #v0=(Integer);
    goto :goto_0

    .line 752
    :pswitch_2
    #v0=(Null);
    const v0, 0x7f0a0188

    #v0=(Integer);
    goto :goto_0

    .line 744
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    .locals 1
    .parameter "parentFragment"
    .parameter "progress"

    .prologue
    .line 677
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;-><init>()V

    .line 678
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    #v0=(Reference);
    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 679
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 729
    .local v0, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 730
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 731
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 697
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    if-eqz p1, :cond_0

    .line 698
    const-string v3, "CheckProgressDialog.Progress"

    #v3=(Reference);
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 700
    :cond_0
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    #v3=(Reference);
    if-nez v3, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetRequestCode()I

    move-result v3

    #v3=(Integer);
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 703
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 706
    .local v2, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v1, Landroid/app/ProgressDialog;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 707
    .local v1, dialog:Landroid/app/ProgressDialog;
    #v1=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 708
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 709
    const/4 v3, -0x2

    #v3=(Byte);
    const v4, 0x7f0a0154

    #v4=(Integer);
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    #v5=(Reference);
    invoke-virtual {v1, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 718
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 736
    const-string v0, "CheckProgressDialog.Progress"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public updateProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 688
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/AlertDialog;

    .line 689
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 692
    :cond_0
    return-void
.end method
