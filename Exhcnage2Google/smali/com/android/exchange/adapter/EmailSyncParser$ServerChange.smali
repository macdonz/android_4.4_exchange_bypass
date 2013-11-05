.class Lcom/android/exchange/adapter/EmailSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "EmailSyncParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerChange"
.end annotation


# instance fields
.field final flag:Ljava/lang/Boolean;

.field final flags:Ljava/lang/Integer;

.field final id:J

.field final read:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/exchange/adapter/EmailSyncParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/EmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "_id"
    .parameter "_read"
    .parameter "_flag"
    .parameter "_flags"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncParser$ServerChange;->this$0:Lcom/android/exchange/adapter/EmailSyncParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 573
    #p0=(Reference);
    iput-wide p2, p0, Lcom/android/exchange/adapter/EmailSyncParser$ServerChange;->id:J

    .line 574
    iput-object p4, p0, Lcom/android/exchange/adapter/EmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    .line 575
    iput-object p5, p0, Lcom/android/exchange/adapter/EmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    .line 576
    iput-object p6, p0, Lcom/android/exchange/adapter/EmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    .line 577
    return-void
.end method
