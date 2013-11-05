.class public Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "DuplicateAccountDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    .locals 3
    .parameter "note"

    .prologue
    .line 44
    new-instance v1, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;-><init>()V

    .line 45
    .local v1, f:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "NoteDialogFragment.AccountName"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 54
    .local v1, context:Landroid/content/Context;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "NoteDialogFragment.AccountName"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, accountName:Ljava/lang/String;
    #v0=(Reference);
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef);
    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v2=(Reference);
    const v3, 0x1010355

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0183

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0184

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0153

    #v3=(Integer);
    new-instance v4, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment$1;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment$1;-><init>(Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;)V

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
