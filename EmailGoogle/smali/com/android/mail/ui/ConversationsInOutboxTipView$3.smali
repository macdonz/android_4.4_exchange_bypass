.class Lcom/android/mail/ui/ConversationsInOutboxTipView$3;
.super Ljava/lang/Object;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationsInOutboxTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 179
    new-instance v0, Lcom/android/mail/content/ObjectCursorLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->access$300(Lcom/android/mail/ui/ConversationsInOutboxTipView;)Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    sget-object v4, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    #v4=(Reference);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    .line 181
    .local v0, loader:Lcom/android/mail/content/ObjectCursorLoader;,"Lcom/android/mail/content/ObjectCursorLoader<Lcom/android/mail/providers/Folder;>;"
    #v0=(Reference);
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 3
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
    .line 162
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 164
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 165
    .local v0, folder:Lcom/android/mail/providers/Folder;
    iget v1, v0, Lcom/android/mail/providers/Folder;->type:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    #v1=(Reference);
    invoke-static {v1, v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->access$102(Lcom/android/mail/ui/ConversationsInOutboxTipView;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;

    .line 167
    iget-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    iget v2, v0, Lcom/android/mail/providers/Folder;->totalCount:I

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->access$200(Lcom/android/mail/ui/ConversationsInOutboxTipView;I)V

    .line 169
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 171
    .end local v0           #folder:Lcom/android/mail/providers/Folder;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

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
    .line 157
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    return-void
.end method
