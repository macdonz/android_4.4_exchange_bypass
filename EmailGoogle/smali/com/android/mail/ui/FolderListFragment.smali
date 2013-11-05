.class public Lcom/android/mail/ui/FolderListFragment;
.super Landroid/app/ListFragment;
.source "FolderListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;,
        Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;,
        Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountController:Lcom/android/mail/ui/AccountController;

.field private mAccountObserver:Lcom/android/mail/providers/AccountObserver;

.field private mActivity:Lcom/android/mail/ui/ControllableActivity;

.field private mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

.field private mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field private mCurrentAccount:Lcom/android/mail/providers/Account;

.field private mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

.field private mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

.field private mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

.field private mExcludedFolderTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderChanger:Lcom/android/mail/ui/FolderSelector;

.field private mFolderListUri:Landroid/net/Uri;

.field private mFolderObserver:Lcom/android/mail/providers/FolderObserver;

.field protected mHideAccounts:Z

.field protected mIsDivided:Z

.field private mListView:Landroid/widget/ListView;

.field private mNextAccount:Lcom/android/mail/providers/Account;

.field private mNextFolder:Lcom/android/mail/providers/Folder;

.field private mParentFolder:Lcom/android/mail/providers/Folder;

.field private mSelectedFolderType:I

.field private mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 165
    #v1=(Null);
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 105
    #p0=(Reference);
    iput-boolean v2, p0, Lcom/android/mail/ui/FolderListFragment;->mIsDivided:Z

    .line 107
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/FolderListFragment;->mHideAccounts:Z

    .line 116
    sget-object v0, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    .line 141
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 143
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 145
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

    .line 147
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    .line 153
    iput v2, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 157
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    .line 159
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mNextFolder:Lcom/android/mail/providers/Folder;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderListFragment;->setSelectedFolder(Lcom/android/mail/providers/Folder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderListFragment;->setSelectedAccount(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mail/ui/FolderListFragment;)[Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mail/ui/FolderListFragment;->getAllAccounts()[Lcom/android/mail/providers/Account;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/utils/FolderUri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mail/ui/FolderListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$1300(Lcom/android/mail/ui/FolderListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Folder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderListFragment;->isFolderTypeExcluded(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$1900(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderListFragment;->changeAccount(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mail/ui/FolderListFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mNextFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment;->mNextFolder:Lcom/android/mail/providers/Folder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/FolderSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderChanger:Lcom/android/mail/ui/FolderSelector;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/AccountController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/ControllableActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    return-object v0
.end method

.method private changeAccount(Lcom/android/mail/providers/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    const/4 v3, 0x1

    .line 439
    #v3=(One);
    iput v3, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 440
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    .line 441
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-direct {p0, v2}, Lcom/android/mail/ui/FolderListFragment;->getDefaultInbox(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/android/mail/ui/AccountController;->closeDrawer(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 442
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "switch_account"

    const-string v2, "drawer_account_switch"

    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 443
    return-void
.end method

.method private getAllAccounts()[Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/AllAccountObserver;->getAllAccounts()[Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [Lcom/android/mail/providers/Account;

    #v0=(Reference);
    goto :goto_0
.end method

.method private static getBundleFromArgs(Lcom/android/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .parameter "parentFolder"
    .parameter "folderListUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Folder;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, excludedFolderTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 220
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    if-eqz p0, :cond_0

    .line 221
    const-string v1, "arg-parent-folder"

    #v1=(Reference);
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    :cond_0
    #v1=(Conflicted);
    if-eqz p1, :cond_1

    .line 224
    const-string v1, "arg-folder-list-uri"

    #v1=(Reference);
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    if-eqz p2, :cond_2

    .line 227
    const-string v1, "arg-excluded-folder-types"

    #v1=(Reference);
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 229
    :cond_2
    #v1=(Conflicted);
    return-object v0
.end method

.method private getDefaultInbox(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "account"

    .prologue
    .line 431
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 432
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    .line 434
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getDefaultInbox(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    goto :goto_0
.end method

.method private isFolderTypeExcluded(Lcom/android/mail/providers/Folder;)Z
    .locals 4
    .parameter "folder"

    .prologue
    const/4 v3, 0x0

    .line 1163
    #v3=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    #v2=(Reference);
    if-nez v2, :cond_0

    move v2, v3

    .line 1173
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);
    return v2

    .line 1167
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1168
    .local v0, excludedType:I
    #v0=(Integer);
    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 1169
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .end local v0           #excludedType:I
    :cond_2
    #v0=(Conflicted);v2=(Boolean);
    move v2, v3

    .line 1173
    #v2=(Null);
    goto :goto_0
.end method

.method public static ofTopLevelTree(Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/android/mail/ui/FolderListFragment;
    .locals 2
    .parameter "folderListUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/mail/ui/FolderListFragment;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, excludedFolderTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/mail/ui/FolderListFragment;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/FolderListFragment;-><init>()V

    .line 204
    .local v0, fragment:Lcom/android/mail/ui/FolderListFragment;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v1, p0, p1}, Lcom/android/mail/ui/FolderListFragment;->getBundleFromArgs(Lcom/android/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/FolderListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    return-object v0
.end method

.method public static ofTree(Lcom/android/mail/providers/Folder;)Lcom/android/mail/ui/FolderListFragment;
    .locals 3
    .parameter "folder"

    .prologue
    .line 189
    new-instance v0, Lcom/android/mail/ui/FolderListFragment;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/FolderListFragment;-><init>()V

    .line 190
    .local v0, fragment:Lcom/android/mail/ui/FolderListFragment;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p0, v1, v2}, Lcom/android/mail/ui/FolderListFragment;->getBundleFromArgs(Lcom/android/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/FolderListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 191
    return-object v0
.end method

.method private setInstanceFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 346
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 340
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    const-string v1, "arg-parent-folder"

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Folder;

    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mParentFolder:Lcom/android/mail/providers/Folder;

    .line 341
    const-string v1, "arg-folder-list-uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, folderUri:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 343
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    .line 345
    :cond_1
    const-string v1, "arg-excluded-folder-types"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private setSelectedAccount(Lcom/android/mail/providers/Account;)V
    .locals 7
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 1130
    #v3=(Null);
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    #v4=(Reference);
    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    move v0, v2

    .line 1132
    .local v0, changed:Z
    :goto_0
    #v0=(Boolean);
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    .line 1133
    if-eqz v0, :cond_3

    .line 1135
    iget-object v4, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v4=(Reference);
    invoke-interface {v4, v6}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setCursor(Lcom/android/mail/content/ObjectCursor;)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1140
    .local v1, manager:Landroid/app/LoaderManager;
    #v1=(Reference);
    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1141
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1142
    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1143
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1147
    sget-object v2, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    .line 1148
    iput-object v6, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

    .line 1157
    .end local v1           #manager:Landroid/app/LoaderManager;
    :cond_1
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Reference);
    return-void

    .end local v0           #changed:Z
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v6=(Null);
    move v0, v3

    .line 1130
    #v0=(Null);
    goto :goto_0

    .line 1149
    .restart local v0       #changed:Z
    :cond_3
    #v0=(Boolean);
    if-nez p1, :cond_1

    .line 1152
    sget-object v4, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "FLF.setSelectedAccount(null) called! Destroying existing loader."

    #v5=(Reference);
    new-array v6, v3, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1153
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1154
    .restart local v1       #manager:Landroid/app/LoaderManager;
    #v1=(Reference);
    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1155
    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1
.end method

.method private setSelectedFolder(Lcom/android/mail/providers/Folder;)V
    .locals 4
    .parameter "folder"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, 0x0

    .line 1085
    #v0=(Null);
    if-nez p1, :cond_1

    .line 1086
    sget-object v1, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    .line 1087
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

    .line 1088
    sget-object v1, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "FolderListFragment.setSelectedFolder(null) called!"

    #v2=(Reference);
    new-array v3, v0, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1113
    :cond_0
    :goto_0
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 1092
    :cond_1
    #v0=(Null);v1=(One);v2=(Uninit);v3=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    invoke-static {p1, v2}, Lcom/android/mail/ui/FolderItemView;->areSameViews(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Folder;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    move v0, v1

    .line 1102
    .local v0, viewChanged:Z
    :cond_2
    #v0=(Boolean);
    iget v2, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    #v2=(Integer);
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v3, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v3, v3, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 1104
    :cond_3
    #v2=(Integer);v3=(Conflicted);
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    :goto_1
    #v1=(PosByte);
    iput v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 1108
    :cond_4
    #v2=(Conflicted);
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

    .line 1109
    iget-object v1, p1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    .line 1110
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v1}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1104
    :cond_5
    #v1=(One);v2=(Boolean);
    const/4 v1, 0x3

    #v1=(PosByte);
    goto :goto_1
.end method

.method private viewFolderOrChangeAccount(I)V
    .locals 14
    .parameter "position"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    .line 451
    .local v11, item:Ljava/lang/Object;
    #v11=(Reference);
    sget-object v0, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "viewFolderOrChangeAccount(%d): %s"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v2, v4

    const/4 v4, 0x1

    #v4=(One);
    aput-object v11, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 453
    const/4 v10, 0x0

    .line 455
    .local v10, folderType:I
    #v10=(Null);
    instance-of v0, v11, Lcom/android/mail/adapter/DrawerItem;

    #v0=(Boolean);
    if-eqz v0, :cond_5

    move-object v8, v11

    .line 456
    #v8=(Reference);
    check-cast v8, Lcom/android/mail/adapter/DrawerItem;

    .line 458
    .local v8, drawerItem:Lcom/android/mail/adapter/DrawerItem;
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    invoke-interface {v0, v8}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getItemType(Lcom/android/mail/adapter/DrawerItem;)I

    move-result v12

    .line 459
    .local v12, itemType:I
    #v12=(Integer);
    const/4 v0, 0x2

    #v0=(PosByte);
    if-ne v12, v0, :cond_3

    .line 461
    const/4 v9, 0x0

    .line 462
    .local v9, folder:Lcom/android/mail/providers/Folder;
    #v9=(Null);
    iget-object v6, v8, Lcom/android/mail/adapter/DrawerItem;->mAccount:Lcom/android/mail/providers/Account;

    .line 464
    .local v6, account:Lcom/android/mail/providers/Account;
    #v6=(Reference);
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 466
    add-int/lit8 v7, p1, 0x1

    .line 467
    .local v7, defaultInboxPosition:I
    #v7=(Integer);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v0=(Reference);
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v7, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 471
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    iget-object v4, p0, Lcom/android/mail/ui/FolderListFragment;->mNextAccount:Lcom/android/mail/providers/Account;

    #v4=(Reference);
    invoke-direct {p0, v4}, Lcom/android/mail/ui/FolderListFragment;->getDefaultInbox(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v4

    invoke-interface {v0, v1, v2, v4}, Lcom/android/mail/ui/AccountController;->closeDrawer(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 495
    .end local v6           #account:Lcom/android/mail/providers/Account;
    .end local v7           #defaultInboxPosition:I
    .end local v8           #drawerItem:Lcom/android/mail/adapter/DrawerItem;
    .end local v12           #itemType:I
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Reference);v10=(Integer);v12=(Conflicted);
    if-eqz v9, :cond_1

    .line 497
    const/4 v13, 0x0

    .line 499
    .local v13, nextAccount:Lcom/android/mail/providers/Account;
    #v13=(Null);
    iget-object v0, v9, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_8

    .line 500
    iput-object v9, p0, Lcom/android/mail/ui/FolderListFragment;->mNextFolder:Lcom/android/mail/providers/Folder;

    .line 501
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-interface {v0, v1, v13, v9}, Lcom/android/mail/ui/AccountController;->closeDrawer(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 503
    const/4 v0, 0x2

    #v0=(PosByte);
    if-ne v10, v0, :cond_7

    const-string v3, "recent"

    .line 504
    .local v3, label:Ljava/lang/String;
    :goto_1
    #v3=(Reference);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "switch_folder"

    #v1=(Reference);
    invoke-virtual {v9}, Lcom/android/mail/providers/Folder;->getTypeDescription()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 512
    .end local v3           #label:Ljava/lang/String;
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    .end local v13           #nextAccount:Lcom/android/mail/providers/Account;
    :cond_1
    :goto_2
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);v13=(Conflicted);
    return-void

    .line 474
    .restart local v6       #account:Lcom/android/mail/providers/Account;
    .restart local v8       #drawerItem:Lcom/android/mail/adapter/DrawerItem;
    .restart local v9       #folder:Lcom/android/mail/providers/Folder;
    .restart local v12       #itemType:I
    :cond_2
    #v0=(PosByte);v3=(Uninit);v4=(One);v5=(Reference);v6=(Reference);v7=(Uninit);v8=(Reference);v9=(Null);v10=(Null);v12=(Integer);v13=(Uninit);
    invoke-direct {p0, v6}, Lcom/android/mail/ui/FolderListFragment;->changeAccount(Lcom/android/mail/providers/Account;)V

    goto :goto_0

    .line 476
    .end local v6           #account:Lcom/android/mail/providers/Account;
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    :cond_3
    #v6=(Uninit);v9=(Uninit);
    if-nez v12, :cond_4

    .line 478
    iget-object v9, v8, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    .line 479
    .restart local v9       #folder:Lcom/android/mail/providers/Folder;
    #v9=(Reference);
    iget v10, v8, Lcom/android/mail/adapter/DrawerItem;->mFolderType:I

    #v10=(Integer);
    iput v10, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 480
    sget-object v0, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "FLF.viewFolderOrChangeAccount folder=%s, type=%d"

    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v9, v2, v4

    const/4 v4, 0x1

    #v4=(One);
    iget v5, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 484
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    :cond_4
    #v0=(PosByte);v9=(Uninit);v10=(Null);
    sget-object v0, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "FolderListFragment: viewFolderOrChangeAccount(): Clicked on unset item in drawer. Offending item is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 488
    .end local v8           #drawerItem:Lcom/android/mail/adapter/DrawerItem;
    .end local v12           #itemType:I
    :cond_5
    #v0=(Boolean);v8=(Uninit);v12=(Uninit);
    instance-of v0, v11, Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_6

    move-object v9, v11

    .line 489
    #v9=(Reference);
    check-cast v9, Lcom/android/mail/providers/Folder;

    .restart local v9       #folder:Lcom/android/mail/providers/Folder;
    goto :goto_0

    .line 492
    .end local v9           #folder:Lcom/android/mail/providers/Folder;
    :cond_6
    #v9=(Uninit);
    sget-object v0, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "viewFolderOrChangeAccount(): invalid item"

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 493
    const/4 v9, 0x0

    .restart local v9       #folder:Lcom/android/mail/providers/Folder;
    #v9=(Null);
    goto :goto_0

    .line 503
    .restart local v13       #nextAccount:Lcom/android/mail/providers/Account;
    :cond_7
    #v0=(PosByte);v1=(One);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Reference);v10=(Integer);v12=(Conflicted);v13=(Null);
    const-string v3, "normal"

    #v3=(Reference);
    goto :goto_1

    .line 509
    :cond_8
    #v0=(Boolean);v1=(Reference);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v0, v1, v13, v9}, Lcom/android/mail/ui/AccountController;->closeDrawer(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    goto :goto_2
.end method


# virtual methods
.method protected getListViewChoiceMode()I
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/AccountController;->getFolderListViewChoiceMode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 241
    .local v1, activity:Landroid/app/Activity;
    #v1=(Reference);
    instance-of v5, v1, Lcom/android/mail/ui/ControllableActivity;

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 242
    sget-object v5, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "FolderListFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    .end local v1           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 246
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    check-cast v1, Lcom/android/mail/ui/ControllableActivity;

    .end local v1           #activity:Landroid/app/Activity;
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 247
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v5

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    .line 248
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getFolderController()Lcom/android/mail/ui/FolderController;

    move-result-object v2

    .line 250
    .local v2, controller:Lcom/android/mail/ui/FolderController;
    #v2=(Reference);
    new-instance v5, Lcom/android/mail/ui/FolderListFragment$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/mail/ui/FolderListFragment$1;-><init>(Lcom/android/mail/ui/FolderListFragment;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 257
    if-eqz v2, :cond_4

    .line 259
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    invoke-virtual {v5, v2}, Lcom/android/mail/providers/FolderObserver;->initialize(Lcom/android/mail/ui/FolderController;)Lcom/android/mail/providers/Folder;

    move-result-object v3

    .line 260
    .local v3, currentFolder:Lcom/android/mail/providers/Folder;
    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/android/mail/providers/Folder;

    .line 268
    :goto_1
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mParentFolder:Lcom/android/mail/providers/Folder;

    if-eqz v5, :cond_5

    .line 269
    new-instance v5, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    iget-object v7, p0, Lcom/android/mail/ui/FolderListFragment;->mParentFolder:Lcom/android/mail/providers/Folder;

    #v7=(Reference);
    invoke-direct {v5, p0, v6, v7}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;-><init>(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/content/ObjectCursor;Lcom/android/mail/providers/Folder;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    .line 270
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getHierarchyFolder()Lcom/android/mail/providers/Folder;

    move-result-object v4

    .line 276
    .local v4, selectedFolder:Lcom/android/mail/providers/Folder;
    :goto_2
    #v4=(Reference);v6=(Boolean);v7=(Conflicted);
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v6, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 278
    invoke-direct {p0, v4}, Lcom/android/mail/ui/FolderListFragment;->setSelectedFolder(Lcom/android/mail/providers/Folder;)V

    .line 282
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v0

    .line 283
    .local v0, accountController:Lcom/android/mail/ui/AccountController;
    #v0=(Reference);
    new-instance v5, Lcom/android/mail/ui/FolderListFragment$2;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/mail/ui/FolderListFragment$2;-><init>(Lcom/android/mail/ui/FolderListFragment;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 289
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getFolderSelector()Lcom/android/mail/ui/FolderSelector;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderChanger:Lcom/android/mail/ui/FolderSelector;

    .line 290
    if-eqz v0, :cond_3

    .line 292
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-virtual {v5, v0}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mail/ui/FolderListFragment;->setSelectedAccount(Lcom/android/mail/providers/Account;)V

    .line 294
    new-instance v5, Lcom/android/mail/ui/FolderListFragment$3;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/mail/ui/FolderListFragment$3;-><init>(Lcom/android/mail/ui/FolderListFragment;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    .line 300
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    invoke-virtual {v5, v0}, Lcom/android/mail/providers/AllAccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)[Lcom/android/mail/providers/Account;

    .line 301
    iput-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountController:Lcom/android/mail/ui/AccountController;

    .line 304
    new-instance v5, Lcom/android/mail/ui/FolderListFragment$4;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/mail/ui/FolderListFragment$4;-><init>(Lcom/android/mail/ui/FolderListFragment;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

    .line 319
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

    invoke-virtual {v5, v0}, Lcom/android/mail/providers/DrawerClosedObserver;->initialize(Lcom/android/mail/ui/AccountController;)V

    .line 322
    :cond_3
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v5=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment;->getListViewChoiceMode()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 329
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-virtual {p0, v5}, Lcom/android/mail/ui/FolderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 262
    .end local v0           #accountController:Lcom/android/mail/ui/AccountController;
    .end local v3           #currentFolder:Lcom/android/mail/providers/Folder;
    .end local v4           #selectedFolder:Lcom/android/mail/providers/Folder;
    :cond_4
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);
    const/4 v3, 0x0

    .restart local v3       #currentFolder:Lcom/android/mail/providers/Folder;
    #v3=(Null);
    goto :goto_1

    .line 272
    :cond_5
    #v3=(Reference);
    new-instance v5, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;

    #v5=(UninitRef);
    iget-boolean v6, p0, Lcom/android/mail/ui/FolderListFragment;->mIsDivided:Z

    #v6=(Boolean);
    invoke-direct {v5, p0, v6}, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;-><init>(Lcom/android/mail/ui/FolderListFragment;Z)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    .line 273
    move-object v4, v3

    .restart local v4       #selectedFolder:Lcom/android/mail/providers/Folder;
    #v4=(Reference);
    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 516
    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 518
    if-nez p1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    .line 532
    .local v0, folderListUri:Landroid/net/Uri;
    :goto_0
    #v0=(Reference);v2=(Conflicted);
    new-instance v1, Lcom/android/mail/content/ObjectCursorLoader;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    sget-object v4, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    #v4=(Reference);
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    .end local v0           #folderListUri:Landroid/net/Uri;
    :goto_1
    #v0=(Conflicted);v1=(Reference);
    return-object v1

    .line 524
    :cond_0
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    iget-object v0, v1, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .restart local v0       #folderListUri:Landroid/net/Uri;
    #v0=(Reference);
    goto :goto_0

    .line 526
    .end local v0           #folderListUri:Landroid/net/Uri;
    :cond_1
    #v0=(Uninit);v1=(Null);
    const/4 v2, 0x1

    #v2=(One);
    if-ne p1, v2, :cond_2

    .line 527
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v0, v1, Lcom/android/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .restart local v0       #folderListUri:Landroid/net/Uri;
    #v0=(Reference);
    goto :goto_0

    .line 529
    .end local v0           #folderListUri:Landroid/net/Uri;
    :cond_2
    #v0=(Uninit);v1=(Null);
    sget-object v2, Lcom/android/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "FLF.onCreateLoader() with weird type"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 351
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {p0, v1}, Lcom/android/mail/ui/FolderListFragment;->setInstanceFromBundle(Landroid/os/Bundle;)V

    .line 353
    const v1, 0x7f04004b

    #v1=(Integer);
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, rootView:Landroid/view/View;
    #v0=(Reference);
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    .line 355
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 357
    if-eqz p3, :cond_0

    const-string v1, "flf-list-state"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v1=(Reference);
    const-string v2, "flf-list-state"

    #v2=(Reference);
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 360
    :cond_0
    #v1=(Conflicted);
    if-eqz p3, :cond_2

    const-string v1, "flf-selected-folder"

    #v1=(Reference);
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 361
    new-instance v1, Lcom/android/mail/utils/FolderUri;

    #v1=(UninitRef);
    const-string v2, "flf-selected-folder"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    .line 363
    const-string v1, "flf-selected-type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 369
    :cond_1
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mParentFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mParentFolder:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    #v1=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->destroy()V

    .line 405
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/FolderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 408
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 412
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/AllAccountObserver;->unregisterAndDestroy()V

    .line 416
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/android/mail/providers/AllAccountObserver;

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/DrawerClosedObserver;->unregisterAndDestroy()V

    .line 420
    iput-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/android/mail/providers/DrawerClosedObserver;

    .line 422
    :cond_4
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 423
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 427
    invoke-direct {p0, p3}, Lcom/android/mail/ui/FolderListFragment;->viewFolderOrChangeAccount(I)V

    .line 428
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    invoke-interface {v0, p2}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setCursor(Lcom/android/mail/content/ObjectCursor;)V

    .line 545
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 541
    :cond_1
    #v0=(Integer);v1=(Uninit);
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    #v1=(One);
    if-ne v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    invoke-interface {v0, p2}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setAllFolderListCursor(Lcom/android/mail/content/ObjectCursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/FolderListFragment;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    const/4 v2, 0x0

    .line 549
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    invoke-interface {v0, v2}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setCursor(Lcom/android/mail/content/ObjectCursor;)V

    .line 556
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 552
    :cond_1
    #v0=(Integer);v1=(Uninit);
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    #v1=(One);
    if-ne v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v0=(Reference);
    invoke-interface {v0, v2}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setAllFolderListCursor(Lcom/android/mail/content/ObjectCursor;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 384
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 385
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 390
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 391
    const-string v0, "flf-list-state"

    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    if-eqz v0, :cond_1

    .line 394
    const-string v0, "flf-selected-folder"

    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/android/mail/utils/FolderUri;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/utils/FolderUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1
    #v1=(Conflicted);
    const-string v0, "flf-selected-type"

    iget v1, p0, Lcom/android/mail/ui/FolderListFragment;->mSelectedFolderType:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 375
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 380
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-super {p0}, Landroid/app/ListFragment;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    const-string v1, " folder="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mParentFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, " adapterCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v1}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getCount()I

    move-result v1

    :goto_0
    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 177
    :cond_0
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_0
.end method

.method public updateScroll()V
    .locals 2

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getSelectedPosition()I

    move-result v0

    .line 1117
    .local v0, selectedPosition:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    .line 1123
    :cond_0
    return-void
.end method
