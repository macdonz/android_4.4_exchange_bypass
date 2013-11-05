.class Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;
.super Lcom/android/mail/ui/AbstractConversationWebViewClient;
.source "EmlMessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/EmlMessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmlWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/EmlMessageViewFragment;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/EmlMessageViewFragment;Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    .line 92
    invoke-direct {p0, p2}, Lcom/android/mail/ui/AbstractConversationWebViewClient;-><init>(Lcom/android/mail/providers/Account;)V

    .line 93
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v9, 0x1

    .line 100
    #v9=(One);
    iget-object v5, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/browse/EmlMessageViewFragment;->isAdded()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 101
    invoke-static {}, Lcom/android/mail/browse/EmlMessageViewFragment;->access$200()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    const-string v6, "ignoring EMLVF.onPageFinished, url=%s fragment=%s"

    #v6=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object p2, v7, v8

    iget-object v8, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v8=(Reference);
    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 105
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v5, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/browse/EmlMessageViewFragment;->access$300(Lcom/android/mail/browse/EmlMessageViewFragment;)Lcom/android/mail/ui/SecureConversationViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/ui/SecureConversationViewController;->dismissLoadingStatus()V

    .line 107
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 109
    .local v3, emailAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v3=(Reference);
    iget-object v5, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    iget-object v6, v5, Lcom/android/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    #v6=(Reference);
    monitor-enter v6

    .line 110
    :try_start_0
    iget-object v5, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    iget-object v5, v5, Lcom/android/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 111
    .local v1, cacheCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Address;>;"
    #v1=(Reference);
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v4=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Address;

    .line 113
    .local v0, addr:Lcom/android/mail/providers/Address;
    invoke-virtual {v0}, Lcom/android/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v0           #addr:Lcom/android/mail/providers/Address;
    .end local v1           #cacheCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Address;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Uninit);v1=(Conflicted);v4=(Uninit);
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 115
    .restart local v1       #cacheCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Address;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Conflicted);v1=(Reference);v4=(Reference);v5=(Boolean);
    iget-object v5, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/browse/EmlMessageViewFragment;->getContactInfoSource()Lcom/android/mail/ui/ContactLoaderCallbacks;

    move-result-object v2

    .line 116
    .local v2, callbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;
    #v2=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/mail/ui/ContactLoaderCallbacks;->setSenders(Ljava/util/Set;)V

    .line 117
    iget-object v5, p0, Lcom/android/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v5}, Lcom/android/mail/browse/EmlMessageViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v9, v6, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method
