.class public Lcom/android/exchange/adapter/MeetingResponseParser;
.super Lcom/android/exchange/adapter/Parser;
.source "MeetingResponseParser.java"


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
    .line 31
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 32
    #p0=(Reference);
    return-void
.end method

.method private parseResult()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    .line 35
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(One);
    const/16 v1, 0x20a

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_3

    .line 36
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x20b

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->getValueInt()I

    move-result v0

    .line 38
    .local v0, status:I
    #v0=(Integer);
    if-eq v0, v5, :cond_0

    .line 39
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Error in meeting response: %d"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 41
    .end local v0           #status:I
    :cond_1
    #v0=(Conflicted);v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x205

    if-ne v1, v2, :cond_2

    .line 42
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Meeting response calender id: %s"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 44
    :cond_2
    #v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_0

    .line 47
    :cond_3
    #v2=(PosByte);
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    #v3=(Null);
    const/4 v0, 0x0

    .line 52
    .local v0, res:Z
    #v0=(Null);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x207

    #v2=(PosShort);
    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 55
    :cond_0
    :goto_0
    #v1=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_2

    .line 56
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x20a

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->parseResult()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_0

    .line 62
    :cond_2
    #v2=(PosByte);
    return v0
.end method
