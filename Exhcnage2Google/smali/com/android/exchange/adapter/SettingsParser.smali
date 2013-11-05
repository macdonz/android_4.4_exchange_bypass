.class public Lcom/android/exchange/adapter/SettingsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "SettingsParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 37
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 41
    #v6=(Null);
    const/4 v0, 0x0

    .line 42
    .local v0, res:Z
    #v0=(Null);
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/16 v3, 0x485

    #v3=(PosShort);
    if-eq v2, v3, :cond_0

    .line 43
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #v2=(Reference);
    throw v2

    .line 45
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-eq v2, v3, :cond_4

    .line 46
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x486

    #v3=(PosShort);
    if-ne v2, v3, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    .line 48
    .local v1, status:I
    #v1=(Integer);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "Settings status = %d"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    if-ne v1, v7, :cond_1

    .line 50
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 53
    :cond_1
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 55
    .end local v1           #status:I
    :cond_2
    #v0=(Boolean);v1=(Conflicted);v2=(Integer);v3=(PosShort);v4=(Conflicted);v5=(Conflicted);
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x496

    if-ne v2, v3, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseDeviceInformation()V

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 61
    :cond_4
    #v3=(PosByte);
    return v0
.end method

.method public parseDeviceInformation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    :goto_0
    const/16 v0, 0x496

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 66
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x488

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSet()V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 72
    :cond_1
    #v1=(PosByte);
    return-void
.end method

.method public parseSet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    :goto_0
    const/16 v0, 0x488

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 76
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x486

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 77
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Set status = %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 79
    :cond_0
    #v0=(Integer);v1=(PosShort);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 82
    :cond_1
    #v1=(PosByte);
    return-void
.end method
