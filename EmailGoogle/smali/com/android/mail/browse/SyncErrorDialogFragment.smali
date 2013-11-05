.class public Lcom/android/mail/browse/SyncErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "SyncErrorDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance()Lcom/android/mail/browse/SyncErrorDialogFragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/android/mail/browse/SyncErrorDialogFragment;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/browse/SyncErrorDialogFragment;-><init>()V

    .line 40
    .local v0, frag:Lcom/android/mail/browse/SyncErrorDialogFragment;
    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/SyncErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    const v1, 0x7f0a00ec

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c7

    new-instance v2, Lcom/android/mail/browse/SyncErrorDialogFragment$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/browse/SyncErrorDialogFragment$2;-><init>(Lcom/android/mail/browse/SyncErrorDialogFragment;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00ee

    new-instance v2, Lcom/android/mail/browse/SyncErrorDialogFragment$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/browse/SyncErrorDialogFragment$1;-><init>(Lcom/android/mail/browse/SyncErrorDialogFragment;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
