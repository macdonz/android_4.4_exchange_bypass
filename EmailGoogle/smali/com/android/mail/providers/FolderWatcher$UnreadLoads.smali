.class Lcom/android/mail/providers/FolderWatcher$UnreadLoads;
.super Ljava/lang/Object;
.source "FolderWatcher.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/FolderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnreadLoads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final projection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mail/providers/FolderWatcher;


# direct methods
.method private constructor <init>(Lcom/android/mail/providers/FolderWatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/android/mail/providers/FolderWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    #p0=(Reference);
    sget-object v0, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->projection:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/providers/FolderWatcher;Lcom/android/mail/providers/FolderWatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;-><init>(Lcom/android/mail/providers/FolderWatcher;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
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
    .line 212
    const-string v1, "FOLDER-URI"

    #v1=(Reference);
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 213
    .local v0, uri:Landroid/net/Uri;
    #v0=(Reference);
    new-instance v1, Lcom/android/mail/content/ObjectCursorLoader;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/android/mail/providers/FolderWatcher;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/providers/FolderWatcher;->access$100(Lcom/android/mail/providers/FolderWatcher;)Lcom/android/mail/ui/RestrictedActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/mail/ui/RestrictedActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->projection:[Ljava/lang/String;

    #v3=(Reference);
    sget-object v4, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    #v4=(Reference);
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v1=(Reference);
    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 6
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
    .line 219
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v5

    #v5=(Integer);
    if-lez v5, :cond_0

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 233
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 222
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 223
    .local v0, f:Lcom/android/mail/providers/Folder;
    iget-object v5, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v4

    .line 224
    .local v4, uri:Landroid/net/Uri;
    #v4=(Reference);
    iget v2, v0, Lcom/android/mail/providers/Folder;->unreadCount:I

    .line 225
    .local v2, unreadCount:I
    #v2=(Integer);
    iget-object v5, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/android/mail/providers/FolderWatcher;

    invoke-static {v5}, Lcom/android/mail/providers/FolderWatcher;->access$200(Lcom/android/mail/providers/FolderWatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 226
    .local v1, previousFolder:Lcom/android/mail/providers/Folder;
    if-eqz v1, :cond_2

    iget v5, v1, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v5=(Integer);
    if-eq v2, v5, :cond_3

    :cond_2
    #v5=(Conflicted);
    const/4 v3, 0x1

    .line 228
    .local v3, unreadCountChanged:Z
    :goto_1
    #v3=(Boolean);
    iget-object v5, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/android/mail/providers/FolderWatcher;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/providers/FolderWatcher;->access$200(Lcom/android/mail/providers/FolderWatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    if-eqz v3, :cond_0

    .line 231
    iget-object v5, p0, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/android/mail/providers/FolderWatcher;

    invoke-static {v5}, Lcom/android/mail/providers/FolderWatcher;->access$300(Lcom/android/mail/providers/FolderWatcher;)Landroid/widget/BaseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 226
    .end local v3           #unreadCountChanged:Z
    :cond_3
    #v3=(Uninit);v5=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/providers/FolderWatcher$UnreadLoads;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 238
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    return-void
.end method
