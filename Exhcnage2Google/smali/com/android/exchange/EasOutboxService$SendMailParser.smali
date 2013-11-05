.class Lcom/android/exchange/EasOutboxService$SendMailParser;
.super Lcom/android/exchange/adapter/Parser;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendMailParser"
.end annotation


# instance fields
.field private final mStartTag:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .parameter "in"
    .parameter "startTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 200
    #p0=(Reference);
    iput p2, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStartTag:I

    .line 201
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStatus:I

    #v0=(Integer);
    return v0
.end method

.method public parse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 212
    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasOutboxService$SendMailParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStartTag:I

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 213
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 215
    :cond_0
    :goto_0
    #v0=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasOutboxService$SendMailParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    .line 216
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x552

    #v1=(PosShort);
    if-ne v0, v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService$SendMailParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/EasOutboxService$SendMailParser;->mStatus:I

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService$SendMailParser;->skipTag()V

    goto :goto_0

    .line 222
    :cond_2
    #v1=(PosByte);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
