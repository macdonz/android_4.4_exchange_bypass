.class public Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ClearPictureApprovalsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static newInstance()Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;-><init>()V

    .line 44
    .local v0, fragment:Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;
    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 60
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne p2, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v0

    .line 62
    .local v0, mailPrefs:Lcom/android/mail/preferences/MailPrefs;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->clearSenderWhiteList()V

    .line 63
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0102

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    .end local v0           #mailPrefs:Lcom/android/mail/preferences/MailPrefs;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/settings/ClearPictureApprovalsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    const v1, 0x7f0a0100

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
