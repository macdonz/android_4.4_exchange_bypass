.class Lcom/android/mail/compose/AttachmentsView;
.super Landroid/widget/LinearLayout;
.source "AttachmentsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;,
        Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAttachmentLayout:Landroid/widget/LinearLayout;

.field private final mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListener:Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

.field private mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/AttachmentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method private static getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "contentResolver"
    .parameter "uri"
    .parameter "columnName"

    .prologue
    .line 362
    const/4 v6, 0x0

    .line 364
    .local v6, result:Landroid/database/Cursor;
    #v6=(Null);
    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    new-array v2, v0, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aput-object p2, v2, v0

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    move-object v0, p0

    #v0=(Reference);
    move-object v1, p1

    #v1=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 368
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);
    return-object v6

    .line 365
    :catch_0
    #v0=(Conflicted);v6=(Null);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private static getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 7
    .parameter "uri"
    .parameter "contentResolver"

    .prologue
    const/4 v6, 0x0

    .line 335
    #v6=(Null);
    const/4 v2, -0x1

    .line 336
    .local v2, size:I
    #v2=(Byte);
    const/4 v1, 0x0

    .line 338
    .local v1, file:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    #v1=(Null);
    const-string v3, "r"

    #v3=(Reference);
    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 339
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    long-to-int v2, v3

    .line 344
    #v2=(Integer);
    if-eqz v1, :cond_0

    .line 345
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    #v3=(Integer);
    return v3

    .line 347
    :catch_0
    #v0=(Uninit);v3=(LongLo);v4=(LongHi);v5=(Uninit);
    move-exception v0

    .line 348
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    sget-object v3, Lcom/android/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "Error closing file opened to obtain size."

    #v4=(Reference);
    new-array v5, v6, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    #v0=(Uninit);v2=(Byte);v3=(Conflicted);v4=(Uninit);v5=(Uninit);
    move-exception v0

    .line 341
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    #v0=(Reference);
    sget-object v3, Lcom/android/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "Error opening file to obtain size."

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-eqz v1, :cond_0

    .line 345
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 347
    :catch_2
    move-exception v0

    .line 348
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error closing file opened to obtain size."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    .line 344
    #v3=(Reference);
    if-eqz v1, :cond_1

    .line 345
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 349
    :cond_1
    :goto_1
    #v6=(Reference);
    throw v3

    .line 347
    :catch_3
    #v6=(Null);
    move-exception v0

    .line 348
    .restart local v0       #e:Ljava/io/IOException;
    #v0=(Reference);
    sget-object v4, Lcom/android/mail/compose/AttachmentsView;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Error closing file opened to obtain size."

    #v5=(Reference);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public addAttachment(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Attachment;)J
    .locals 5
    .parameter "account"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v1, p1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->getMaxAttachmentSize()I

    move-result v0

    .line 320
    .local v0, maxSize:I
    #v0=(Integer);
    iget v1, p2, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/android/mail/providers/Attachment;->size:I

    if-le v1, v0, :cond_1

    .line 321
    :cond_0
    new-instance v1, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    #v1=(UninitRef);
    const-string v2, "Attachment too large to attach"

    #v2=(Reference);
    const v3, 0x7f0a0033

    #v3=(Integer);
    invoke-direct {v1, v2, v3}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;I)V

    #v1=(Reference);
    throw v1

    .line 323
    :cond_1
    #v1=(Integer);v2=(Byte);v3=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getTotalAttachmentsSize()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iget v3, p2, Lcom/android/mail/providers/Attachment;->size:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    #v1=(Byte);
    if-lez v1, :cond_2

    .line 325
    new-instance v1, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    #v1=(UninitRef);
    const-string v2, "Attachment too large to attach"

    #v2=(Reference);
    const v3, 0x7f0a0035

    #v3=(Integer);
    invoke-direct {v1, v2, v3}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;I)V

    #v1=(Reference);
    throw v1

    .line 328
    :cond_2
    #v1=(Byte);v2=(LongHi);v3=(LongLo);
    invoke-virtual {p0, p2}, Lcom/android/mail/compose/AttachmentsView;->addAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 331
    iget v1, p2, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);
    return-wide v1
.end method

.method public addAttachment(Lcom/android/mail/providers/Attachment;)V
    .locals 5
    .parameter "attachment"

    .prologue
    const/4 v4, -0x1

    .line 100
    #v4=(Byte);
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->isShown()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 101
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/AttachmentsView;->setVisibility(I)V

    .line 104
    :cond_0
    #v2=(Boolean);
    iget-object v2, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->expandView()V

    .line 109
    invoke-static {p1}, Lcom/android/mail/ui/AttachmentTile;->isTiledAttachment(Lcom/android/mail/providers/Attachment;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/mail/ui/AttachmentTileGrid;->addComposeTileFromAttachment(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/compose/ComposeAttachmentTile;

    move-result-object v0

    .line 112
    .local v0, attachmentTile:Lcom/android/mail/compose/ComposeAttachmentTile;
    #v0=(Reference);
    new-instance v2, Lcom/android/mail/compose/AttachmentsView$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v0, p1}, Lcom/android/mail/compose/AttachmentsView$1;-><init>(Lcom/android/mail/compose/AttachmentsView;Lcom/android/mail/compose/ComposeAttachmentTile;Lcom/android/mail/providers/Attachment;)V

    #v2=(Reference);
    invoke-virtual {v0, v2}, Lcom/android/mail/compose/ComposeAttachmentTile;->addDeleteListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .end local v0           #attachmentTile:Lcom/android/mail/compose/ComposeAttachmentTile;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/android/mail/compose/AttachmentsView;->mChangeListener:Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/mail/compose/AttachmentsView;->mChangeListener:Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    invoke-interface {v2}, Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;->onAttachmentAdded()V

    .line 139
    :cond_1
    return-void

    .line 121
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    new-instance v1, Lcom/android/mail/compose/AttachmentComposeView;

    #v1=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v1, v2, p1}, Lcom/android/mail/compose/AttachmentComposeView;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)V

    .line 124
    .local v1, attachmentView:Lcom/android/mail/compose/AttachmentComposeView;
    #v1=(Reference);
    new-instance v2, Lcom/android/mail/compose/AttachmentsView$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v1, p1}, Lcom/android/mail/compose/AttachmentsView$2;-><init>(Lcom/android/mail/compose/AttachmentsView;Lcom/android/mail/compose/AttachmentComposeView;Lcom/android/mail/providers/Attachment;)V

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/mail/compose/AttachmentComposeView;->addDeleteListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    #v3=(UninitRef);
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #v3=(Reference);
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public deleteAllAttachments()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->removeAllViews()V

    .line 180
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentsView;->setVisibility(I)V

    .line 182
    return-void
.end method

.method protected deleteAttachment(Landroid/view/View;Lcom/android/mail/providers/Attachment;)V
    .locals 1
    .parameter "attachmentView"
    .parameter "attachment"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mChangeListener:Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mChangeListener:Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    invoke-interface {v0}, Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;->onAttachmentDeleted()V

    .line 149
    :cond_0
    return-void
.end method

.method public expandView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    #v3=(Null);
    iget-object v1, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    #v1=(Reference);
    invoke-virtual {v1, v3}, Lcom/android/mail/ui/AttachmentTileGrid;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    :cond_0
    return-void
.end method

.method public focusLastAttachment()V
    .locals 5

    .prologue
    .line 372
    iget-object v3, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    #v4=(Integer);
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Attachment;

    .line 373
    .local v1, lastAttachment:Lcom/android/mail/providers/Attachment;
    const/4 v2, 0x0

    .line 374
    .local v2, lastView:Landroid/view/View;
    #v2=(Null);
    const/4 v0, 0x0

    .line 375
    .local v0, last:I
    #v0=(Null);
    invoke-static {v1}, Lcom/android/mail/ui/AttachmentTile;->isTiledAttachment(Lcom/android/mail/providers/Attachment;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildCount()I

    move-result v3

    #v3=(Integer);
    add-int/lit8 v0, v3, -0x1

    .line 377
    #v0=(Integer);
    if-lez v0, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 386
    :cond_0
    :goto_0
    #v2=(Reference);v3=(Conflicted);
    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 389
    :cond_1
    return-void

    .line 381
    :cond_2
    #v0=(Null);v2=(Null);v3=(Boolean);
    iget-object v3, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    #v3=(Integer);
    add-int/lit8 v0, v3, -0x1

    .line 382
    #v0=(Integer);
    if-lez v0, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    goto :goto_0
.end method

.method public generateLocalAttachment(Landroid/net/Uri;)Lcom/android/mail/providers/Attachment;
    .locals 11
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x0

    .line 216
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    .local v0, contentResolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, contentType:Ljava/lang/String;
    #v7=(Reference);
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 219
    :cond_0
    #v1=(Conflicted);
    new-instance v1, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    #v1=(UninitRef);
    const-string v2, "Failed to create local attachment"

    #v2=(Reference);
    invoke-direct {v1, v2}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 222
    :cond_1
    #v1=(Boolean);v2=(Null);
    if-nez v7, :cond_2

    const-string v7, ""

    .line 224
    :cond_2
    new-instance v6, Lcom/android/mail/providers/Attachment;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/android/mail/providers/Attachment;-><init>()V

    .line 225
    .local v6, attachment:Lcom/android/mail/providers/Attachment;
    #v6=(Reference);
    iput-object v3, v6, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 226
    invoke-virtual {v6, v3}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 227
    iput v2, v6, Lcom/android/mail/providers/Attachment;->size:I

    .line 228
    iput-object p1, v6, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 229
    iput-object p1, v6, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 231
    const/4 v10, 0x0

    .line 233
    .local v10, metadataCursor:Landroid/database/Cursor;
    #v10=(Null);
    const/4 v1, 0x2

    :try_start_0
    #v1=(PosByte);
    new-array v2, v1, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v3, "_display_name"

    #v3=(Reference);
    aput-object v3, v2, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    move-object v1, p1

    #v1=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 236
    #v10=(Reference);
    if-eqz v10, :cond_4

    .line 238
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 239
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v6, v1}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 240
    const/4 v1, 0x1

    #v1=(One);
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    iput v1, v6, Lcom/android/mail/providers/Attachment;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_3
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    :cond_4
    :goto_0
    #v1=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);
    invoke-virtual {v6}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    if-nez v1, :cond_5

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 284
    :cond_5
    iget v1, v6, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    if-nez v1, :cond_6

    .line 286
    invoke-static {p1, v0}, Lcom/android/mail/compose/AttachmentsView;->getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, v6, Lcom/android/mail/providers/Attachment;->size:I

    .line 289
    :cond_6
    invoke-virtual {v6, v7}, Lcom/android/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 290
    return-object v6

    .line 243
    :catchall_0
    #v1=(Conflicted);v3=(Null);v4=(Null);v5=(Null);v9=(Uninit);
    move-exception v1

    :try_start_3
    #v1=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 246
    :catch_0
    #v1=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);
    move-exception v9

    .line 255
    .local v9, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    #v9=(Reference);
    const-string v1, "_display_name"

    #v1=(Reference);
    invoke-static {v0, p1, v1}, Lcom/android/mail/compose/AttachmentsView;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 257
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_7

    .line 258
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v6, v1}, Lcom/android/mail/providers/Attachment;->setName(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 261
    :cond_7
    #v1=(Conflicted);
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_8
    :try_start_5
    const-string v1, "_size"

    #v1=(Reference);
    invoke-static {v0, p1, v1}, Lcom/android/mail/compose/AttachmentsView;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 268
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_a

    .line 269
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    iput v1, v6, Lcom/android/mail/providers/Attachment;->size:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 275
    :goto_1
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 261
    :catchall_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 272
    :cond_a
    :try_start_6
    #v1=(Conflicted);
    invoke-static {p1, v0}, Lcom/android/mail/compose/AttachmentsView;->getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    #v1=(Integer);
    iput v1, v6, Lcom/android/mail/providers/Attachment;->size:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 275
    :catchall_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    .line 277
    .end local v9           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    #v1=(Conflicted);v9=(Uninit);
    move-exception v8

    .line 278
    .local v8, e:Ljava/lang/SecurityException;
    #v8=(Reference);
    new-instance v1, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;

    #v1=(UninitRef);
    const-string v2, "Security Exception from attachment uri"

    invoke-direct {v1, v2, v8}, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1
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
    .line 164
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/AttachmentTileGrid;->getAttachmentPreviews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v0=(Reference);
    return-object v0
.end method

.method public getTotalAttachmentsSize()J
    .locals 6

    .prologue
    .line 188
    const-wide/16 v2, 0x0

    .line 189
    .local v2, totalSize:J
    #v2=(LongLo);v3=(LongHi);
    iget-object v4, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 190
    .local v0, attachment:Lcom/android/mail/providers/Attachment;
    iget v4, v0, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    goto :goto_0

    .line 192
    .end local v0           #attachment:Lcom/android/mail/providers/Attachment;
    :cond_0
    #v0=(Conflicted);v4=(Boolean);v5=(Conflicted);
    return-wide v2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f080091

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AttachmentTileGrid;

    iput-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    .line 73
    const v0, 0x7f080092

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 74
    return-void
.end method

.method public setAttachmentChangesListener(Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mail/compose/AttachmentsView;->mChangeListener:Lcom/android/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;

    .line 93
    return-void
.end method

.method public setAttachmentPreviews(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 171
    .local p1, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/ui/AttachmentTile$AttachmentPreview;>;"
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentsView;->mTileGrid:Lcom/android/mail/ui/AttachmentTileGrid;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/AttachmentTileGrid;->setAttachmentPreviews(Ljava/util/ArrayList;)V

    .line 172
    return-void
.end method
