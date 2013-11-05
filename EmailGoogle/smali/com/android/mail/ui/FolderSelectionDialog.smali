.class public abstract Lcom/android/mail/ui/FolderSelectionDialog;
.super Ljava/lang/Object;
.source "FolderSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field private static sDialogShown:Z


# instance fields
.field protected final mAccount:Lcom/android/mail/providers/Account;

.field protected final mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

.field protected final mBatch:Z

.field protected final mBuilder:Landroid/app/AlertDialog$Builder;

.field protected final mCurrentFolder:Lcom/android/mail/providers/Folder;

.field protected mDialog:Landroid/app/AlertDialog;

.field protected final mRunner:Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;

.field protected final mTarget:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpdater:Lcom/android/mail/ui/ConversationUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/FolderSelectionDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "updater"
    .parameter
    .parameter "isBatch"
    .parameter "currentFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/ui/ConversationUpdater;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z",
            "Lcom/android/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p4, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    .line 87
    iput-object p4, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mTarget:Ljava/util/Collection;

    .line 88
    iput-boolean p5, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mBatch:Z

    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    #v0=(Reference);
    const v1, 0x7f0a00c8

    #v1=(Integer);
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    iput-object p2, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAccount:Lcom/android/mail/providers/Account;

    .line 93
    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 94
    iput-object p6, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mCurrentFolder:Lcom/android/mail/providers/Folder;

    .line 95
    new-instance v1, Lcom/android/mail/ui/SeparatedFolderListAdapter;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/ui/SeparatedFolderListAdapter;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    .line 96
    new-instance v1, Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, p1, v2}, Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;-><init>(Lcom/android/mail/ui/FolderSelectionDialog;Landroid/content/Context;Lcom/android/mail/ui/FolderSelectionDialog$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mRunner:Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;

    .line 97
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;Z)Lcom/android/mail/ui/FolderSelectionDialog;
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "updater"
    .parameter
    .parameter "isBatch"
    .parameter "currentFolder"
    .parameter "isMoveTo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/ui/ConversationUpdater;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z",
            "Lcom/android/mail/providers/Folder;",
            "Z)",
            "Lcom/android/mail/ui/FolderSelectionDialog;"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    sget-boolean v0, Lcom/android/mail/ui/FolderSelectionDialog;->sDialogShown:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 69
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v0

    .line 64
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    if-nez p6, :cond_1

    const/16 v0, 0x2000

    #v0=(PosShort);
    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 66
    :cond_1
    new-instance v0, Lcom/android/mail/ui/SingleFolderSelectionDialog;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    move-object v4, p3

    #v4=(Reference);
    move v5, p4

    #v5=(Boolean);
    move-object v6, p5

    #v6=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/android/mail/ui/SingleFolderSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;)V

    #v0=(Reference);
    goto :goto_0

    .line 69
    :cond_2
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    move-object v4, p3

    #v4=(Reference);
    move v5, p4

    #v5=(Boolean);
    move-object v6, p5

    #v6=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/android/mail/ui/MultiFoldersSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public static setDialogDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    #v3=(Null);
    sget-object v0, Lcom/android/mail/ui/FolderSelectionDialog;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Folder Selection dialog dismissed"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    sput-boolean v3, Lcom/android/mail/ui/FolderSelectionDialog;->sDialogShown:Z

    .line 77
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 117
    invoke-static {}, Lcom/android/mail/ui/FolderSelectionDialog;->setDialogDismissed()V

    .line 118
    return-void
.end method

.method protected abstract onListItemClick(I)V
.end method

.method public show()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    #v0=(One);
    sput-boolean v0, Lcom/android/mail/ui/FolderSelectionDialog;->sDialogShown:Z

    .line 101
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mRunner:Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    new-array v1, v1, [Ljava/lang/Void;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/FolderSelectionDialog$QueryRunner;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method protected showInternal()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/FolderSelectionDialog$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/FolderSelectionDialog$1;-><init>(Lcom/android/mail/ui/FolderSelectionDialog;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    return-void
.end method

.method protected abstract updateAdapterInBackground(Landroid/content/Context;)V
.end method
