.class public Lcom/android/mail/ui/TurnAutoSyncOnDialog;
.super Landroid/app/DialogFragment;
.source "TurnAutoSyncOnDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    }
.end annotation


# static fields
.field private static sDefaultSyncAuthority:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/android/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->sDefaultSyncAuthority:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public static newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/TurnAutoSyncOnDialog;
    .locals 3
    .parameter "account"
    .parameter "syncAuthority"

    .prologue
    .line 61
    new-instance v1, Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;-><init>()V

    .line 62
    .local v1, frag:Lcom/android/mail/ui/TurnAutoSyncOnDialog;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 63
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "account"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v2, "syncAuthority"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    #v5=(Reference);
    const-string v6, "account"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/accounts/Account;

    .line 72
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "syncAuthority"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, syncAuthority:Ljava/lang/String;
    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 74
    .local v3, resources:Landroid/content/res/Resources;
    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v2

    .line 75
    .local v2, isTablet:Z
    #v2=(Boolean);
    const v6, 0x7f0a0139

    #v6=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    new-array v7, v5, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    if-eqz v2, :cond_0

    const v5, 0x7f0a013b

    :goto_0
    #v5=(Integer);
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, bodyText:Ljava/lang/String;
    #v1=(Reference);
    new-instance v5, Landroid/app/AlertDialog$Builder;

    #v5=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    #v6=(Reference);
    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v5=(Reference);
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0138

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a013c

    new-instance v7, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;

    #v7=(UninitRef);
    invoke-direct {v7, p0, v4, v0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog$2;-><init>(Lcom/android/mail/ui/TurnAutoSyncOnDialog;Ljava/lang/String;Landroid/accounts/Account;)V

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00c8

    new-instance v7, Lcom/android/mail/ui/TurnAutoSyncOnDialog$1;

    #v7=(UninitRef);
    invoke-direct {v7, p0}, Lcom/android/mail/ui/TurnAutoSyncOnDialog$1;-><init>(Lcom/android/mail/ui/TurnAutoSyncOnDialog;)V

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 75
    .end local v1           #bodyText:Ljava/lang/String;
    :cond_0
    #v1=(Uninit);v5=(One);
    const v5, 0x7f0a013a

    #v5=(Integer);
    goto :goto_0
.end method
