.class public abstract Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;
.super Landroid/os/HandlerThread;
.source "PhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PhotoLoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/mail/photomanager/PhotoManager;


# direct methods
.method public constructor <init>(Lcom/android/mail/photomanager/PhotoManager;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "resolver"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    .line 651
    const-string v0, "PhotoLoader"

    #v0=(Reference);
    const/16 v1, 0xa

    #v1=(PosByte);
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 652
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 653
    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 23

    .prologue
    .line 701
    const-string v17, "pre processing"

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 702
    new-instance v8, Ljava/util/HashSet;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 703
    .local v8, loadRequests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/photomanager/PhotoManager$Request;>;"
    #v8=(Reference);
    new-instance v3, Ljava/util/HashSet;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 705
    .local v3, decodeRequests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/photomanager/PhotoManager$Request;>;"
    #v3=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mail/photomanager/PhotoManager;->access$100(Lcom/android/mail/photomanager/PhotoManager;)Ljava/util/Map;

    move-result-object v18

    #v18=(Reference);
    monitor-enter v18

    .line 706
    :try_start_0
    new-instance v14, Ljava/util/PriorityQueue;

    #v14=(UninitRef);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mail/photomanager/PhotoManager;->access$100(Lcom/android/mail/photomanager/PhotoManager;)Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 707
    .local v14, requests:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/android/mail/photomanager/PhotoManager$Request;>;"
    #v14=(Reference);
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, batchCount:I
    #v1=(Null);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->getMaxBatchCount()I

    move-result v9

    .line 711
    .local v9, maxBatchCount:I
    :cond_0
    #v0=(Conflicted);v1=(Integer);v6=(Conflicted);v9=(Integer);v10=(Conflicted);v13=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-virtual {v14}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v17

    #v17=(Boolean);
    if-nez v17, :cond_3

    .line 712
    invoke-virtual {v14}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 713
    .local v13, request:Lcom/android/mail/photomanager/PhotoManager$Request;
    invoke-static {}, Lcom/android/mail/photomanager/PhotoManager;->access$200()Landroid/util/LruCache;

    move-result-object v17

    #v17=(Reference);
    invoke-virtual {v13}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    invoke-virtual/range {v17 .. v18}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;

    .line 715
    .local v6, holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    #v0=(Reference);
    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    iget-boolean v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    #v0=(Boolean);
    move/from16 v17, v0

    #v17=(Boolean);
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    move-object/from16 v17, v0

    #v17=(Reference);
    iget v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->width:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    iget v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->height:I

    move/from16 v19, v0

    #v19=(Integer);
    iget-object v0, v13, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    iget-object v0, v13, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v21, v0

    #v21=(Reference);
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    invoke-virtual/range {v17 .. v21}, Lcom/android/mail/photomanager/PhotoManager;->isSizeCompatible(IIII)Z

    move-result v17

    #v17=(Boolean);
    if-nez v17, :cond_4

    .line 717
    :cond_1
    #v0=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v1, v1, 0x1

    .line 721
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 722
    .local v10, msg:Landroid/os/Message;
    #v10=(Reference);
    const/16 v17, 0x3

    #v17=(PosByte);
    move/from16 v0, v17

    #v0=(PosByte);
    iput v0, v10, Landroid/os/Message;->what:I

    .line 723
    invoke-virtual {v13}, Lcom/android/mail/photomanager/PhotoManager$Request;->hashCode()I

    move-result v17

    #v17=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 724
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/mail/photomanager/PhotoManager;->access$300(Lcom/android/mail/photomanager/PhotoManager;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    .end local v10           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    #v10=(Conflicted);
    iget v0, v13, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v13, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    .line 733
    if-lez v9, :cond_0

    if-lt v1, v9, :cond_0

    .line 737
    .end local v6           #holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    .end local v13           #request:Lcom/android/mail/photomanager/PhotoManager$Request;
    :cond_3
    #v0=(Conflicted);v6=(Conflicted);v13=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 739
    const-string v17, "load photos"

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v8}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->loadPhotos(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v11

    .line 742
    .local v11, photosMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;>;"
    #v11=(Reference);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 750
    const-string v17, "post processing"

    invoke-static/range {v17 .. v17}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 751
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    #v2=(Conflicted);v7=(Reference);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/String;

    .line 760
    .local v2, cacheKey:Ljava/lang/String;
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/mail/photomanager/PhotoManager;->access$500(Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;)V

    goto :goto_1

    .line 707
    .end local v1           #batchCount:I
    .end local v2           #cacheKey:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #maxBatchCount:I
    .end local v11           #photosMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;>;"
    .end local v14           #requests:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/android/mail/photomanager/PhotoManager$Request;>;"
    :catchall_0
    #v1=(Uninit);v2=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Conflicted);v18=(Reference);v19=(Uninit);v20=(Uninit);v21=(Uninit);
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 728
    .restart local v1       #batchCount:I
    .restart local v6       #holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    .restart local v9       #maxBatchCount:I
    .restart local v13       #request:Lcom/android/mail/photomanager/PhotoManager$Request;
    .restart local v14       #requests:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/android/mail/photomanager/PhotoManager$Request;>;"
    :cond_4
    #v0=(Integer);v1=(Integer);v6=(Reference);v9=(Integer);v10=(Conflicted);v13=(Reference);v14=(Reference);v17=(Boolean);v18=(Integer);v19=(Integer);v20=(Integer);v21=(Integer);
    invoke-static {}, Lcom/android/mail/photomanager/PhotoManager;->access$400()Landroid/util/LruCache;

    move-result-object v17

    #v17=(Reference);
    iget-object v0, v13, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-virtual/range {v17 .. v18}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_2

    .line 729
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 763
    .end local v6           #holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    .end local v13           #request:Lcom/android/mail/photomanager/PhotoManager$Request;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #photosMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;>;"
    :cond_5
    #v2=(Conflicted);v6=(Conflicted);v7=(Reference);v11=(Reference);v13=(Conflicted);v17=(Boolean);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v22=(Conflicted);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    #v12=(Reference);
    check-cast v12, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 764
    .local v12, r:Lcom/android/mail/photomanager/PhotoManager$Request;
    invoke-static {}, Lcom/android/mail/photomanager/PhotoManager;->access$400()Landroid/util/LruCache;

    move-result-object v17

    #v17=(Reference);
    iget-object v0, v12, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-virtual/range {v17 .. v18}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_6

    .line 768
    invoke-virtual {v12}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 769
    .local v2, cacheKey:Ljava/lang/Object;
    #v2=(Reference);
    invoke-static {}, Lcom/android/mail/photomanager/PhotoManager;->access$200()Landroid/util/LruCache;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;

    .line 770
    .restart local v6       #holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    if-eqz v6, :cond_6

    iget-object v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    iget-boolean v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    #v0=(Boolean);
    move/from16 v17, v0

    #v17=(Boolean);
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    move-object/from16 v17, v0

    #v17=(Reference);
    iget v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->width:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    iget v0, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->height:I

    move/from16 v19, v0

    #v19=(Integer);
    iget-object v0, v12, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    iget-object v0, v12, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v21, v0

    #v21=(Reference);
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    invoke-virtual/range {v17 .. v21}, Lcom/android/mail/photomanager/PhotoManager;->isSizeCompatible(IIII)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_6

    .line 775
    iget-object v0, v12, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v0=(Integer);
    move/from16 v16, v0

    .line 776
    .local v16, w:I
    #v16=(Integer);
    iget-object v0, v12, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    .line 777
    .local v5, h:I
    #v5=(Integer);
    iget-object v15, v6, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    .line 779
    .local v15, src:[B
    #v15=(Reference);
    if-eqz v16, :cond_7

    if-nez v5, :cond_8

    .line 780
    :cond_7
    const-string v17, "PhotoManager"

    new-instance v18, Ljava/lang/Error;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/lang/Error;-><init>()V

    #v18=(Reference);
    const-string v19, "bad dimensions for request=%s w/h=%s/%s"

    #v19=(Reference);
    const/16 v20, 0x3

    #v20=(PosByte);
    move/from16 v0, v20

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    const/16 v21, 0x0

    #v21=(Null);
    aput-object v12, v20, v21

    const/16 v21, 0x1

    #v21=(One);
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    #v22=(Reference);
    aput-object v22, v20, v21

    const/16 v21, 0x2

    #v21=(PosByte);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v17 .. v20}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 784
    :cond_8
    #v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Integer);v22=(Conflicted);
    move/from16 v0, v16

    #v0=(Integer);
    invoke-static {v15, v0, v5}, Lcom/android/mail/photomanager/BitmapUtil;->decodeByteArrayWithCenterCrop([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 791
    .local v4, decoded:Landroid/graphics/Bitmap;
    #v4=(Reference);
    if-eqz v4, :cond_6

    .line 792
    iget-object v0, v12, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v0=(Reference);
    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/mail/photomanager/PhotoManager;->cacheBitmap(Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 795
    .end local v2           #cacheKey:Ljava/lang/Object;
    .end local v4           #decoded:Landroid/graphics/Bitmap;
    .end local v5           #h:I
    .end local v6           #holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    .end local v12           #r:Lcom/android/mail/photomanager/PhotoManager$Request;
    .end local v15           #src:[B
    .end local v16           #w:I
    :cond_9
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Boolean);v21=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 797
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/mail/photomanager/PhotoManager;->access$300(Lcom/android/mail/photomanager/PhotoManager;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    #v18=(PosByte);
    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 798
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 661
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 663
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method protected getMaxBatchCount()I
    .locals 1

    .prologue
    .line 697
    const/4 v0, -0x1

    #v0=(Byte);
    return v0
.end method

.method protected getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 681
    iget v0, p1, Landroid/os/Message;->what:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 686
    :goto_0
    const/4 v0, 0x1

    #v0=(One);
    return v0

    .line 683
    :pswitch_0
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 681
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract loadPhotos(Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/photomanager/PhotoManager$Request;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;",
            ">;"
        }
    .end annotation
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->ensureHandler()V

    .line 672
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    return-void
.end method
