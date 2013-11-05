.class Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;
.super Ljava/lang/Object;
.source "EmlViewerActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/EmlViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountLoadCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/providers/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/EmlViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/EmlViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlViewerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/EmlViewerActivity;Lcom/android/mail/browse/EmlViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;-><init>(Lcom/android/mail/browse/EmlViewerActivity;)V

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
            "Lcom/android/mail/providers/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 166
    .local v1, projection:[Ljava/lang/String;
    #v1=(Reference);
    sget-object v0, Lcom/android/mail/providers/Account;->FACTORY:Lcom/android/mail/content/CursorCreator;

    .line 167
    .local v0, factory:Lcom/android/mail/content/CursorCreator;,"Lcom/android/mail/content/CursorCreator<Lcom/android/mail/providers/Account;>;"
    #v0=(Reference);
    new-instance v2, Lcom/android/mail/content/ObjectCursorLoader;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlViewerActivity;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlViewerActivity;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/browse/EmlViewerActivity;->access$100(Lcom/android/mail/browse/EmlViewerActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v2=(Reference);
    return-object v2
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
            "Lcom/android/mail/providers/Account;",
            ">;>;",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlViewerActivity;

    #v1=(Reference);
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-static {v1, v0}, Lcom/android/mail/browse/EmlViewerActivity;->access$202(Lcom/android/mail/browse/EmlViewerActivity;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;

    .line 177
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

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
            "Lcom/android/mail/providers/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;>;"
    return-void
.end method
