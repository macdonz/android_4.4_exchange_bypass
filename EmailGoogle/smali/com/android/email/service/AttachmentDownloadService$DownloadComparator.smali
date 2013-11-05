.class Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I
    .locals 6
    .parameter "req1"
    .parameter "req2"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, -0x1

    .line 226
    #v0=(Byte);
    iget v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    #v2=(Integer);
    iget v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    #v3=(Integer);
    if-eq v2, v3, :cond_1

    .line 227
    iget v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-ge v2, v3, :cond_0

    .line 235
    .local v0, res:I
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v0

    .end local v0           #res:I
    :cond_0
    #v3=(Integer);v4=(Uninit);v5=(Uninit);
    move v0, v1

    .line 227
    #v0=(One);
    goto :goto_0

    .line 229
    :cond_1
    #v0=(Byte);
    iget-wide v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_2

    .line 230
    const/4 v0, 0x0

    .restart local v0       #res:I
    #v0=(Null);
    goto :goto_0

    .line 232
    .end local v0           #res:I
    :cond_2
    #v0=(Byte);
    iget-wide v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    #v2=(LongLo);
    iget-wide v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_3

    .restart local v0       #res:I
    :goto_1
    goto :goto_0

    .end local v0           #res:I
    :cond_3
    move v0, v1

    #v0=(One);
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    check-cast p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p1
    check-cast p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;->compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
