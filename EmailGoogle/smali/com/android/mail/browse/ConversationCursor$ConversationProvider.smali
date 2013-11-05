.class public abstract Lcom/android/mail/browse/ConversationCursor$ConversationProvider;
.super Landroid/content/ContentProvider;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConversationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field public static sUriPrefix:Ljava/lang/String;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field private mUndoDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUndoSequence:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1412
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1511
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    .line 1512
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mail/browse/ConversationCursor$ConversationProvider;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mail/browse/ConversationCursor$ConversationProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1412
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1509
    return-void
.end method


# virtual methods
.method addToUndoSequence(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 1515
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->access$1600()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 1516
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->access$1600()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    .line 1517
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1519
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    return-void
.end method

.method public apply(Ljava/util/Collection;Lcom/android/mail/browse/ConversationCursor;)I
    .locals 12
    .parameter
    .parameter "conversationCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/browse/ConversationCursor$ConversationOperation;",
            ">;",
            "Lcom/android/mail/browse/ConversationCursor;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1581
    .local p1, ops:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/browse/ConversationCursor$ConversationOperation;>;"
    new-instance v2, Ljava/util/HashMap;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1584
    .local v2, batchMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    #v2=(Reference);
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->access$1608()I

    .line 1587
    const/4 v8, 0x0

    .line 1588
    .local v8, recalibrateRequired:Z
    #v8=(Null);
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Reference);v6=(Conflicted);v8=(Boolean);v9=(Conflicted);v10=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;

    .line 1589
    .local v6, op:Lcom/android/mail/browse/ConversationCursor$ConversationOperation;
    invoke-static {v6}, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->access$2100(Lcom/android/mail/browse/ConversationCursor$ConversationOperation;)Landroid/net/Uri;

    move-result-object v10

    #v10=(Reference);
    invoke-static {v10}, Lcom/android/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 1590
    .local v9, underlyingUri:Landroid/net/Uri;
    #v9=(Reference);
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, authority:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/ArrayList;

    .line 1592
    .local v0, authOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v0, :cond_1

    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    .restart local v0       #authOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v0=(Reference);
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    :cond_1
    invoke-static {v6, v9}, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->access$2200(Lcom/android/mail/browse/ConversationCursor$ConversationOperation;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 1597
    .local v3, cpo:Landroid/content/ContentProviderOperation;
    #v3=(Reference);
    if-eqz v3, :cond_2

    .line 1598
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    :cond_2
    invoke-static {v6}, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->access$2300(Lcom/android/mail/browse/ConversationCursor$ConversationOperation;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    .line 1602
    const/4 v8, 0x1

    #v8=(One);
    goto :goto_0

    .line 1607
    .end local v0           #authOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v1           #authority:Ljava/lang/String;
    .end local v3           #cpo:Landroid/content/ContentProviderOperation;
    .end local v6           #op:Lcom/android/mail/browse/ConversationCursor$ConversationOperation;
    .end local v9           #underlyingUri:Landroid/net/Uri;
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v8=(Boolean);v9=(Conflicted);
    if-eqz v8, :cond_4

    .line 1608
    invoke-static {p2}, Lcom/android/mail/browse/ConversationCursor;->access$1900(Lcom/android/mail/browse/ConversationCursor;)V

    .line 1612
    :cond_4
    invoke-static {p2}, Lcom/android/mail/browse/ConversationCursor;->access$2000(Lcom/android/mail/browse/ConversationCursor;)V

    .line 1615
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->offUiThread()Z

    move-result v5

    .line 1616
    .local v5, notUiThread:Z
    #v5=(Boolean);
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    #v10=(Reference);
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    #v7=(Conflicted);v11=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 1617
    .restart local v1       #authority:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Ljava/util/ArrayList;

    .line 1618
    .local v7, opList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v5, :cond_5

    .line 1620
    :try_start_0
    iget-object v10, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    #v10=(Reference);
    invoke-virtual {v10, v1, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1621
    :catch_0
    #v10=(Conflicted);
    move-exception v10

    #v10=(Reference);
    goto :goto_1

    .line 1625
    :cond_5
    #v10=(Boolean);
    new-instance v10, Ljava/lang/Thread;

    #v10=(UninitRef);
    new-instance v11, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;

    #v11=(UninitRef);
    invoke-direct {v11, p0, v1, v7}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;-><init>(Lcom/android/mail/browse/ConversationCursor$ConversationProvider;Ljava/lang/String;Ljava/util/ArrayList;)V

    #v11=(Reference);
    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1637
    .end local v1           #authority:Ljava/lang/String;
    .end local v7           #opList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    #v1=(Conflicted);v7=(Conflicted);v10=(Boolean);v11=(Conflicted);
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->access$1600()I

    move-result v10

    #v10=(Integer);
    return v10

    .line 1622
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v7       #opList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    #v1=(Reference);v7=(Reference);v10=(Conflicted);
    move-exception v10

    #v10=(Reference);
    goto :goto_1
.end method

.method clearMostlyDead(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)Z
    .locals 2
    .parameter "uri"
    .parameter "conversationCursor"

    .prologue
    .line 1547
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, uriString:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p2, v0}, Lcom/android/mail/browse/ConversationCursor;->clearMostlyDead(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method commitMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 0
    .parameter "conv"
    .parameter "conversationCursor"

    .prologue
    .line 1543
    invoke-virtual {p2, p1}, Lcom/android/mail/browse/ConversationCursor;->commitMostlyDead(Lcom/android/mail/providers/Conversation;)V

    .line 1544
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1452
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "Unexpected call to ConversationProvider.delete"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
.end method

.method deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 3
    .parameter "uri"
    .parameter "conversationCursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1524
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, uriString:Ljava/lang/String;
    #v0=(Reference);
    const-string v1, "__deleted__"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-static {p2, v0, v1, v2}, Lcom/android/mail/browse/ConversationCursor;->access$1800(Lcom/android/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->addToUndoSequence(Landroid/net/Uri;)V

    .line 1527
    return-void
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1457
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1441
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1442
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->opInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 1425
    sput-object p0, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    .line 1426
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->AUTHORITY:Ljava/lang/String;

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "content://"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->sUriPrefix:Ljava/lang/String;

    .line 1428
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    .line 1429
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move-object v4, p4

    #v4=(Reference);
    move-object v5, p5

    #v5=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method setMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 2
    .parameter "conv"
    .parameter "conversationCursor"

    .prologue
    .line 1536
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 1537
    .local v0, uri:Landroid/net/Uri;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1538
    .local v1, uriString:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p2, v1, p1}, Lcom/android/mail/browse/ConversationCursor;->setMostlyDead(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)V

    .line 1539
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->addToUndoSequence(Landroid/net/Uri;)V

    .line 1540
    return-void
.end method

.method undeleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 3
    .parameter "uri"
    .parameter "conversationCursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1531
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1532
    .local v0, uriString:Ljava/lang/String;
    #v0=(Reference);
    const-string v1, "__deleted__"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-static {p2, v0, v1, v2}, Lcom/android/mail/browse/ConversationCursor;->access$1800(Lcom/android/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1533
    return-void
.end method

.method public undo(Lcom/android/mail/browse/ConversationCursor;)V
    .locals 3
    .parameter "conversationCursor"

    .prologue
    .line 1552
    iget v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    #v2=(Integer);
    if-nez v2, :cond_0

    .line 1566
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1556
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    .line 1557
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, p1}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->clearMostlyDead(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1558
    invoke-virtual {p0, v1, p1}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->undeleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 1561
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    #v1=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    .line 1562
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$1900(Lcom/android/mail/browse/ConversationCursor;)V

    .line 1565
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$2000(Lcom/android/mail/browse/ConversationCursor;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1447
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "Unexpected call to ConversationProvider.update"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
.end method

.method updateLocal(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "conversationCursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1570
    if-nez p2, :cond_1

    .line 1577
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 1573
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-static {p1}, Lcom/android/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1574
    .local v2, uriString:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 1575
    .local v0, columnName:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-static {p3, v2, v0, v3}, Lcom/android/mail/browse/ConversationCursor;->access$1800(Lcom/android/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
