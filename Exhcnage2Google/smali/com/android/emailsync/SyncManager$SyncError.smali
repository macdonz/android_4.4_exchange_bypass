.class public Lcom/android/emailsync/SyncManager$SyncError;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncError"
.end annotation


# instance fields
.field public fatal:Z

.field holdDelay:J

.field public holdEndTime:J

.field reason:I

.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/emailsync/SyncManager;IZ)V
    .locals 4
    .parameter
    .parameter "_reason"
    .parameter "_fatal"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$SyncError;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->fatal:Z

    .line 765
    const-wide/16 v0, 0x3a98

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    .line 769
    iput p2, p0, Lcom/android/emailsync/SyncManager$SyncError;->reason:I

    .line 770
    iput-boolean p3, p0, Lcom/android/emailsync/SyncManager$SyncError;->fatal:Z

    .line 771
    return-void
.end method


# virtual methods
.method escalate()V
    .locals 4

    .prologue
    .line 777
    iget-wide v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/32 v2, 0x3a980

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gtz v0, :cond_0

    .line 778
    iget-wide v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    #v0=(LongLo);
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    .line 780
    :cond_0
    #v0=(Conflicted);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);
    iget-wide v2, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    .line 781
    return-void
.end method
