.class public Lcom/android/mail/providers/protos/mock/MockRespondMatrixCursor;
.super Lcom/android/mail/utils/MatrixCursorWithCachedColumns;
.source "MockRespondMatrixCursor.java"


# instance fields
.field final mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .parameter "columnNames"
    .parameter "initialCapacity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, queryResults:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    .line 39
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/mail/providers/protos/mock/MockRespondMatrixCursor;->mResultList:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .parameter "request"

    .prologue
    .line 44
    new-instance v4, Landroid/os/Bundle;

    #v4=(UninitRef);
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v4, response:Landroid/os/Bundle;
    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/providers/protos/mock/MockRespondMatrixCursor;->getPosition()I

    move-result v3

    .line 47
    .local v3, pos:I
    #v3=(Integer);
    iget-object v7, p0, Lcom/android/mail/providers/protos/mock/MockRespondMatrixCursor;->mResultList:Ljava/util/List;

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    #v7=(Integer);
    if-lt v3, v7, :cond_1

    .line 48
    const-string v7, "MockProvider"

    #v7=(Reference);
    const-string v8, "Unexpected position"

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    new-array v9, v9, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v4

    .line 52
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(Uninit);v9=(Uninit);
    iget-object v7, p0, Lcom/android/mail/providers/protos/mock/MockRespondMatrixCursor;->mResultList:Ljava/util/List;

    #v7=(Reference);
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Ljava/util/Map;

    .line 56
    .local v6, rowData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 57
    .local v0, bundleKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    #v1=(Reference);v2=(Conflicted);v5=(Conflicted);v8=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "respond_"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    .local v5, responseData:Ljava/lang/Object;
    #v5=(Reference);
    if-eqz v5, :cond_2

    .line 60
    check-cast v5, Landroid/os/Parcelable;

    .end local v5           #responseData:Ljava/lang/Object;
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method
