.class public Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DirectoryFilter"
.end annotation


# instance fields
.field private mLimit:I

.field private final mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V
    .locals 0
    .parameter
    .parameter "params"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 352
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 353
    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v0=(Integer);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter "constraint"

    .prologue
    .line 369
    new-instance v1, Landroid/widget/Filter$FilterResults;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 370
    .local v1, results:Landroid/widget/Filter$FilterResults;
    #v1=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 371
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    #v2=(Reference);
    const/4 v0, 0x0

    .line 381
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    #v0=(Null);
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->getLimit()I

    move-result v4

    #v4=(Integer);
    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    #v5=(Reference);
    iget-wide v5, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v3, p1, v4, v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$200(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 383
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 384
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 385
    new-instance v3, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;)V

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    #v3=(Reference);
    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 389
    :cond_1
    #v3=(Conflicted);v4=(Integer);v5=(Reference);v6=(LongHi);
    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 394
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 395
    const/4 v3, 0x1

    #v3=(One);
    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 404
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    :cond_3
    #v0=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 7
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 413
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1400(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeDelayedLoadMessage()V

    .line 418
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$800(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 419
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    #v3=(Integer);
    if-lez v3, :cond_1

    .line 421
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #v1=(Reference);
    check-cast v1, Ljava/util/ArrayList;

    .line 424
    .local v1, tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    .line 425
    .local v2, tempEntry:Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    #v3=(Boolean);
    iget-object v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1100(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$300(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    #v3=(Byte);v4=(LongHi);v5=(LongLo);v6=(LongHi);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 431
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    .end local v2           #tempEntry:Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1510(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    .line 432
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1500(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_2

    .line 437
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1400(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 442
    :cond_2
    #v3=(Conflicted);
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    #v3=(Integer);
    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1500(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v3

    #v3=(Integer);
    if-nez v3, :cond_4

    .line 444
    :cond_3
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    .line 449
    :cond_4
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$400(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1300(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 450
    return-void
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method
