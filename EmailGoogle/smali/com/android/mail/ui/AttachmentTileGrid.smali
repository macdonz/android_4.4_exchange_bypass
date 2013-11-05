.class public Lcom/android/mail/ui/AttachmentTileGrid;
.super Landroid/widget/FrameLayout;
.source "AttachmentTileGrid.java"

# interfaces
.implements Lcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;


# instance fields
.field private final mAttachmentPreviews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentsListUri:Landroid/net/Uri;

.field private mColumnCount:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mTileMinSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    #p0=(Reference);
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mTileMinSize:I

    .line 59
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentPreviews:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method private addMessageTileFromAttachment(Lcom/android/mail/providers/Attachment;IZ)V
    .locals 6
    .parameter "attachment"
    .parameter "index"
    .parameter "loaderResult"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v1

    #v1=(Integer);
    if-gt v1, p2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    invoke-static {v1, p0}, Lcom/android/mail/browse/MessageAttachmentTile;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentTile;

    move-result-object v0

    .line 83
    .local v0, attachmentTile:Lcom/android/mail/browse/MessageAttachmentTile;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageAttachmentTile;->initialize(Landroid/app/FragmentManager;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->addView(Landroid/view/View;)V

    .line 89
    :goto_0
    #v1=(Conflicted);
    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentsListUri:Landroid/net/Uri;

    #v2=(Reference);
    move-object v1, p1

    #v1=(Reference);
    move v3, p2

    #v3=(Integer);
    move-object v4, p0

    #v4=(Reference);
    move v5, p3

    #v5=(Boolean);
    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/MessageAttachmentTile;->render(Lcom/android/mail/providers/Attachment;Landroid/net/Uri;ILcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V

    .line 90
    return-void

    .line 86
    .end local v0           #attachmentTile:Lcom/android/mail/browse/MessageAttachmentTile;
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p0, p2}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageAttachmentTile;

    .restart local v0       #attachmentTile:Lcom/android/mail/browse/MessageAttachmentTile;
    goto :goto_0
.end method

.method private onLayoutForTiles()V
    .locals 10

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v5

    .line 165
    .local v5, count:I
    #v5=(Integer);
    const/4 v2, 0x0

    .line 166
    .local v2, childLeft:I
    #v2=(Null);
    const/4 v3, 0x0

    .line 167
    .local v3, childTop:I
    #v3=(Null);
    const/4 v7, 0x1

    .line 170
    .local v7, skipBeginningOfRowFirstTime:Z
    #v7=(One);
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Integer);v4=(Conflicted);v6=(Integer);v7=(Boolean);v8=(Conflicted);v9=(Conflicted);
    if-ge v6, v5, :cond_1

    .line 171
    invoke-virtual {p0, v6}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 175
    .local v4, childWidth:I
    #v4=(Integer);
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 180
    .local v1, childHeight:I
    #v1=(Integer);
    if-nez v7, :cond_0

    iget v8, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    #v8=(Integer);
    rem-int v8, v6, v8

    if-nez v8, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 182
    #v2=(Null);
    add-int/2addr v3, v1

    .line 187
    :goto_1
    #v2=(Integer);v8=(Conflicted);
    add-int v8, v2, v4

    #v8=(Integer);
    add-int v9, v3, v1

    #v9=(Integer);
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 189
    add-int/2addr v2, v4

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 184
    :cond_0
    #v8=(Conflicted);v9=(Conflicted);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1

    .line 191
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v4           #childWidth:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v7=(Boolean);
    return-void
.end method

.method private onMeasureForTiles(I)V
    .locals 13
    .parameter "widthMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    #v12=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    const/4 v10, 0x0

    .line 108
    #v10=(Null);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 110
    .local v7, width:I
    #v7=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v1

    .line 111
    .local v1, childCount:I
    #v1=(Integer);
    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0, v7, v10}, Lcom/android/mail/ui/AttachmentTileGrid;->setMeasuredDimension(II)V

    .line 156
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Integer);v11=(Conflicted);
    return-void

    .line 120
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(One);v11=(Uninit);
    iget v8, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mTileMinSize:I

    #v8=(Integer);
    div-int v8, v7, v8

    iput v8, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    .line 123
    iget v8, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    if-nez v8, :cond_1

    .line 124
    iput v9, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    .line 138
    :cond_1
    iget v8, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    div-int v4, v7, v8

    .line 139
    .local v4, imageSize:I
    #v4=(Integer);
    iget v8, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    mul-int/2addr v8, v4

    sub-int v6, v7, v8

    .line 141
    .local v6, remainder:I
    #v6=(Integer);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Integer);v11=(Conflicted);
    if-ge v3, v1, :cond_3

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    if-ge v3, v6, :cond_2

    move v8, v9

    :goto_2
    #v8=(Boolean);
    add-int v2, v4, v8

    .line 145
    .local v2, childWidth:I
    #v2=(Integer);
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    #v8=(Integer);
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    #v11=(Integer);
    invoke-virtual {v0, v8, v11}, Landroid/view/View;->measure(II)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #childWidth:I
    :cond_2
    #v2=(Conflicted);v11=(Conflicted);
    move v8, v10

    .line 144
    #v8=(Null);
    goto :goto_2

    .line 153
    .end local v0           #child:Landroid/view/View;
    :cond_3
    #v0=(Conflicted);v8=(Integer);
    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mColumnCount:I

    #v9=(Integer);
    div-int/2addr v8, v9

    add-int/lit8 v5, v8, 0x1

    .line 154
    .local v5, numRows:I
    #v5=(Integer);
    invoke-virtual {p0, v10}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    #v8=(Integer);
    add-int/2addr v8, v4

    mul-int/2addr v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/android/mail/ui/AttachmentTileGrid;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public addComposeTileFromAttachment(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/compose/ComposeAttachmentTile;
    .locals 6
    .parameter "attachment"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    invoke-static {v1, p0}, Lcom/android/mail/compose/ComposeAttachmentTile;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/compose/ComposeAttachmentTile;

    move-result-object v0

    .line 96
    .local v0, attachmentTile:Lcom/android/mail/compose/ComposeAttachmentTile;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->addView(Landroid/view/View;)V

    .line 97
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, -0x1

    #v3=(Byte);
    const/4 v5, 0x0

    #v5=(Null);
    move-object v1, p1

    move-object v4, p0

    #v4=(Reference);
    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/compose/ComposeAttachmentTile;->render(Lcom/android/mail/providers/Attachment;Landroid/net/Uri;ILcom/android/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V

    .line 99
    return-object v0
.end method

.method public configureGrid(Landroid/app/FragmentManager;Landroid/net/Uri;Ljava/util/List;Z)V
    .locals 5
    .parameter "fragmentManager"
    .parameter "attachmentsListUri"
    .parameter
    .parameter "loaderResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Attachment;>;"
    iput-object p1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mFragmentManager:Landroid/app/FragmentManager;

    .line 68
    iput-object p2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentsListUri:Landroid/net/Uri;

    .line 69
    iput-object p3, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachments:Ljava/util/List;

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, index:I
    #v2=(Null);
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Integer);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 73
    .local v0, attachment:Lcom/android/mail/providers/Attachment;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    #v3=(Integer);
    invoke-direct {p0, v0, v2, p4}, Lcom/android/mail/ui/AttachmentTileGrid;->addMessageTileFromAttachment(Lcom/android/mail/providers/Attachment;IZ)V

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 75
    .end local v0           #attachment:Lcom/android/mail/providers/Attachment;
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public get(Lcom/android/mail/providers/Attachment;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, attachmentIdentifier:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentPreviews:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;

    .line 238
    .local v1, attachmentPreview:Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;
    if-eqz v1, :cond_0

    .line 239
    iget-object v2, v1, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->preview:Landroid/graphics/Bitmap;

    .line 242
    .end local v1           #attachmentPreview:Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;
    :goto_0
    #v1=(Conflicted);
    return-object v2

    :cond_0
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public getAttachmentPreviews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentPreviews:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/mail/ui/AttachmentTileGrid;->onLayoutForTiles()V

    .line 161
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/mail/ui/AttachmentTileGrid;->onMeasureForTiles(I)V

    .line 105
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 199
    return-void
.end method

.method public set(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "attachment"
    .parameter "preview"

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, attachmentIdentifier:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentPreviews:Ljava/util/HashMap;

    new-instance v2, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;

    #v2=(UninitRef);
    invoke-direct {v2, p1, p2}, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;-><init>(Lcom/android/mail/providers/Attachment;Landroid/graphics/Bitmap;)V

    #v2=(Reference);
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    #v2=(Conflicted);
    return-void
.end method

.method public setAttachmentPreviews(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;>;"
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;

    .line 212
    .local v1, preview:Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;
    iget-object v2, p0, Lcom/android/mail/ui/AttachmentTileGrid;->mAttachmentPreviews:Ljava/util/HashMap;

    #v2=(Reference);
    iget-object v3, v1, Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;->attachmentIdentifier:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #preview:Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
