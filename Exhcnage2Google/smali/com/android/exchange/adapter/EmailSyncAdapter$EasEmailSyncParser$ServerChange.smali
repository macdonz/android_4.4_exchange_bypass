.class Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "EmailSyncAdapter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
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

.field final synthetic this$0:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "_id"
    .parameter "_read"
    .parameter "_flag"
    .parameter "_flags"

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 972
    #p0=(Reference);
    iput-wide p2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    .line 973
    iput-object p4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    .line 974
    iput-object p5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    .line 975
    iput-object p6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    .line 976
    return-void
.end method
