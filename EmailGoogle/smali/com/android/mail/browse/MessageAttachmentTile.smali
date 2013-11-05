.class public Lcom/android/mail/browse/MessageAttachmentTile;
.super Lcom/android/mail/ui/AttachmentTile;
.source "MessageAttachmentTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/browse/AttachmentViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/MessageAttachmentTile$ViewIndexDistanceComparator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

.field private mAttachmentsListUri:Landroid/net/Uri;

.field private mPhotoIndex:I

.field private mTextContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/MessageAttachmentTile;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageAttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/AttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p0}, Lcom/android/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/android/mail/browse/AttachmentViewInterface;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    .line 75
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentTile;
    .locals 3
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 99
    const v1, 0x7f040030

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageAttachmentTile;

    .line 101
    .local v0, view:Lcom/android/mail/browse/MessageAttachmentTile;
    return-object v0
.end method

.method private onClick()Z
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->showAndDownloadAttachments()V

    .line 121
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method private showAndDownloadAttachments()V
    .locals 8

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/mail/ui/AttachmentTileGrid;

    .line 126
    .local v5, tileGrid:Lcom/android/mail/ui/AttachmentTileGrid;
    invoke-virtual {v5}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v0

    .line 128
    .local v0, childCount:I
    #v0=(Integer);
    new-instance v3, Ljava/util/PriorityQueue;

    #v3=(UninitRef);
    new-instance v6, Lcom/android/mail/browse/MessageAttachmentTile$ViewIndexDistanceComparator;

    #v6=(UninitRef);
    iget v7, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mPhotoIndex:I

    #v7=(Integer);
    invoke-direct {v6, v7}, Lcom/android/mail/browse/MessageAttachmentTile$ViewIndexDistanceComparator;-><init>(I)V

    #v6=(Reference);
    invoke-direct {v3, v0, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 130
    .local v3, queue:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/android/mail/browse/MessageAttachmentTile;>;"
    #v3=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v4=(Conflicted);
    if-ge v1, v0, :cond_0

    .line 131
    invoke-virtual {v5, v1}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/mail/browse/MessageAttachmentTile;

    .line 132
    .local v4, tile:Lcom/android/mail/browse/MessageAttachmentTile;
    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v4           #tile:Lcom/android/mail/browse/MessageAttachmentTile;
    :cond_0
    #v4=(Conflicted);
    move v2, v0

    .line 137
    .local v2, maxAdditionalPriority:I
    #v2=(Integer);
    const/4 v1, 0x0

    :goto_1
    #v6=(Conflicted);
    if-ge v1, v0, :cond_2

    .line 139
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/mail/browse/MessageAttachmentTile;

    .line 140
    .restart local v4       #tile:Lcom/android/mail/browse/MessageAttachmentTile;
    sub-int v7, v2, v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_2
    #v6=(Boolean);
    invoke-virtual {v4, v7, v6}, Lcom/android/mail/browse/MessageAttachmentTile;->downloadAttachment(IZ)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_1
    #v6=(Conflicted);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_2

    .line 143
    .end local v4           #tile:Lcom/android/mail/browse/MessageAttachmentTile;
    :cond_2
    #v4=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->viewAttachment()V

    .line 144
    return-void
.end method


# virtual methods
.method public downloadAttachment(IZ)V
    .locals 3
    .parameter "additionalPriority"
    .parameter "delayDownload"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(IIIZ)V

    .line 151
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public initialize(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "fragmentManager"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/AttachmentActionHandler;->initialize(Landroid/app/FragmentManager;)V

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->onClick()Z

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/mail/ui/AttachmentTile;->onFinishInflate()V

    .line 109
    const v0, 0x7f0800be

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mTextContainer:Landroid/view/View;

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/MessageAttachmentTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public onUpdateStatus()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public render(Lcom/android/mail/providers/Attachment;Landroid/net/Uri;ILcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V
    .locals 2
    .parameter "attachment"
    .parameter "attachmentsListUri"
    .parameter "index"
    .parameter "attachmentPreviewCache"
    .parameter "loaderResult"

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Lcom/android/mail/ui/AttachmentTile;->render(Lcom/android/mail/providers/Attachment;Landroid/net/Uri;ILcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V

    .line 91
    iput-object p2, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mAttachmentsListUri:Landroid/net/Uri;

    .line 92
    iput p3, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mPhotoIndex:I

    .line 94
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 95
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, p5}, Lcom/android/mail/browse/AttachmentActionHandler;->updateStatus(Z)V

    .line 96
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/mail/ui/AttachmentTile;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mTextContainer:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public setThumbnailToDefault()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/mail/ui/AttachmentTile;->setThumbnailToDefault()V

    .line 191
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mTextContainer:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public thumbnailLoadFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    #v2=(Null);
    invoke-super {p0}, Lcom/android/mail/ui/AttachmentTile;->thumbnailLoadFailed()V

    .line 204
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/utils/AttachmentUtils;->canDownloadAttachment(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(IIIZ)V

    .line 210
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public updateProgress(Z)V
    .locals 0
    .parameter "showDeterminateProgress"

    .prologue
    .line 182
    return-void
.end method

.method public viewAttachment()V
    .locals 8

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, mime:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "view_attachment"

    #v1=(Reference);
    const-string v3, "attachment_tile"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 160
    invoke-static {v2}, Lcom/android/ex/photo/util/ImageUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mAttachmentsListUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/mail/browse/MessageAttachmentTile;->mPhotoIndex:I

    #v3=(Integer);
    invoke-static {v0, v1, v3}, Lcom/android/mail/photo/MailPhotoViewActivity;->startMailPhotoViewActivity(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 177
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 166
    :cond_0
    #v0=(Boolean);v3=(Reference);v4=(LongLo);v6=(Uninit);v7=(Uninit);
    new-instance v7, Landroid/content/Intent;

    #v7=(UninitRef);
    const-string v0, "android.intent.action.VIEW"

    #v0=(Reference);
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v7, intent:Landroid/content/Intent;
    #v7=(Reference);
    const v0, 0x80001

    #v0=(Integer);
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTile;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v7, v0, v2}, Lcom/android/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v6

    .line 175
    .local v6, e:Landroid/content/ActivityNotFoundException;
    #v6=(Reference);
    sget-object v0, Lcom/android/mail/browse/MessageAttachmentTile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t find Activity for intent"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v6, v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
