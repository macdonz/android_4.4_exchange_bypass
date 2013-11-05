.class public Lcom/android/mail/browse/ConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfirmDialogFragment.java"


# instance fields
.field private final POSITIVE_ACTION:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/ConfirmDialogFragment$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/ConfirmDialogFragment$1;-><init>(Lcom/android/mail/browse/ConfirmDialogFragment;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConfirmDialogFragment;->POSITIVE_ACTION:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    return-void
.end method

.method public static newInstance(Ljava/lang/CharSequence;)Lcom/android/mail/browse/ConfirmDialogFragment;
    .locals 3
    .parameter "message"

    .prologue
    .line 75
    new-instance v1, Lcom/android/mail/browse/ConfirmDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/browse/ConfirmDialogFragment;-><init>()V

    .line 76
    .local v1, f:Lcom/android/mail/browse/ConfirmDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "message"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public final displayDialog(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 97
    const-string v0, "confirm-dialog"

    #v0=(Reference);
    invoke-virtual {p0, p1, v0}, Lcom/android/mail/browse/ConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedState"

    .prologue
    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    .local v1, message:Ljava/lang/CharSequence;
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00c7

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConfirmDialogFragment;->POSITIVE_ACTION:Landroid/content/DialogInterface$OnClickListener;

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00c8

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
