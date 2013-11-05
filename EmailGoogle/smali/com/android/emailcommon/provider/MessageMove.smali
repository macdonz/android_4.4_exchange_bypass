.class public Lcom/android/emailcommon/provider/MessageMove;
.super Lcom/android/emailcommon/provider/MessageChangeLogTable;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;,
        Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;
    }
.end annotation


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field private static final SELECTION_LAST_SYNCED_MAILBOX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "messageKey=? and status!="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/MessageMove;->STATUS_FAILED_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove;->SELECTION_LAST_SYNCED_MAILBOX:Ljava/lang/String;

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messageMove"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    return-void
.end method
