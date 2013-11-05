.class public Lcom/android/mail/browse/AttachmentLoader;
.super Landroid/content/CursorLoader;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/AttachmentLoader$1;,
        Lcom/android/mail/browse/AttachmentLoader$AttachmentCursor;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .parameter "c"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 36
    #v4=(Null);
    sget-object v3, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v5, v4

    #v5=(Null);
    move-object v6, v4

    #v6=(Null);
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    #v0=(Reference);p0=(Reference);
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/android/mail/browse/AttachmentLoader$AttachmentCursor;

    #v0=(UninitRef);
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/AttachmentLoader$AttachmentCursor;-><init>(Landroid/database/Cursor;Lcom/android/mail/browse/AttachmentLoader$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
