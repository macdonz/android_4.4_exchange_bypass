.class public Lcom/android/mail/ui/EmptyFolderDialogFragment;
.super Landroid/app/DialogFragment;
.source "EmptyFolderDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mFolderType:I

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumConversations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 51
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/EmptyFolderDialogFragment;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    #v0=(Reference);
    return-object v0
.end method

.method public static newInstance(II)Lcom/android/mail/ui/EmptyFolderDialogFragment;
    .locals 3
    .parameter "numConversations"
    .parameter "folderType"

    .prologue
    .line 69
    new-instance v1, Lcom/android/mail/ui/EmptyFolderDialogFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/ui/EmptyFolderDialogFragment;-><init>()V

    .line 72
    .local v1, fragment:Lcom/android/mail/ui/EmptyFolderDialogFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 73
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "numConversations"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "folderType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/EmptyFolderDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/mail/ui/EmptyFolderDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "numConversations"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mNumConversations:I

    .line 83
    invoke-virtual {p0}, Lcom/android/mail/ui/EmptyFolderDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "folderType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mFolderType:I

    .line 85
    invoke-virtual {p0}, Lcom/android/mail/ui/EmptyFolderDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference);
    const v3, 0x7f100011

    #v3=(Integer);
    iget v4, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mNumConversations:I

    #v4=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    iget v7, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mNumConversations:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, dialogMessage:Ljava/lang/String;
    #v0=(Reference);
    iget v2, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mFolderType:I

    #v2=(Integer);
    const/16 v3, 0x40

    #v3=(PosByte);
    invoke-static {v2, v3}, Lcom/android/mail/providers/Folder;->isType(II)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const v1, 0x7f0a0125

    .line 92
    .local v1, dialogTitleId:I
    :goto_0
    #v1=(Integer);
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/EmptyFolderDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00c8

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a004b

    new-instance v4, Lcom/android/mail/ui/EmptyFolderDialogFragment$1;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/mail/ui/EmptyFolderDialogFragment$1;-><init>(Lcom/android/mail/ui/EmptyFolderDialogFragment;)V

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 89
    .end local v1           #dialogTitleId:I
    :cond_0
    #v1=(Uninit);v2=(Boolean);v3=(PosByte);v4=(Integer);
    const v1, 0x7f0a0124

    #v1=(Integer);
    goto :goto_0
.end method

.method public setListener(Lcom/android/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/EmptyFolderDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method
