.class Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
.super Ljava/lang/Object;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchRequest"
.end annotation


# instance fields
.field final messageId:J

.field final serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "_messageId"
    .parameter "_serverId"

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    #p0=(Reference);
    iput-wide p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->messageId:J

    .line 185
    iput-object p3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    .line 186
    return-void
.end method
