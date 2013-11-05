.class public Lcom/android/emailcommon/provider/MessageStateChange;
.super Lcom/android/emailcommon/provider/MessageChangeLogTable;
.source "MessageStateChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;
    }
.end annotation


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static init()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messageChange"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    return-void
.end method
