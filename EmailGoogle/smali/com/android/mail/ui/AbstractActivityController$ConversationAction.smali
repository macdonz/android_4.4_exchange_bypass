.class public Lcom/android/mail/ui/AbstractActivityController$ConversationAction;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/android/mail/ui/DestructiveAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationAction"
.end annotation


# instance fields
.field private final mAction:I

.field private mCompleted:Z

.field private final mIsSelectedSet:Z

.field private final mTarget:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/AbstractActivityController;ILjava/util/Collection;Z)V
    .locals 1
    .parameter
    .parameter "action"
    .parameter
    .parameter "isBatch"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2768
    .local p3, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2769
    #p0=(Reference);
    iput p2, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    .line 2770
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    .line 2771
    iput-boolean p4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z

    .line 2772
    return-void
.end method

.method static synthetic access$500(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2748
    iget v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$700(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2748
    iget-boolean v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z

    #v0=(Boolean);
    return v0
.end method

.method private declared-synchronized isPerformed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2873
    #v0=(One);
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 2877
    :goto_0
    #v0=(Boolean);
    monitor-exit p0

    return v0

    .line 2876
    :cond_0
    #v0=(One);
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2877
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 2873
    :catchall_0
    #v0=(One);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public performAction()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    #v10=(PosByte);
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    .line 2780
    #v8=(Null);
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->isPerformed()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 2866
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 2783
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    const/16 v5, 0x4000

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v3

    .line 2786
    .local v3, undoEnabled:Z
    #v3=(Boolean);
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-static {v4, v5}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 2787
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "ConversationAction.performAction():\nmTarget=%s\nCurrent=%s"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/providers/Conversation;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/android/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2792
    :cond_2
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    if-nez v4, :cond_3

    .line 2793
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string v5, "null ConversationCursor in ConversationAction.performAction():\nmTarget=%s\nCurrent=%s"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/providers/Conversation;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/android/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2799
    :cond_3
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    #v4=(Integer);
    const v5, 0x7f08016a

    #v5=(Integer);
    if-ne v4, v5, :cond_6

    .line 2800
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Archiving"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2801
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->archive(Ljava/util/Collection;)I

    .line 2853
    :cond_4
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-eqz v3, :cond_5

    .line 2854
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0}, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;-><init>(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)V

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/mail/ui/AbstractActivityController;->access$800(Lcom/android/mail/ui/AbstractActivityController;)I

    move-result v6

    #v6=(Integer);
    int-to-long v6, v6

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2862
    :cond_5
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 2863
    iget-boolean v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 2864
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/ui/AbstractActivityController;->access$900(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationSelectionSet;->clear()V

    goto/16 :goto_0

    .line 2802
    :cond_6
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Integer);v5=(Integer);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f08016c

    if-ne v4, v5, :cond_7

    .line 2803
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Deleting"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2804
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    .line 2805
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v5, 0x800

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 2806
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 2808
    :cond_7
    #v3=(Boolean);v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f080174

    if-ne v4, v5, :cond_9

    .line 2809
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Muting"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2810
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v5, 0x100

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_8

    .line 2811
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    #v0=(Conflicted);v2=(Reference);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2812
    .local v0, c:Lcom/android/mail/providers/Conversation;
    iput-boolean v9, v0, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_2

    .line 2815
    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    #v0=(Conflicted);v2=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->mute(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 2816
    :cond_9
    #v0=(Uninit);v2=(Uninit);v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f080176

    if-ne v4, v5, :cond_a

    .line 2817
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Reporting spam"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2818
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->reportSpam(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 2819
    :cond_a
    #v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f080177

    if-ne v4, v5, :cond_b

    .line 2820
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Marking not spam"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2821
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->reportNotSpam(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 2822
    :cond_b
    #v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f080178

    if-ne v4, v5, :cond_c

    .line 2823
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Reporting phishing"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2824
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->reportPhishing(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 2825
    :cond_c
    #v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f08017f

    if-ne v4, v5, :cond_d

    .line 2826
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Removing star"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2828
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    const-string v6, "starred"

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/mail/browse/ConversationCursor;->updateBoolean(Ljava/util/Collection;Ljava/lang/String;Z)I

    goto/16 :goto_1

    .line 2830
    :cond_d
    #v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f080173

    if-ne v4, v5, :cond_f

    .line 2831
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Marking not-important"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2834
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/android/mail/providers/Folder;->isImportantOnly()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_e

    .line 2835
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    #v1=(Conflicted);v2=(Reference);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Conversation;

    .line 2836
    .local v1, conv:Lcom/android/mail/providers/Conversation;
    iput-boolean v9, v1, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_3

    .line 2839
    .end local v1           #conv:Lcom/android/mail/providers/Conversation;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_e
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    const-string v6, "priority"

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/mail/browse/ConversationCursor;->updateInt(Ljava/util/Collection;Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 2841
    :cond_f
    #v1=(Uninit);v2=(Uninit);v4=(Integer);v5=(Integer);v6=(Conflicted);
    iget v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f08016d

    if-ne v4, v5, :cond_4

    .line 2842
    sget-object v4, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Discarding draft messages"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2844
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/android/mail/providers/Folder;->isDraft()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_10

    .line 2845
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    #v1=(Conflicted);v2=(Reference);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Conversation;

    .line 2846
    .restart local v1       #conv:Lcom/android/mail/providers/Conversation;
    iput-boolean v9, v1, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_4

    .line 2849
    .end local v1           #conv:Lcom/android/mail/providers/Conversation;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_10
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationCursor;->discardDrafts(Ljava/util/Collection;)I

    .line 2851
    const/4 v3, 0x0

    #v3=(Null);
    goto/16 :goto_1
.end method
