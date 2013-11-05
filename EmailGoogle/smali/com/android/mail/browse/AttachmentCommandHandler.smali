.class Lcom/android/mail/browse/AttachmentCommandHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttachmentCommandHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 27
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 7
    .parameter "uri"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 34
    #v2=(Null);
    const/4 v1, 0x0

    #v1=(Null);
    move-object v0, p0

    #v0=(Reference);
    move-object v3, p1

    #v3=(Reference);
    move-object v4, p2

    #v4=(Reference);
    move-object v5, v2

    #v5=(Null);
    move-object v6, v2

    #v6=(Null);
    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/browse/AttachmentCommandHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    return-void
.end method
