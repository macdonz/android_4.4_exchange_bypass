.class public final Lcom/android/mail/ui/RecentFolderList;
.super Ljava/lang/Object;
.source "RecentFolderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;,
        Lcom/android/mail/ui/RecentFolderList$StoreRecent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALPHABET_IGNORECASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private final mAccountObserver:Lcom/android/mail/providers/AccountObserver;

.field private final mContext:Landroid/content/Context;

.field private final mFolderCache:Lcom/android/mail/utils/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/mail/ui/RecentFolderList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/mail/ui/RecentFolderList;->$assertionsDisabled:Z

    .line 80
    new-instance v0, Lcom/android/mail/ui/RecentFolderList$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/RecentFolderList$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/RecentFolderList;->ALPHABET_IGNORECASE:Ljava/util/Comparator;

    return-void

    .line 51
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    .line 70
    new-instance v0, Lcom/android/mail/ui/RecentFolderList$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/RecentFolderList$1;-><init>(Lcom/android/mail/ui/RecentFolderList;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/RecentFolderList;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 131
    new-instance v0, Lcom/android/mail/utils/LruCache;

    #v0=(UninitRef);
    const/4 v1, 0x7

    #v1=(PosByte);
    invoke-direct {v0, v1}, Lcom/android/mail/utils/LruCache;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/RecentFolderList;->mFolderCache:Lcom/android/mail/utils/LruCache;

    .line 133
    iput-object p1, p0, Lcom/android/mail/ui/RecentFolderList;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/RecentFolderList;Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/ui/RecentFolderList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mail/ui/RecentFolderList;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method private setCurrentAccount(Lcom/android/mail/providers/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, p1}, Lcom/android/mail/providers/Account;->matches(Lcom/android/mail/providers/Account;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    :cond_0
    #v1=(Conflicted);
    const/4 v0, 0x1

    .line 153
    .local v0, accountSwitched:Z
    :goto_0
    #v0=(Boolean);
    iput-object p1, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/mail/ui/RecentFolderList;->mFolderCache:Lcom/android/mail/utils/LruCache;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/utils/LruCache;->clear()V

    .line 158
    :cond_1
    #v1=(Conflicted);
    return-void

    .line 152
    .end local v0           #accountSwitched:Z
    :cond_2
    #v0=(Uninit);v1=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mail/ui/RecentFolderList;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 257
    return-void
.end method

.method public getRecentFolderList(Lcom/android/mail/utils/FolderUri;)Ljava/util/ArrayList;
    .locals 8
    .parameter "excludedFolderUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/utils/FolderUri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, excludedUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/utils/FolderUri;>;"
    #v2=(Reference);
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    iget-object v6, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    #v6=(Reference);
    if-nez v6, :cond_5

    sget-object v0, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    .line 229
    .local v0, defaultInbox:Lcom/android/mail/utils/FolderUri;
    :goto_0
    #v0=(Reference);
    sget-object v6, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v0, v6}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 230
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 233
    .local v4, recent:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;>;"
    #v4=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/RecentFolderList;->mFolderCache:Lcom/android/mail/utils/LruCache;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/mail/utils/LruCache;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 236
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 237
    .local v5, recentFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Folder;>;"
    #v5=(Reference);
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    #v1=(Conflicted);v3=(Reference);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;

    .line 238
    .local v1, entry:Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;
    invoke-static {v1}, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;->access$200(Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;)Lcom/android/mail/providers/Folder;

    move-result-object v6

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_3

    .line 239
    invoke-static {v1}, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;->access$200(Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;)Lcom/android/mail/providers/Folder;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_3
    #v6=(Conflicted);
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    #v6=(Integer);
    const/4 v7, 0x5

    #v7=(PosByte);
    if-ne v6, v7, :cond_2

    .line 247
    .end local v1           #entry:Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;
    :cond_4
    #v1=(Conflicted);v7=(Conflicted);
    sget-object v6, Lcom/android/mail/ui/RecentFolderList;->ALPHABET_IGNORECASE:Ljava/util/Comparator;

    #v6=(Reference);
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    return-object v5

    .line 226
    .end local v0           #defaultInbox:Lcom/android/mail/utils/FolderUri;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #recent:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;>;"
    .end local v5           #recentFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/providers/Folder;>;"
    :cond_5
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);
    new-instance v0, Lcom/android/mail/utils/FolderUri;

    #v0=(UninitRef);
    iget-object v6, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v6, v6, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-static {v6}, Lcom/android/mail/providers/Settings;->getDefaultInboxUri(Lcom/android/mail/providers/Settings;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public initialize(Lcom/android/mail/ui/ControllableActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mail/ui/RecentFolderList;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    #v0=(Reference);
    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/android/mail/providers/Account;)V

    .line 142
    return-void
.end method

.method public loadFromUiProvider(Lcom/android/mail/content/ObjectCursor;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, c:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 165
    #v6=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    const-string v2, "RecentFolderList"

    const-string v3, "RecentFolderList.loadFromUiProvider: bad input. mAccount=%s,cursor=%s"

    #v3=(Reference);
    new-array v4, v8, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 170
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const-string v2, "RecentFolderList"

    const-string v3, "Number of recents = %d"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->moveToLast()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 172
    const-string v2, "RecentFolderList"

    #v2=(Reference);
    const-string v3, "Not able to move to last in recent labels cursor"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 179
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 180
    .local v1, folder:Lcom/android/mail/providers/Folder;
    new-instance v0, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;-><init>(Lcom/android/mail/providers/Folder;)V

    .line 181
    .local v0, entry:Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/RecentFolderList;->mFolderCache:Lcom/android/mail/utils/LruCache;

    #v2=(Reference);
    iget-object v3, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/mail/utils/LruCache;->putElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    const-string v2, "RecentFolderList"

    const-string v3, "Account %s, Recent: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->moveToPrevious()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public touchFolder(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Account;)V
    .locals 4
    .parameter "folder"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 194
    #v3=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, p2}, Lcom/android/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 195
    :cond_0
    #v1=(Conflicted);
    if-eqz p2, :cond_2

    .line 196
    invoke-direct {p0, p2}, Lcom/android/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/android/mail/providers/Account;)V

    .line 202
    :cond_1
    sget-boolean v1, Lcom/android/mail/ui/RecentFolderList;->$assertionsDisabled:Z

    #v1=(Boolean);
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #v1=(Reference);
    throw v1

    .line 198
    :cond_2
    #v1=(Conflicted);
    const-string v1, "RecentFolderList"

    #v1=(Reference);
    const-string v2, "No account set for setting recent folders?"

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 204
    :cond_3
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Null);
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isProviderFolder()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x1000

    #v1=(PosShort);
    invoke-virtual {p1, v1}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 205
    :cond_4
    const-string v1, "RecentFolderList"

    #v1=(Reference);
    const-string v2, "Not touching recent folder because it\'s provider or search folder"

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 209
    :cond_5
    #v1=(Boolean);v2=(Uninit);v3=(Null);
    new-instance v0, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;-><init>(Lcom/android/mail/providers/Folder;)V

    .line 210
    .local v0, entry:Lcom/android/mail/ui/RecentFolderList$RecentFolderListEntry;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/RecentFolderList;->mFolderCache:Lcom/android/mail/utils/LruCache;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/utils/LruCache;->putElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    new-instance v1, Lcom/android/mail/ui/RecentFolderList$StoreRecent;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/ui/RecentFolderList;->mAccount:Lcom/android/mail/providers/Account;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/mail/ui/RecentFolderList$StoreRecent;-><init>(Lcom/android/mail/ui/RecentFolderList;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
