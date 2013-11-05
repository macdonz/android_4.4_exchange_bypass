.class Lcom/android/email/provider/EmailProvider$AttachmentsCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachmentsCursor"
.end annotation


# instance fields
.field private final mContentUriIndex:I

.field private final mContext:Landroid/content/Context;

.field private final mUriIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3824
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 3825
    #p0=(Reference);
    const-string v0, "contentUri"

    #v0=(Reference);
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->mContentUriIndex:I

    .line 3826
    const-string v0, "uri"

    #v0=(Reference);
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->mUriIndex:I

    .line 3827
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->mContext:Landroid/content/Context;

    .line 3828
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "column"

    .prologue
    .line 3832
    iget v5, p0, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->mContentUriIndex:I

    #v5=(Integer);
    if-ne p1, v5, :cond_3

    .line 3833
    iget v5, p0, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->mUriIndex:I

    invoke-virtual {p0, v5}, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3834
    .local v4, uri:Landroid/net/Uri;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3835
    .local v2, id:J
    #v2=(LongLo);v3=(LongHi);
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider$AttachmentsCursor;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3836
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v0=(Reference);
    if-nez v0, :cond_0

    const-string v1, ""

    .line 3856
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #id:J
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v1

    .line 3837
    .restart local v0       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2       #id:J
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_0
    #v0=(Reference);v1=(Uninit);v2=(LongLo);v3=(LongHi);v4=(Reference);v5=(Reference);v6=(Uninit);
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 3838
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0

    .line 3845
    :cond_1
    #v1=(Uninit);
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-ne v5, v6, :cond_2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v6, 0x3

    #v6=(PosByte);
    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "application/vnd.android.package-archive"

    #v6=(Reference);
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 3848
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v1

    .local v1, contentUri:Ljava/lang/String;
    #v1=(Reference);
    goto :goto_0

    .line 3850
    .end local v1           #contentUri:Ljava/lang/String;
    :cond_2
    #v1=(Uninit);v5=(Integer);v6=(Conflicted);
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #contentUri:Ljava/lang/String;
    #v1=(Reference);
    goto :goto_0

    .line 3856
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #contentUri:Ljava/lang/String;
    .end local v2           #id:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Uninit);
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method
