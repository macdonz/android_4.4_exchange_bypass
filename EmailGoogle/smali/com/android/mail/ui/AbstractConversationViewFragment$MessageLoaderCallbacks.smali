.class Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;
.super Ljava/lang/Object;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/AbstractConversationViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/ui/AbstractConversationViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;-><init>(Lcom/android/mail/ui/AbstractConversationViewFragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
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
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v2, v2, Lcom/android/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    #v0=(Reference);
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;>;",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/browse/ConversationMessage;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/browse/ConversationMessage;>;"
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 420
    #v6=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$100(Lcom/android/mail/ui/AbstractConversationViewFragment;)Lcom/android/mail/browse/MessageCursor;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 468
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-object v0, p2

    .line 423
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageCursor;

    .line 426
    .local v0, messageCursor:Lcom/android/mail/browse/MessageCursor;
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/MessageCursor;->setController(Lcom/android/mail/browse/MessageCursor$ConversationController;)V

    .line 428
    invoke-static {}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-static {v2, v3}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 429
    invoke-static {}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "LOADED CONVERSATION= %s"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->getDebugDump()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->getCount()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/android/mail/providers/UIProvider$CursorStatus;->isWaitingForResults(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$300(Lcom/android/mail/ui/AbstractConversationViewFragment;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 436
    :cond_2
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$400(Lcom/android/mail/ui/AbstractConversationViewFragment;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$500(Lcom/android/mail/ui/AbstractConversationViewFragment;)V

    .line 451
    :goto_1
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-static {v2, v8}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/browse/MessageCursor;)Lcom/android/mail/browse/MessageCursor;

    goto :goto_0

    .line 444
    :cond_3
    #v2=(Boolean);
    invoke-static {}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "CVF: offscreen conv has no messages, ignoring update in anticipation of conv cursor update. c=%s"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, v5, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 456
    :cond_4
    #v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->isLoaded()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_5

    .line 461
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2, v8}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/browse/MessageCursor;)Lcom/android/mail/browse/MessageCursor;

    goto :goto_0

    .line 464
    :cond_5
    #v2=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$100(Lcom/android/mail/ui/AbstractConversationViewFragment;)Lcom/android/mail/browse/MessageCursor;

    move-result-object v1

    .line 465
    .local v1, oldCursor:Lcom/android/mail/browse/MessageCursor;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-static {v2, v0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/browse/MessageCursor;)Lcom/android/mail/browse/MessageCursor;

    .line 466
    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$100(Lcom/android/mail/ui/AbstractConversationViewFragment;)Lcom/android/mail/browse/MessageCursor;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/MessageCursor;Lcom/android/mail/browse/MessageCursor;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/browse/ConversationMessage;>;>;"
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/android/mail/ui/AbstractConversationViewFragment;Lcom/android/mail/browse/MessageCursor;)Lcom/android/mail/browse/MessageCursor;

    .line 473
    return-void
.end method
