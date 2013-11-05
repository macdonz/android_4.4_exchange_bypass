.class public Lcom/android/mail/bitmap/ImageAttachmentRequest;
.super Ljava/lang/Object;
.source "ImageAttachmentRequest.java"

# interfaces
.implements Lcom/android/bitmap/DecodeTask$Request;


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mDestW:I

.field private final mLookupUri:Ljava/lang/String;

.field private final mRendition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .parameter "context"
    .parameter "lookupUri"
    .parameter "rendition"
    .parameter "destW"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    .line 33
    iput p4, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    .line 34
    return-void
.end method


# virtual methods
.method public createFd()Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v8, 0x0

    .line 82
    .local v8, result:Landroid/content/res/AssetFileDescriptor;
    #v8=(Null);
    const/4 v7, 0x0

    .line 83
    .local v7, cursor:Landroid/database/Cursor;
    #v7=(Null);
    iget-object v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    #v7=(Reference);
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 88
    new-instance v6, Lcom/android/mail/providers/Attachment;

    #v6=(UninitRef);
    invoke-direct {v6, v7}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    .line 89
    .local v6, a:Lcom/android/mail/providers/Attachment;
    #v6=(Reference);
    iget v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    #v1=(Integer);
    invoke-virtual {v6, v1}, Lcom/android/mail/providers/Attachment;->getUriForRendition(I)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 92
    .end local v6           #a:Lcom/android/mail/providers/Attachment;
    :cond_0
    #v1=(Conflicted);v6=(Conflicted);v8=(Reference);
    if-eqz v7, :cond_1

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_1
    return-object v8

    .line 92
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Null);
    move-exception v1

    #v1=(Reference);
    if-eqz v7, :cond_2

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 38
    #v1=(Null);
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Boolean);v3=(Uninit);
    move-object v0, p1

    .line 41
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/bitmap/ImageAttachmentRequest;

    .line 42
    .local v0, other:Lcom/android/mail/bitmap/ImageAttachmentRequest;
    iget-object v2, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    #v3=(Reference);
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    #v2=(Integer);
    iget v3, v0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    iget v3, v0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x11

    .line 49
    .local v0, hash:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    #v1=(Integer);
    add-int/lit16 v1, v1, 0x20f

    add-int/2addr v0, v1

    .line 50
    #v0=(Integer);
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    #v2=(Integer);
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public matches(Lcom/android/mail/bitmap/ImageAttachmentRequest;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    #v0=(Integer);
    iget v1, p1, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "["

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, " uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mLookupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " rendition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mRendition:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " w="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
