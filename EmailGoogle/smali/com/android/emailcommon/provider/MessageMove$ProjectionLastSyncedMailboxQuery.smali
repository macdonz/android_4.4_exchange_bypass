.class interface abstract Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;
.super Ljava/lang/Object;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionLastSyncedMailboxQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "srcFolderKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
