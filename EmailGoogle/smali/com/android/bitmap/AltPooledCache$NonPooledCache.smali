.class Lcom/android/bitmap/AltPooledCache$NonPooledCache;
.super Landroid/support/v4/util/LruCache;
.source "AltPooledCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/AltPooledCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonPooledCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/AltPooledCache;


# direct methods
.method public constructor <init>(Lcom/android/bitmap/AltPooledCache;I)V
    .locals 0
    .parameter
    .parameter "maxSize"

    .prologue
    .line 201
    .local p0, this:Lcom/android/bitmap/AltPooledCache$NonPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>.NonPooledCache;"
    iput-object p1, p0, Lcom/android/bitmap/AltPooledCache$NonPooledCache;->this$0:Lcom/android/bitmap/AltPooledCache;

    .line 202
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 203
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/android/bitmap/AltPooledCache$NonPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>.NonPooledCache;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Lcom/android/bitmap/Poolable;,"TV;"
    iget-object v0, p0, Lcom/android/bitmap/AltPooledCache$NonPooledCache;->this$0:Lcom/android/bitmap/AltPooledCache;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/bitmap/AltPooledCache;->sizeOf(Lcom/android/bitmap/Poolable;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    .local p0, this:Lcom/android/bitmap/AltPooledCache$NonPooledCache;,"Lcom/android/bitmap/AltPooledCache<TK;TV;>.NonPooledCache;"
    check-cast p2, Lcom/android/bitmap/Poolable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/AltPooledCache$NonPooledCache;->sizeOf(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
