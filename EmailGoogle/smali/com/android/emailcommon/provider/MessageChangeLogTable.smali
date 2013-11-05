.class public abstract Lcom/android/emailcommon/provider/MessageChangeLogTable;
.super Ljava/lang/Object;
.source "MessageChangeLogTable.java"


# static fields
.field public static final STATUS_FAILED_STRING:Ljava/lang/String;

.field public static final STATUS_NONE_STRING:Ljava/lang/String;

.field public static final STATUS_PROCESSING_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_NONE_STRING:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_PROCESSING_STRING:Ljava/lang/String;

    .line 40
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_FAILED_STRING:Ljava/lang/String;

    return-void
.end method
