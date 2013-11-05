.class Lcom/android/mail/compose/ComposeActivity$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/compose/ComposeActivity;->sendOrSave(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/compose/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2810
    iput-object p1, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/android/mail/providers/Message;
    .locals 2

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/compose/ComposeActivity;->access$400(Lcom/android/mail/compose/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    monitor-enter v1

    .line 2852
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    invoke-static {v0}, Lcom/android/mail/compose/ComposeActivity;->access$700(Lcom/android/mail/compose/ComposeActivity;)Lcom/android/mail/providers/Message;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initializeSendOrSave(Lcom/android/mail/compose/ComposeActivity$SendOrSaveTask;)V
    .locals 5
    .parameter

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    iget-object v1, v0, Lcom/android/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    #v1=(Reference);
    monitor-enter v1

    .line 2817
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v0, v0, Lcom/android/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2818
    #v0=(Integer);
    if-nez v0, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v3=(Reference);
    const-class v4, Lcom/android/mail/compose/EmptyService;

    #v4=(Reference);
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v2=(Reference);
    invoke-virtual {v0, v2}, Lcom/android/mail/compose/ComposeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2824
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2825
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$300()Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2827
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$300()Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/android/mail/compose/ComposeActivity$SendOrSaveTask;)V

    .line 2829
    :cond_1
    return-void

    .line 2825
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    :try_start_1
    #v0=(Reference);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMessageIdAllocated(Lcom/android/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/android/mail/providers/Message;)V
    .locals 5
    .parameter "sendOrSaveMessage"
    .parameter "message"

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/compose/ComposeActivity;->access$400(Lcom/android/mail/compose/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    monitor-enter v1

    .line 2835
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v2, p1, Lcom/android/mail/compose/ComposeActivity$SendOrSaveMessage;->mAccount:Lcom/android/mail/providers/ReplyFromAccount;

    #v2=(Reference);
    invoke-static {v0, v2}, Lcom/android/mail/compose/ComposeActivity;->access$502(Lcom/android/mail/compose/ComposeActivity;Lcom/android/mail/providers/ReplyFromAccount;)Lcom/android/mail/providers/ReplyFromAccount;

    .line 2836
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-wide v2, p2, Lcom/android/mail/providers/Message;->id:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v2, v3}, Lcom/android/mail/compose/ComposeActivity;->access$602(Lcom/android/mail/compose/ComposeActivity;J)J

    .line 2837
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    invoke-static {v0, p2}, Lcom/android/mail/compose/ComposeActivity;->access$702(Lcom/android/mail/compose/ComposeActivity;Lcom/android/mail/providers/Message;)Lcom/android/mail/providers/Message;

    .line 2838
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2839
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/compose/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result v2

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/compose/ComposeActivity;->access$600(Lcom/android/mail/compose/ComposeActivity;)J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    invoke-static {v0}, Lcom/android/mail/compose/ComposeActivity;->access$900(Lcom/android/mail/compose/ComposeActivity;)V

    .line 2843
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$300()Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2845
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$300()Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;->notifyMessageIdAllocated(Lcom/android/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/android/mail/providers/Message;)V

    .line 2847
    :cond_1
    return-void

    .line 2843
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendOrSaveFinished(Lcom/android/mail/compose/ComposeActivity$SendOrSaveTask;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/compose/ComposeActivity;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 2860
    invoke-static {}, Lcom/android/mail/providers/MailAppProvider;->getInstance()Lcom/android/mail/providers/MailAppProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/compose/ComposeActivity;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/MailAppProvider;->setLastSentFromAccount(Ljava/lang/String;)V

    .line 2862
    :cond_0
    #v1=(Conflicted);
    if-eqz p2, :cond_3

    .line 2864
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    invoke-static {v0}, Lcom/android/mail/compose/ComposeActivity;->access$1000(Lcom/android/mail/compose/ComposeActivity;)V

    .line 2874
    :goto_0
    #v2=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v1, v0, Lcom/android/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    #v1=(Reference);
    monitor-enter v1

    .line 2876
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v0, v0, Lcom/android/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2877
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    iget-object v0, v0, Lcom/android/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2878
    #v0=(Integer);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2880
    if-nez v0, :cond_1

    .line 2882
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v0=(Reference);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    #v2=(Reference);
    const-class v3, Lcom/android/mail/compose/EmptyService;

    #v3=(Reference);
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/compose/ComposeActivity;->stopService(Landroid/content/Intent;)Z

    .line 2884
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$300()Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 2885
    invoke-static {}, Lcom/android/mail/compose/ComposeActivity;->access$300()Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/mail/compose/ComposeActivity$SendOrSaveCallback;->sendOrSaveFinished(Lcom/android/mail/compose/ComposeActivity$SendOrSaveTask;Z)V

    .line 2887
    :cond_2
    return-void

    .line 2869
    :cond_3
    #v1=(Conflicted);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$1;->this$0:Lcom/android/mail/compose/ComposeActivity;

    const v1, 0x7f0a0099

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2878
    :catchall_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    move-exception v0

    :try_start_1
    #v0=(Reference);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
