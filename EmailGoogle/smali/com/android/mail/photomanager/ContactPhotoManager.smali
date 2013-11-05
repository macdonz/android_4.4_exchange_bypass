.class public Lcom/android/mail/photomanager/ContactPhotoManager;
.super Lcom/android/mail/photomanager/PhotoManager;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;,
        Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    }
.end annotation


# instance fields
.field private final mLetterTileProvider:Lcom/android/mail/photomanager/LetterTileProvider;

.field private final mPhotoIdCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/mail/photomanager/PhotoManager;-><init>(Landroid/content/Context;)V

    .line 77
    #p0=(Reference);
    new-instance v0, Landroid/util/LruCache;

    #v0=(UninitRef);
    const/16 v1, 0x1f4

    #v1=(PosShort);
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;

    .line 78
    new-instance v0, Lcom/android/mail/photomanager/LetterTileProvider;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager;->mLetterTileProvider:Lcom/android/mail/photomanager/LetterTileProvider;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/photomanager/ContactPhotoManager;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;

    #v0=(Reference);
    return-object v0
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/mail/photomanager/ContactPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const-class v1, Lcom/android/mail/photomanager/ContactPhotoManager;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/mail/photomanager/ContactPhotoManager;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/photomanager/ContactPhotoManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v0=(Reference);
    monitor-exit v1

    return-object v0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method

.method public static generateHash(Lcom/android/mail/ui/ImageCanvas;ILjava/lang/Object;)I
    .locals 3
    .parameter "view"
    .parameter "pos"
    .parameter "key"

    .prologue
    .line 72
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    aput-object p0, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/mail/photomanager/PhotoManager;->clear()V

    .line 100
    iget-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 101
    return-void
.end method

.method protected getDefaultImageProvider()Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager;->mLetterTileProvider:Lcom/android/mail/photomanager/LetterTileProvider;

    #v0=(Reference);
    return-object v0
.end method

.method protected getHash(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;)I
    .locals 3
    .parameter "id"
    .parameter "view"

    .prologue
    .line 88
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    .line 89
    .local v0, contactId:Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    iget v1, v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    #v1=(Integer);
    invoke-virtual {v0}, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    invoke-static {p2, v1, v2}, Lcom/android/mail/photomanager/ContactPhotoManager;->generateHash(Lcom/android/mail/ui/ImageCanvas;ILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected getLoaderThread(Landroid/content/ContentResolver;)Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 94
    new-instance v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;-><init>(Lcom/android/mail/photomanager/ContactPhotoManager;Landroid/content/ContentResolver;)V

    #v0=(Reference);
    return-object v0
.end method
