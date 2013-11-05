.class public Lcom/android/email/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private mCount:I

.field private final mIn:Ljava/io/InputStream;

.field private final mLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .parameter "in"
    .parameter "length"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    .line 34
    iput p2, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    .line 35
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    #v0=(Integer);
    iget v1, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    #v1=(Integer);
    sub-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    #v0=(Integer);
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    #v0=(Integer);
    iget v1, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 45
    iget v0, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    .line 46
    iget-object v0, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 48
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 54
    #v1=(Byte);
    iget v2, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    #v3=(Integer);
    if-ge v2, v3, :cond_1

    .line 55
    iget-object v2, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    #v2=(Reference);
    iget v3, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    iget v4, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    #v4=(Integer);
    sub-int/2addr v3, v4

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 56
    .local v0, d:I
    #v0=(Integer);
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 63
    .end local v0           #d:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v4=(Conflicted);
    return v0

    .line 59
    .restart local v0       #d:I
    :cond_0
    #v1=(Byte);v2=(Reference);v4=(Integer);
    iget v1, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    #v1=(Integer);
    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/email/FixedLengthInputStream;->mCount:I

    goto :goto_0

    .end local v0           #d:I
    :cond_1
    #v0=(Uninit);v1=(Byte);v2=(Integer);v4=(Uninit);
    move v0, v1

    .line 63
    #v0=(Byte);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, "FixedLengthInputStream(in=%s, length=%d)"

    #v0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/email/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    iget v3, p0, Lcom/android/email/FixedLengthInputStream;->mLength:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
