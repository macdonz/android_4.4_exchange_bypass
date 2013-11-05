.class public Lcom/android/mail/ui/AttachmentTile;
.super Landroid/widget/RelativeLayout;
.source "AttachmentTile.java"

# interfaces
.implements Lcom/android/mail/ui/AttachmentBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/AttachmentTile$1;,
        Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;,
        Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAttachment:Lcom/android/mail/providers/Attachment;

.field private mAttachmentPreviewCache:Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;

.field private mAttachmentSizeText:Ljava/lang/String;

.field private mDefaultIcon:Landroid/widget/ImageView;

.field private mDefaultThumbnailSet:Z

.field private mDisplayType:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mThumbnailTask:Lcom/android/mail/ui/ThumbnailLoadTask;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/AttachmentTile;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/AttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    .line 80
    return-void
.end method

.method public static isTiledAttachment(Lcom/android/mail/providers/Attachment;)Z
    .locals 1
    .parameter "attachment"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/photo/util/ImageUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private updateSubtitleText()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachmentSizeText:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mDisplayType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    const/16 v1, 0x20

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mDisplayType:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method


# virtual methods
.method public bitmapSetToDefault()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    #v0=(Boolean);
    return v0
.end method

.method public getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f08008f

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mTitle:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f080090

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mSubtitle:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f08006a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f08006b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultIcon:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 96
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mThumbnailTask:Lcom/android/mail/ui/ThumbnailLoadTask;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v0, p0, v1, v2}, Lcom/android/mail/ui/ThumbnailLoadTask;->setupThumbnailPreview(Lcom/android/mail/ui/ThumbnailLoadTask;Lcom/android/mail/ui/AttachmentBitmapHolder;Lcom/android/mail/providers/Attachment;Lcom/android/mail/providers/Attachment;)V

    .line 97
    return-void
.end method

.method public render(Lcom/android/mail/providers/Attachment;Landroid/net/Uri;ILcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V
    .locals 7
    .parameter "attachment"
    .parameter "attachmentsListUri"
    .parameter "index"
    .parameter "attachmentPreviewCache"
    .parameter "loaderResult"

    .prologue
    const/4 v6, 0x4

    .line 106
    #v6=(PosByte);
    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0, v6}, Lcom/android/mail/ui/AttachmentTile;->setVisibility(I)V

    .line 136
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 111
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 112
    .local v0, prevAttachment:Lcom/android/mail/providers/Attachment;
    #v0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 113
    iput-object p4, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachmentPreviewCache:Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;

    .line 115
    sget-object v1, Lcom/android/mail/ui/AttachmentTile;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d"

    #v2=(Reference);
    const/4 v3, 0x7

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget v5, p1, Lcom/android/mail/providers/Attachment;->state:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    iget v5, p1, Lcom/android/mail/providers/Attachment;->destination:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    iget-object v4, p1, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v4=(Reference);
    aput-object v4, v3, v6

    const/4 v4, 0x5

    #v4=(PosByte);
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget v5, p1, Lcom/android/mail/providers/Attachment;->flags:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget v1, p1, Lcom/android/mail/providers/Attachment;->flags:I

    #v1=(Integer);
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mTitle:Landroid/widget/TextView;

    #v1=(Reference);
    const v2, 0x7f0a00da

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_1
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    iget v2, v0, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    if-eq v1, v2, :cond_3

    .line 129
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    iget v2, p1, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachmentSizeText:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mail/utils/AttachmentUtils;->getDisplayType(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mDisplayType:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/android/mail/ui/AttachmentTile;->updateSubtitleText()V

    .line 135
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mThumbnailTask:Lcom/android/mail/ui/ThumbnailLoadTask;

    #v1=(Reference);
    invoke-static {v1, p0, p1, v0}, Lcom/android/mail/ui/ThumbnailLoadTask;->setupThumbnailPreview(Lcom/android/mail/ui/ThumbnailLoadTask;Lcom/android/mail/ui/AttachmentBitmapHolder;Lcom/android/mail/providers/Attachment;Lcom/android/mail/providers/Attachment;)V

    goto :goto_0

    .line 123
    :cond_4
    #v1=(Integer);v2=(Reference);v3=(Reference);
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 125
    :cond_5
    #v1=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mTitle:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/high16 v13, 0x3f00

    #v13=(Integer);
    const/4 v9, 0x0

    .line 163
    #v9=(Null);
    if-nez p1, :cond_0

    .line 211
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-void

    .line 168
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(One);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Integer);
    iget-object v10, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultIcon:Landroid/widget/ImageView;

    #v10=(Reference);
    const/16 v11, 0x8

    #v11=(PosByte);
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e002a

    #v11=(Integer);
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 171
    .local v2, maxSize:I
    #v2=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 172
    .local v7, width:I
    #v7=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 173
    .local v0, height:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    #v10=(Integer);
    mul-int/2addr v10, v7

    div-int/lit16 v5, v10, 0xa0

    .line 175
    .local v5, scaledWidth:I
    #v5=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    #v10=(Integer);
    mul-int/2addr v10, v0

    div-int/lit16 v4, v10, 0xa0

    .line 178
    .local v4, scaledHeight:I
    #v4=(Integer);
    int-to-float v10, v7

    #v10=(Float);
    int-to-float v11, v0

    #v11=(Float);
    div-float/2addr v10, v11

    int-to-float v11, v0

    int-to-float v12, v7

    #v12=(Float);
    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 180
    .local v3, ratio:F
    #v3=(Float);
    if-ge v7, v2, :cond_1

    iget-object v10, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    #v10=(Integer);
    if-ge v5, v10, :cond_1

    if-ge v0, v2, :cond_1

    iget-object v10, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    #v10=(Integer);
    if-lt v4, v10, :cond_3

    :cond_1
    move v1, v8

    .line 182
    .local v1, large:Z
    :goto_1
    #v1=(Boolean);
    cmpg-float v10, v3, v13

    #v10=(Byte);
    if-gez v10, :cond_4

    int-to-float v10, v5

    #v10=(Float);
    iget-object v11, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v11=(Reference);
    invoke-virtual {v11}, Landroid/widget/ImageView;->getHeight()I

    move-result v11

    #v11=(Integer);
    int-to-float v11, v11

    #v11=(Float);
    mul-float/2addr v11, v13

    cmpl-float v10, v10, v11

    #v10=(Byte);
    if-ltz v10, :cond_2

    int-to-float v10, v4

    #v10=(Float);
    iget-object v11, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v11=(Reference);
    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    #v11=(Integer);
    int-to-float v11, v11

    #v11=(Float);
    mul-float/2addr v11, v13

    cmpl-float v10, v10, v11

    #v10=(Byte);
    if-gez v10, :cond_4

    :cond_2
    move v6, v8

    .line 189
    .local v6, skinny:Z
    :goto_2
    #v6=(Boolean);
    sget-object v10, Lcom/android/mail/ui/AttachmentTile;->LOG_TAG:Ljava/lang/String;

    #v10=(Reference);
    const-string v11, "scaledWidth: %d, scaledHeight: %d, large: %b, skinny: %b"

    #v11=(Reference);
    const/4 v12, 0x4

    #v12=(PosByte);
    new-array v12, v12, [Ljava/lang/Object;

    #v12=(Reference);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    #v13=(Reference);
    aput-object v13, v12, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x2

    #v8=(PosByte);
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v10, v11, v12}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    if-eqz v1, :cond_6

    .line 194
    if-eqz v6, :cond_5

    .line 197
    iget-object v8, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v8=(Reference);
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    :goto_3
    iget-object v8, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v8, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachmentPreviewCache:Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;

    iget-object v10, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    invoke-interface {v8, v10, p1}, Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;->set(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V

    .line 210
    iput-boolean v9, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    goto/16 :goto_0

    .end local v1           #large:Z
    .end local v6           #skinny:Z
    :cond_3
    #v1=(Uninit);v6=(Uninit);v8=(One);v10=(Integer);v11=(Float);v12=(Float);v13=(Integer);
    move v1, v9

    .line 180
    #v1=(Null);
    goto :goto_1

    .restart local v1       #large:Z
    :cond_4
    #v1=(Boolean);v10=(Byte);
    move v6, v9

    .line 182
    #v6=(Null);
    goto :goto_2

    .line 201
    .restart local v6       #skinny:Z
    :cond_5
    #v6=(Boolean);v8=(PosByte);v10=(Reference);v11=(Reference);v12=(Reference);v13=(Reference);
    iget-object v8, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v8=(Reference);
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    .line 205
    :cond_6
    #v8=(PosByte);
    iget-object v8, p0, Lcom/android/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    #v8=(Reference);
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public setThumbnailToDefault()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachmentPreviewCache:Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v2=(Reference);
    invoke-interface {v1, v2}, Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;->get(Lcom/android/mail/providers/Attachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, cachedPreview:Landroid/graphics/Bitmap;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTile;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 159
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 157
    :cond_0
    #v1=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    goto :goto_0
.end method

.method public thumbnailLoadFailed()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTile;->setThumbnailToDefault()V

    .line 280
    return-void
.end method
