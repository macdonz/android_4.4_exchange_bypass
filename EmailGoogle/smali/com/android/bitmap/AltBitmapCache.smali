.class public Lcom/android/bitmap/AltBitmapCache;
.super Lcom/android/bitmap/AltPooledCache;
.source "AltBitmapCache.java"

# interfaces
.implements Lcom/android/bitmap/BitmapCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/bitmap/AltPooledCache",
        "<",
        "Lcom/android/bitmap/DecodeTask$Request;",
        "Lcom/android/bitmap/ReusableBitmap;",
        ">;",
        "Lcom/android/bitmap/BitmapCache;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlocking:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/bitmap/AltBitmapCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "targetSizeBytes"
    .parameter "nonPooledFraction"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/bitmap/AltPooledCache;-><init>(IF)V

    .line 30
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/bitmap/AltBitmapCache;->mBlocking:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic offer(Lcom/android/bitmap/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/AltBitmapCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public offer(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 92
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/bitmap/AltPooledCache;->offer(Lcom/android/bitmap/Poolable;)V

    .line 95
    iget-object v0, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/AltBitmapCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public bridge synthetic poll()Lcom/android/bitmap/Poolable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/bitmap/AltBitmapCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public poll()Lcom/android/bitmap/ReusableBitmap;
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    #v2=(Reference);
    monitor-enter v2

    .line 69
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-super {p0}, Lcom/android/bitmap/AltPooledCache;->poll()Lcom/android/bitmap/Poolable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/bitmap/ReusableBitmap;

    .local v0, bitmap:Lcom/android/bitmap/ReusableBitmap;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/bitmap/AltBitmapCache;->mBlocking:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 73
    const-string v1, "sleep"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    iget-object v1, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    goto :goto_0

    .line 85
    .end local v0           #bitmap:Lcom/android/bitmap/ReusableBitmap;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0       #bitmap:Lcom/android/bitmap/ReusableBitmap;
    :cond_0
    :try_start_3
    #v0=(Reference);v1=(Conflicted);
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    return-object v0

    .line 81
    :catch_0
    #v1=(Reference);
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/bitmap/AltBitmapCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public setBlocking(Z)V
    .locals 2
    .parameter "blocking"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 46
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bitmap/AltBitmapCache;->mBlocking:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/bitmap/AltBitmapCache;->mBlocking:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 51
    :cond_0
    #v0=(Conflicted);
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic sizeOf(Lcom/android/bitmap/Poolable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/AltBitmapCache;->sizeOf(Lcom/android/bitmap/ReusableBitmap;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method protected sizeOf(Lcom/android/bitmap/ReusableBitmap;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/android/bitmap/ReusableBitmap;->getByteCount()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
