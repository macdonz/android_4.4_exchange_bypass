.class public Lcom/android/exchange/eas/EasSettings;
.super Lcom/android/exchange/eas/EasOperation;
.source "EasSettings.java"


# direct methods
.method public constructor <init>(Lcom/android/exchange/eas/EasOperation;)V
    .locals 0
    .parameter "parentOperation"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/exchange/eas/EasOperation;-><init>(Lcom/android/exchange/eas/EasOperation;)V

    .line 50
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "Settings"

    #v0=(Reference);
    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 64
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    #v0=(Reference);
    const/16 v1, 0x485

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/exchange/eas/EasSettings;->addDeviceInformationToSerlializer(Lcom/android/exchange/adapter/Serializer;)V

    .line 66
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/exchange/eas/EasSettings;->makeEntity(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    return-object v1
.end method

.method protected handleResponse(Lcom/android/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 2
    .parameter "response"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/android/exchange/adapter/SettingsParser;

    #v0=(UninitRef);
    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Byte);
    return v0

    :cond_0
    #v0=(Boolean);
    const/16 v0, -0xa

    #v0=(Byte);
    goto :goto_0
.end method

.method public sendDeviceInformation(Landroid/content/SyncResult;)Z
    .locals 2
    .parameter "syncResult"

    .prologue
    const/4 v0, 0x1

    .line 53
    #v0=(One);
    invoke-virtual {p0, p1}, Lcom/android/exchange/eas/EasSettings;->performOperation(Landroid/content/SyncResult;)I

    move-result v1

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
