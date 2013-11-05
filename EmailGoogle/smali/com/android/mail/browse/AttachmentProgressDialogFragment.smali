.class public Lcom/android/mail/browse/AttachmentProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "AttachmentProgressDialogFragment.java"


# instance fields
.field private mAttachment:Lcom/android/mail/providers/Attachment;

.field private mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

.field private mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static newInstance(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/browse/AttachmentProgressDialogFragment;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 40
    new-instance v1, Lcom/android/mail/browse/AttachmentProgressDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;-><init>()V

    .line 43
    .local v1, f:Lcom/android/mail/browse/AttachmentProgressDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 44
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "attachment"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method public cancelAttachment()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 96
    .local v0, params:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "state"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v1, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

    iget-object v2, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget-object v2, v2, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 99
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isIndeterminate()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isShowingDialogForAttachment(Lcom/android/mail/providers/Attachment;)Z
    .locals 2
    .parameter "attachment"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lcom/android/mail/browse/AttachmentCommandHandler;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/mail/browse/AttachmentCommandHandler;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

    .line 64
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 87
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 90
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->cancelAttachment()V

    .line 91
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "attachment"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Attachment;

    iput-object v1, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 68
    #v2=(One);
    new-instance v0, Landroid/app/ProgressDialog;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a007c

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 70
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 72
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v1, v1, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 74
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 81
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 83
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 105
    :cond_0
    return-void
.end method
