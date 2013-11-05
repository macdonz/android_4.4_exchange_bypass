.class public Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;
.super Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/photomanager/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactPhotoLoaderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/photomanager/ContactPhotoManager;


# direct methods
.method public constructor <init>(Lcom/android/mail/photomanager/ContactPhotoManager;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "resolver"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/ContactPhotoManager;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;-><init>(Lcom/android/mail/photomanager/PhotoManager;Landroid/content/ContentResolver;)V

    .line 169
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic ensureHandler()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->ensureHandler()V

    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected loadPhotos(Ljava/util/Collection;)Ljava/util/Map;
    .locals 15
    .parameter
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

    .prologue
    .line 173
    .local p1, requests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/photomanager/PhotoManager$Request;>;"
    new-instance v9, Ljava/util/HashMap;

    #v9=(UninitRef);
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v11

    #v11=(Integer);
    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 175
    .local v9, photos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;>;"
    #v9=(Reference);
    new-instance v1, Ljava/util/HashSet;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v1, addresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v1=(Reference);
    new-instance v8, Ljava/util/HashSet;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v8, photoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    #v8=(Reference);
    new-instance v7, Ljava/util/HashMap;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v7, photoIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    #v7=(Reference);
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Conflicted);v4=(Reference);v6=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 182
    .local v10, request:Lcom/android/mail/photomanager/PhotoManager$Request;
    invoke-virtual {v10}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, emailAddress:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->this$0:Lcom/android/mail/photomanager/ContactPhotoManager;

    #v11=(Reference);
    invoke-static {v11}, Lcom/android/mail/photomanager/ContactPhotoManager;->access$000(Lcom/android/mail/photomanager/ContactPhotoManager;)Landroid/util/LruCache;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Ljava/lang/Long;

    .line 184
    .local v6, match:Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v6           #match:Ljava/lang/Long;
    .end local v10           #request:Lcom/android/mail/photomanager/PhotoManager$Request;
    :cond_1
    #v2=(Conflicted);v6=(Conflicted);v10=(Conflicted);v11=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->getResolver()Landroid/content/ContentResolver;

    move-result-object v11

    #v11=(Reference);
    const/4 v12, 0x0

    #v12=(Null);
    invoke-static {v11, v1, v12}, Lcom/android/mail/SenderInfoLoader;->loadContactPhotos(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 201
    .local v3, emailAddressToContactInfoMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;"
    #v3=(Reference);
    if-eqz v3, :cond_3

    .line 202
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    #v0=(Conflicted);v5=(Conflicted);v12=(Reference);v13=(Conflicted);v14=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/mail/ContactInfo;

    .line 204
    .local v5, info:Lcom/android/mail/ContactInfo;
    new-instance v12, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;

    #v12=(UninitRef);
    if-eqz v5, :cond_2

    iget-object v11, v5, Lcom/android/mail/ContactInfo;->photoBytes:[B

    :goto_2
    #v11=(Reference);
    const/4 v13, -0x1

    #v13=(Byte);
    const/4 v14, -0x1

    #v14=(Byte);
    invoke-direct {v12, v11, v13, v14}, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;-><init>([BII)V

    #v12=(Reference);
    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    #v11=(Boolean);v12=(UninitRef);v13=(Conflicted);v14=(Conflicted);
    const/4 v11, 0x0

    #v11=(Null);
    goto :goto_2

    .line 210
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #info:Lcom/android/mail/ContactInfo;
    :cond_3
    #v0=(Uninit);v5=(Uninit);v11=(Reference);v12=(Null);v13=(Uninit);v14=(Uninit);
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    #v0=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 211
    .restart local v0       #address:Ljava/lang/String;
    new-instance v11, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;

    #v11=(UninitRef);
    const/4 v12, 0x0

    const/4 v13, -0x1

    #v13=(Byte);
    const/4 v14, -0x1

    #v14=(Byte);
    invoke-direct {v11, v12, v13, v14}, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;-><init>([BII)V

    #v11=(Reference);
    invoke-interface {v9, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 215
    .end local v0           #address:Ljava/lang/String;
    :cond_4
    #v0=(Conflicted);v5=(Conflicted);v11=(Boolean);v12=(Reference);v13=(Conflicted);v14=(Conflicted);
    return-object v9
.end method

.method public bridge synthetic requestLoading()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->requestLoading()V

    return-void
.end method
