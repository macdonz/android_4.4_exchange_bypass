.class public Lcom/android/emailsync/AbstractSyncService$ValidationResult;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/AbstractSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation


# static fields
.field static final succeeded:Lcom/android/emailsync/AbstractSyncService$ValidationResult;


# instance fields
.field exception:Ljava/lang/Exception;

.field failure:I

.field reason:Ljava/lang/String;

.field success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/emailsync/AbstractSyncService$ValidationResult;-><init>(ZILjava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->succeeded:Lcom/android/emailsync/AbstractSyncService$ValidationResult;

    return-void
.end method

.method constructor <init>(ZILjava/lang/String;)V
    .locals 2
    .parameter "_success"
    .parameter "_failure"
    .parameter "_reason"

    .prologue
    const/4 v1, 0x0

    .line 157
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 154
    iput-object v1, p0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 158
    iput-boolean p1, p0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->success:Z

    .line 159
    iput p2, p0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->failure:I

    .line 160
    iput-object p3, p0, Lcom/android/emailsync/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 161
    return-void
.end method
