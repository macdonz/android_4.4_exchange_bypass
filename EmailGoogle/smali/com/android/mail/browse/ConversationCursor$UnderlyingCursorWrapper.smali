.class Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
.super Lcom/android/mail/content/ThreadSafeCursorWrapper;
.source "ConversationCursor.java"

# interfaces
.implements Lcom/android/mail/utils/DrawIdler$IdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnderlyingCursorWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;,
        Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
    }
.end annotation


# instance fields
.field private mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

.field private mCachePos:I

.field private mCachingEnabled:Z

.field private final mConversationIdPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationUriPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCursorUpdateObserver:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

.field private mCursorUpdated:Z

.field private mDrawState:I

.field private final mRowCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateObserverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 19
    .parameter "result"

    .prologue
    .line 374
    invoke-direct/range {p0 .. p1}, Lcom/android/mail/content/ThreadSafeCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 346
    #p0=(Reference);
    const/4 v13, 0x1

    #v13=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mDrawState:I

    .line 360
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachingEnabled:Z

    .line 362
    const/4 v13, 0x0

    #v13=(Null);
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    .line 371
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z

    .line 378
    new-instance v13, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    #v13=(UninitRef);
    new-instance v14, Landroid/os/Handler;

    #v14=(UninitRef);
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    #v15=(Reference);
    invoke-direct {v14, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #v14=(Reference);
    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;-><init>(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Landroid/os/Handler;)V

    #v13=(Reference);
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    .line 380
    if-eqz p1, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 382
    const/4 v13, 0x1

    #v13=(One);
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    .line 385
    :cond_0
    #v13=(Conflicted);
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 390
    .local v10, start:J
    #v10=(LongLo);v11=(LongHi);
    const-string v13, "blockingCaching"

    #v13=(Reference);
    invoke-static {v13}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 391
    invoke-super/range {p0 .. p0}, Lcom/android/mail/content/ThreadSafeCursorWrapper;->moveToFirst()Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_5

    .line 392
    invoke-super/range {p0 .. p0}, Lcom/android/mail/content/ThreadSafeCursorWrapper;->getCount()I

    move-result v4

    .line 393
    .local v4, count:I
    #v4=(Integer);
    new-array v1, v4, [Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 394
    .local v1, cache:[Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
    #v1=(Reference);
    const/4 v7, 0x0

    .line 396
    .local v7, i:I
    #v7=(Null);
    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v12

    .line 397
    .local v12, uriPositionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    #v12=(Reference);
    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v8

    .line 403
    .local v8, idPositionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v7=(Integer);v8=(Reference);v9=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    const/4 v13, 0x1

    #v13=(One);
    move-object/from16 v0, p0

    invoke-super {v0, v13}, Lcom/android/mail/content/ThreadSafeCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, innerUriString:Ljava/lang/String;
    #v9=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    move-object/from16 v0, p0

    invoke-super {v0, v13}, Lcom/android/mail/content/ThreadSafeCursorWrapper;->getLong(I)J

    move-result-wide v2

    .line 407
    .local v2, convId:J
    #v2=(LongLo);v3=(LongHi);
    invoke-interface {v12, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_2

    .line 408
    const-string v13, "ConvCursor"

    #v13=(Reference);
    const-string v14, "Inserting duplicate conversation uri key: %s. Cursor position: %d, iteration: %d map position: %d"

    const/4 v15, 0x4

    #v15=(PosByte);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    const/16 v16, 0x0

    #v16=(Null);
    aput-object v9, v15, v16

    const/16 v16, 0x1

    #v16=(One);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v17

    #v17=(Integer);
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    #v17=(Reference);
    aput-object v17, v15, v16

    const/16 v16, 0x2

    #v16=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 413
    :cond_2
    #v13=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    #v13=(Reference);
    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_3

    .line 414
    const-string v13, "ConvCursor"

    #v13=(Reference);
    const-string v14, "Inserting duplicate conversation id key: %dCursor position: %d, iteration: %d map position: %d"

    const/4 v15, 0x4

    #v15=(PosByte);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    const/16 v16, 0x0

    #v16=(Null);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    #v17=(Reference);
    aput-object v17, v15, v16

    const/16 v16, 0x1

    #v16=(One);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v17

    #v17=(Integer);
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    #v17=(Reference);
    aput-object v17, v15, v16

    const/16 v16, 0x2

    #v16=(PosByte);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 420
    :cond_3
    #v13=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    #v13=(Reference);
    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v13, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    #v13=(UninitRef);
    const/4 v14, 0x0

    #v14=(Null);
    invoke-direct {v13, v9, v14}, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;-><init>(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)V

    #v13=(Reference);
    aput-object v13, v1, v7

    .line 426
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v7}, Lcom/android/mail/content/ThreadSafeCursorWrapper;->moveToPosition(I)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_1

    .line 428
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v13

    #v13=(Integer);
    if-ne v13, v4, :cond_4

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v13

    if-eq v13, v4, :cond_6

    .line 430
    :cond_4
    new-instance v13, Ljava/lang/IllegalStateException;

    #v13=(UninitRef);
    new-instance v14, Ljava/lang/StringBuilder;

    #v14=(UninitRef);
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #v14=(Reference);
    const-string v15, "Unexpected map sizes: cursorN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " uriN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v15

    #v15=(Integer);
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " idN="

    #v15=(Reference);
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    #v15=(Integer);
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v13=(Reference);
    throw v13

    .line 440
    .end local v1           #cache:[Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
    .end local v2           #convId:J
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v8           #idPositionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v9           #innerUriString:Ljava/lang/String;
    .end local v12           #uriPositionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v12=(Uninit);v13=(Boolean);v15=(Reference);v16=(Uninit);v17=(Uninit);
    const/4 v4, 0x0

    .line 441
    .restart local v4       #count:I
    #v4=(Null);
    const/4 v13, 0x0

    #v13=(Null);
    new-array v1, v13, [Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 442
    .restart local v1       #cache:[Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
    #v1=(Reference);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 443
    .restart local v12       #uriPositionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    #v12=(Reference);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 445
    .restart local v8       #idPositionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_6
    #v2=(Conflicted);v3=(Conflicted);v4=(Integer);v7=(Conflicted);v8=(Reference);v9=(Conflicted);v13=(Integer);v16=(Conflicted);v17=(Conflicted);
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    #v13=(Reference);
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationUriPositionMap:Ljava/util/Map;

    .line 446
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationIdPositionMap:Ljava/util/Map;

    .line 448
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    .line 449
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 450
    .local v5, end:J
    #v5=(LongLo);v6=(LongHi);
    const-string v13, "ConvCursor"

    const-string v14, "*** ConversationCursor pre-loading took %sms n=%s"

    const/4 v15, 0x2

    #v15=(PosByte);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    const/16 v16, 0x0

    #v16=(Null);
    sub-long v17, v5, v10

    #v17=(LongLo);v18=(LongHi);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    #v17=(Reference);
    aput-object v17, v15, v16

    const/16 v16, 0x1

    #v16=(One);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 453
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 457
    const/4 v13, 0x0

    #v13=(Null);
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    .line 458
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    iget v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$002(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iput p1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->notifyConversationUIPositionChange()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z

    return p1
.end method

.method private notifyConversationUIPositionChange()V
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v0

    #v0=(Integer);
    invoke-static {p0, v0}, Lcom/android/mail/utils/Utils;->notifyCursorUIPositionChange(Landroid/database/Cursor;I)Z

    .line 527
    return-void
.end method

.method private pauseCaching()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 479
    #v5=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 480
    const-string v0, "ConvCursor"

    const-string v1, "Cancelling caching startPos=%s pos=%s"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->access$400(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)I

    move-result v3

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    const/4 v3, 0x1

    #v3=(One);
    iget v4, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 482
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->cancel(Z)Z

    .line 483
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .line 485
    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method private resumeCaching()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 466
    #v0=(Null);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "unexpected existing task: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 470
    :cond_0
    #v0=(Null);v2=(Uninit);
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachingEnabled:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v2

    #v2=(Integer);
    if-ge v1, v2, :cond_1

    .line 471
    new-instance v1, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    #v1=(UninitRef);
    iget v2, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    invoke-direct {v1, p0, v2}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;-><init>(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .line 472
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v2=(Reference);
    new-array v0, v0, [Ljava/lang/Void;

    #v0=(Reference);
    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 473
    const/4 v0, 0x1

    .line 475
    :cond_1
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0
.end method


# virtual methods
.method public cacheConversation(Lcom/android/mail/providers/Conversation;)V
    .locals 3
    .parameter "conversation"

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v2

    #v2=(Integer);
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 520
    .local v0, rowData:Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
    iget-object v1, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/android/mail/providers/Conversation;

    if-nez v1, :cond_0

    .line 521
    iput-object p1, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/android/mail/providers/Conversation;

    .line 523
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->stopCaching()V

    .line 546
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->disableUpdateNotifications()V

    .line 547
    invoke-super {p0}, Lcom/android/mail/content/ThreadSafeCursorWrapper;->close()V

    .line 548
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationUriPositionMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public conversationIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationIdPositionMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public disableUpdateNotifications()V
    .locals 2

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    .line 541
    :cond_0
    #v0=(Boolean);v1=(Conflicted);
    return-void
.end method

.method public getConversation()Lcom/android/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v1

    #v1=(Integer);
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    iget-object v0, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method public getInnerUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v1

    #v1=(Integer);
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    iget-object v0, v0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->innerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 3
    .parameter "conversationId"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationIdPositionMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    .line 502
    .local v0, position:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 2
    .parameter "conversationUri"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationUriPositionMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    .line 507
    .local v0, position:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_0
.end method

.method public isDataUpdated()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z

    #v0=(Boolean);
    return v0
.end method

.method public onStateChanged(Lcom/android/mail/utils/DrawIdler;I)V
    .locals 7
    .parameter "idler"
    .parameter "newState"

    .prologue
    .line 552
    iget v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mDrawState:I

    .line 553
    .local v0, oldState:I
    #v0=(Integer);
    iput p2, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mDrawState:I

    .line 554
    if-eq v0, p2, :cond_0

    .line 555
    if-nez p2, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->resumeCaching()Z

    move-result v1

    .line 558
    .local v1, resumed:Z
    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 559
    const-string v2, "ConvCursor"

    #v2=(Reference);
    const-string v3, "Resuming caching, pos=%s idler=%s"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget v6, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    const/4 v5, 0x1

    #v5=(One);
    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 566
    .end local v1           #resumed:Z
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 563
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->pauseCaching()V

    goto :goto_0
.end method

.method public stopCaching()V
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->pauseCaching()V

    .line 489
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachingEnabled:Z

    .line 490
    return-void
.end method
