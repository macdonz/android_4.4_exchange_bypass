.class public Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;
.super Lcom/android/mail/ui/AbstractConversationWebViewClient;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    .line 1061
    invoke-direct {p0, p2}, Lcom/android/mail/ui/AbstractConversationWebViewClient;-><init>(Lcom/android/mail/providers/Account;)V

    .line 1062
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 13
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1069
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationViewFragment;->isAdded()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v5=(Reference);
    iget-boolean v5, v5, Lcom/android/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1070
    :cond_0
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    const-string v6, "ignoring CVF.onPageFinished, url=%s fragment=%s"

    #v6=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object p2, v7, v8

    const/4 v8, 0x1

    #v8=(One);
    iget-object v9, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1096
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(PosByte);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 1075
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    const-string v6, "IN CVF.onPageFinished, url=%s fragment=%s wv=%s t=%sms"

    #v6=(Reference);
    const/4 v7, 0x4

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object p2, v7, v8

    const/4 v8, 0x1

    #v8=(One);
    iget-object v9, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v9=(Reference);
    aput-object v9, v7, v8

    const/4 v8, 0x2

    #v8=(PosByte);
    aput-object p1, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    iget-object v11, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v11=(Reference);
    invoke-static {v11}, Lcom/android/mail/ui/ConversationViewFragment;->access$500(Lcom/android/mail/ui/ConversationViewFragment;)J

    move-result-wide v11

    #v11=(LongLo);v12=(LongHi);
    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1079
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v5}, Lcom/android/mail/ui/ConversationViewFragment;->access$600(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 1081
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v5}, Lcom/android/mail/ui/ConversationViewFragment;->access$700(Lcom/android/mail/ui/ConversationViewFragment;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 1082
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/ConversationViewFragment;->access$800(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 1085
    :cond_2
    #v5=(Conflicted);
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 1087
    .local v3, emailAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v3=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v5=(Reference);
    iget-object v6, v5, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAddressCache:Ljava/util/Map;

    monitor-enter v6

    .line 1088
    :try_start_0
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAddressCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1089
    .local v1, cacheCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Address;>;"
    #v1=(Reference);
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v4=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Address;

    .line 1091
    .local v0, addr:Lcom/android/mail/providers/Address;
    invoke-virtual {v0}, Lcom/android/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1089
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

    .line 1093
    .restart local v1       #cacheCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Address;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    #v0=(Conflicted);v1=(Reference);v4=(Reference);v5=(Boolean);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationViewFragment;->getContactInfoSource()Lcom/android/mail/ui/ContactLoaderCallbacks;

    move-result-object v2

    .line 1094
    .local v2, callbacks:Lcom/android/mail/ui/ContactLoaderCallbacks;
    #v2=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/mail/ui/ContactLoaderCallbacks;->setSenders(Ljava/util/Set;)V

    .line 1095
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x1

    #v6=(One);
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$ConversationWebViewClient;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/AbstractConversationWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
